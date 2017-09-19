       IDENTIFICATION DIVISION.
       PROGRAM-ID.    EM0205.
       AUTHOR.        FABIO COSTA.
       INSTALLATION.  FATEC-SP.
       DATE-WRITTEN.  13/10/2015.
       DATE-COMPILED. 13/10/2015.
       SECURITY.      NAO MODIFICAR SEM AUTORIZACAO.
      *REMARKS.       LER ARQALU, CALCULAR A MEDIA DAS NOTAS,
      *               SE ALUNO APROVADO IMPRIMIR RELATORIO, SE
      *               REPROVADO GRAVAR EM ARQREP.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.  IBM-PC.
       OBJECT-COMPUTER.  IBM-PC.
       SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ARQALU ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT ARQREP ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.
    
           SELECT RELAPROV ASSIGN TO DISK.

       DATA DIVISION.
       FILE SECTION.

       FD ARQALU
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "ARQALU.DAT".
  
       01 REG-ENT.
           02 MAT-ENT        PIC 9(07).
           02 NOME-ENT       PIC X(30).
           02 NOTA1-ENT      PIC 99V99.
           02 NOTA2-ENT      PIC 99V99.
           02 NOTA3-ENT      PIC 99V99.
           02 FALTAS-ENT     PIC 99.
           02 SEXO-ENT       PIC X.

       FD ARQREP
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "ARQREP.DAT".

       01 REG-SAI.
           02 MAT-SAI        PIC 9(07).
           02 NOME-SAI       PIC X(30).
           02 NOTA1-SAI      PIC 99V99.
           02 NOTA2-SAI      PIC 99V99.
           02 NOTA3-SAI      PIC 99V99.
           02 FALTAS-SAI     PIC 99.
           02 SEXO-SAI       PIC X.

       FD RELAPROV
           LABEL RECORD IS OMMITED.

       01 REL-SAI            PIC X(80).

       WORKING-STORAGE SECTION.
   
       77 FIM-ARQ            PIC X(03)  VALUE "NAO".
       77 CT-LIN             PIC 99     VALUE 30.
       77 CT-PAG             PIC 99     VALUE ZEROES.
       77 SOMA-NOTAS         PIC 99V99  VALUE ZEROES.
       77 MEDIA-NOTAS        PIC 99V99  VALUE ZEROES.
       77 SOMA-GERAL         PIC 999V99 VALUE ZEROES.
       77 MEDIA-GERAL        PIC 99V99  VALUE ZEROES.
       77 TOT-APR            PIC 9(03)  VALUE ZEROES.

       01 CAB-01.
           02 FILLER         PIC X(26) VALUE SPACES.
           02 FILLER         PIC X(27) VALUE 
                             "RELACAO DE ALUNOS APROVADOS".
           02 FILLER         PIC X(16) VALUE SPACES.
           02 FILLER         PIC X(05) VALUE "PAG.".
           02 VAR-PAG        PIC ZZ9   VALUE ZEROES.
           02 FILLER         PIC X(03) VALUE SPACES.

       01 CAB-02.
           02 FILLER         PIC X(04) VALUE SPACES.
           02 FILLER         PIC X(06) VALUE "NUMERO".
           02 FILLER         PIC X(14) VALUE SPACES.
           02 FILLER         PIC X(13) VALUE "NOME DO ALUNO".
           02 FILLER         PIC X(15) VALUE SPACES.
           02 FILLER         PIC X(05) VALUE "MEDIA".
           02 FILLER         PIC X(10) VALUE SPACES.
           02 FILLER         PIC X(06) VALUE "FALTAS".
           02 FILLER         PIC X(07) VALUE SPACES.
       
       01 CAB-03.
           02 FILLER         PIC X(80) VALUE SPACES.

       01 DETALHE.
           02 FILLER         PIC X(04) VALUE SPACES.
           02 NUMERO         PIC 999999.9.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 NOME           PIC X(30).
           02 FILLER         PIC X(05) VALUE SPACES.
           02 MEDIA          PIC Z9,99.
           02 FILLER         PIC X(12) VALUE SPACES.
           02 FALTAS         PIC 99. 
           02 FILLER         PIC X(11) VALUE SPACES.

       01 TOT-SAI.
           02 FILLER         PIC X(04) VALUE SPACES.
           02 FILLER         PIC X(27) VALUE 
                             "TOTAL DE ALUNOS APROVADOS: ".
           02 TOTAPR         PIC 9(05).
           
       01 MED-TURMA.
           02 FILLER         PIC X(04) VALUE SPACES.
           02 FILLER         PIC X(22) VALUE "MEDIA GERAL DA TURMA: ".
           02 MED-TURMA1     PIC Z9,99.

       PROCEDURE DIVISION.
   
       EM02-05.
           PERFORM INICIO.
           PERFORM PRINCIPAL UNTIL FIM-ARQ EQUAL "SIM".
           PERFORM TOTAL.
           PERFORM FIM.
           STOP RUN.

       INICIO.
           OPEN INPUT  ARQALU
                OUTPUT ARQREP
                OUTPUT RELAPROV.
           PERFORM LEITURA.

       LEITURA.
           READ ARQALU AT END MOVE "SIM" TO FIM-ARQ.

       PRINCIPAL.
           PERFORM CALCMEDIA.            
           IF MEDIA-NOTAS IS LESS THAN 7,0 OR 
                    FALTAS-ENT IS GREATER THAN 15 THEN
               PERFORM REPROVADO
           ELSE
               PERFORM APROVADO.
           PERFORM LEITURA.

       CALCMEDIA.
           ADD NOTA1-ENT NOTA2-ENT NOTA3-ENT GIVING SOMA-NOTAS.
           DIVIDE SOMA-NOTAS BY 3,0 GIVING MEDIA-NOTAS.

       REPROVADO.
           MOVE MAT-ENT TO MAT-SAI.
           MOVE NOME-ENT TO NOME-SAI.
           MOVE NOTA1-ENT TO NOTA1-SAI.
           MOVE NOTA2-ENT TO NOTA2-SAI.
           MOVE NOTA3-ENT TO NOTA3-SAI.
           MOVE FALTAS-ENT TO FALTAS-SAI.
           MOVE SEXO-ENT TO SEXO-SAI.
           WRITE REG-SAI.
  
       APROVADO.
           IF CT-LIN IS GREATER THAN 29
               PERFORM CABECALHO.
           PERFORM IMPDET.
           ADD 1 TO TOT-APR.
           ADD MEDIA-NOTAS TO SOMA-GERAL.
       
       CABECALHO.
           ADD 1 TO CT-PAG.
           MOVE CT-PAG TO VAR-PAG.
           MOVE SPACES TO REL-SAI.
           WRITE REL-SAI AFTER ADVANCING PAGE.
           WRITE REL-SAI FROM CAB-01 AFTER ADVANCING 1 LINE.
           WRITE REL-SAI FROM CAB-02 AFTER ADVANCING 2 LINES.
           WRITE REL-SAI FROM CAB-03 AFTER ADVANCING 1 LINES
           MOVE ZEROES TO CT-LIN.

       IMPDET.
           MOVE MAT-ENT TO NUMERO.
           MOVE NOME-ENT TO NOME.
           MOVE MEDIA-NOTAS TO MEDIA.
           MOVE FALTAS-ENT TO FALTAS.
           WRITE REL-SAI FROM DETALHE AFTER ADVANCING 1 LINE.
           ADD 1 TO CT-LIN.

       TOTAL.
           MOVE TOT-APR TO TOTAPR.
           DIVIDE SOMA-GERAL BY TOT-APR GIVING MEDIA-GERAL.
           MOVE MEDIA-GERAL TO MED-TURMA1.
           WRITE REL-SAI FROM TOT-SAI AFTER ADVANCING 3 LINES.
           WRITE REL-SAI FROM MED-TURMA AFTER ADVANCING 1 LINE.

       FIM.
           CLOSE ARQALU
                 ARQREP
                 RELAPROV.  

 













         