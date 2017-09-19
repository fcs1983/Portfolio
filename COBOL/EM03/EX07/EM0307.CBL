       IDENTIFICATION DIVISION.
       PROGRAM-ID.    EM0307.
       AUTHOR.        FABIO COSTA.
       INSTALLATION.  FATEC-SP.
       DATE-WRITTEN.  10/11/2015.
       DATE-COMPILED. 10/11/2015.
       SECURITY.      NAO MODIFICAR SEM AUTORIZACAO.
      *REMARKS.       CLASSIFICAR CADALU EM ORDEM ASCENDENTE POR
      *               TURMA E CODIGO, CALCULAR A MEDIA E 
      *               IMPRIMIR RELATORIO.
  
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       OBJECT-COMPUTER.  IBM-PC.
       SOURCE-COMPUTER.  IBM-PC.
       SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.
       
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.    
           SELECT CADALU ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.
  
           SELECT TRAB ASSIGN TO DISK.

           SELECT RELALU ASSIGN TO DISK.

       DATA DIVISION.
       FILE SECTION.
  
       FD CADALU
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADALU.DAT".

       01 REG-ENT.
           02 TURMA-ENT      PIC 9(03).
           02 COD-ENT        PIC 9(07).
           02 NOME-ENT       PIC X(30).
           02 NOTA-ENT.
               03 NOTA1-ENT  PIC 99V99.
               03 NOTA2-ENT  PIC 99V99.
               03 NOTA3-ENT  PIC 99V99.
               03 NOTA4-ENT  PIC 99V99.

       SD TRAB.
  
       01 REG-TRAB.
           02 TURMA-TRAB     PIC 9(03).
           02 COD-TRAB       PIC 9(07).
           02 NOME-TRAB      PIC X(30).
           02 NOTA-TRAB.
               03 NOTA1-TRAB PIC 99V99.
               03 NOTA2-TRAB PIC 99V99.
               03 NOTA3-TRAB PIC 99V99.
               03 NOTA4-TRAB PIC 99V99.

       FD RELALU
           LABEL RECORD IS OMMITED.

       01 REG-REL            PIC X(80).

       WORKING-STORAGE SECTION.

       77 FIM-ARQ            PIC X(03)  VALUE "NAO".
       77 CT-LIN             PIC 9(02)  VALUE 40.
       77 CT-PAG             PIC 9(02)  VALUE ZEROES.
       77 CT-TURMA           PIC 9(03)  VALUE ZEROES.
       77 M-SOMA             PIC 99V99  VALUE ZEROES.
       77 MEDIA-ALU          PIC 99V99  VALUE ZEROES.
       77 CT-APROV           PIC 99     VALUE ZEROES.
       77 CT-REPROV          PIC 99     VALUE ZEROES.
       77 MEDIA-GERAL        PIC 99V99  VALUE ZEROES.
       77 SOMA-GERAL         PIC 999V99 VALUE ZEROES.
       77 TOT-ALU            PIC 99 VALUE ZEROES.

       01 CAB-01.
           02 FILLER         PIC X(15) VALUE SPACES.
           02 FILLER         PIC X(17) VALUE "RELACAO DE ALUNOS".
           02 FILLER         PIC X(20) VALUE SPACES.
           02 FILLER         PIC X(05) VALUE "PAG. ".
           02 VAR-PAG        PIC ZZ9.
           02 FILLER         PIC X(20) VALUE SPACES.

       01 CAB-02.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(07) VALUE "TURMA: ".
           02 TURMA          PIC 9(03).

       01 CAB-03.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(06) VALUE "CODIGO".
           02 FILLER         PIC X(22) VALUE SPACES.
           02 FILLER         PIC X(04) VALUE "NOME".
           02 FILLER         PIC X(20) VALUE SPACES.
           02 FILLER         PIC X(05) VALUE "MEDIA".
           02 FILLER         PIC X(18) VALUE SPACES.

       01 CAB-04.
           02 FILLER         PIC X(80) VALUE SPACES.

       01 DETALHE.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 CODIGO         PIC 9(07).
           02 FILLER         PIC X(06) VALUE SPACES.
           02 NOME           PIC X(30).
           02 FILLER         PIC X(09) VALUE SPACES.
           02 MEDIA          PIC 99,99.
           02 FILLER         PIC X(19) VALUE SPACES.

       01 TOTAL-01.
           02 FILLER         PIC X(20) VALUE SPACES.
           02 FILLER         PIC X(25) VALUE 
                                       "TOTAL DE ALUNOS APROVADOS".
           02 FILLER         PIC X(05) VALUE SPACES.
           02 APROVADOS      PIC 99.
           02 FILLER         PIC X(28) VALUE SPACES.

       01 TOTAL-02.
           02 FILLER         PIC X(20) VALUE SPACES.
           02 FILLER         PIC X(26) VALUE 
                                       "TOTAL DE ALUNOS REPROVADOS".
           02 FILLER         PIC X(04) VALUE SPACES.
           02 REPROVADOS     PIC 99.
           02 FILLER         PIC X(28) VALUE SPACES.
 
       01 MEDIA-01.
           02 FILLER         PIC X(20) VALUE SPACES.
           02 FILLER         PIC X(11) VALUE "MEDIA GERAL".
           02 FILLER         PIC X(19) VALUE SPACES.
           02 MEDIA-TOT      PIC 99,99.
           02 FILLER         PIC X(26) VALUE SPACES.

       PROCEDURE DIVISION.

       EM03-07.
           SORT TRAB
               ASCENDING KEY TURMA-TRAB
               ASCENDING KEY COD-TRAB
               USING CADALU
               OUTPUT PROCEDURE ROT-SAIDA.
           STOP RUN.

       ROT-SAIDA SECTION.
           PERFORM INICIO.
           PERFORM PRINCIPAL UNTIL FIM-ARQ EQUAL "SIM".
           PERFORM FIM.

       INICIO SECTION.
           OPEN OUTPUT RELALU.
           PERFORM LE-SORT.
           MOVE TURMA-TRAB TO CT-TURMA.

       LE-SORT SECTION.
           RETURN TRAB AT END MOVE "SIM" TO FIM-ARQ.
           ADD 1 TO TOT-ALU.

       PRINCIPAL SECTION.
           PERFORM IMPRESSAO.
           PERFORM LE-SORT.

       IMPRESSAO SECTION.
           IF CT-LIN GREATER THAN 39
               PERFORM CABECALHO.
           IF CT-TURMA EQUAL TO TURMA-TRAB
               PERFORM C-MEDIA
               PERFORM IMP-DET
           ELSE 
               PERFORM IMP-TOTAL
               MOVE TURMA-TRAB TO CT-TURMA
               PERFORM CABECALHO
               PERFORM C-MEDIA 
               PERFORM IMP-DET.
                  
       
       CABECALHO SECTION.
           ADD 1 TO CT-PAG.
           MOVE CT-PAG TO VAR-PAG.
           MOVE CT-TURMA TO TURMA.
           MOVE SPACES TO REG-REL.
           WRITE REG-REL AFTER ADVANCING PAGE.
           WRITE REG-REL FROM CAB-01 AFTER ADVANCING 1 LINE.
           WRITE REG-REL FROM CAB-02 AFTER ADVANCING 2 LINES.
           WRITE REG-REL FROM CAB-03 AFTER ADVANCING 2 LINES.
           WRITE REG-REL FROM CAB-04 AFTER ADVANCING 1 LINES.
           MOVE ZEROES TO CT-LIN.     

       C-MEDIA SECTION.
           ADD NOTA1-TRAB NOTA2-TRAB NOTA3-TRAB NOTA4-TRAB 
                                                      GIVING M-SOMA.
           DIVIDE M-SOMA BY 4 GIVING MEDIA-ALU.
           IF MEDIA-ALU IS GREATER THAN OR EQUAL TO 7,0
               ADD 1 TO CT-APROV.
           IF MEDIA-ALU IS LESS THAN 7,0
               ADD 1 TO CT-REPROV.
           ADD MEDIA-ALU TO SOMA-GERAL. 
          
       IMP-DET SECTION.
           MOVE COD-TRAB  TO CODIGO.
           MOVE NOME-TRAB TO NOME.
           MOVE MEDIA-ALU TO MEDIA.  
           WRITE REG-REL FROM DETALHE AFTER ADVANCING 1 LINE.
           ADD 1 TO CT-LIN.

       IMP-TOTAL SECTION.
           MOVE CT-APROV  TO APROVADOS.
           MOVE CT-REPROV TO REPROVADOS.
           DIVIDE SOMA-GERAL BY TOT-ALU GIVING MEDIA-GERAL.
           MOVE MEDIA-GERAL TO MEDIA-TOT.
           WRITE REG-REL FROM TOTAL-01 AFTER ADVANCING 2 LINES.
           WRITE REG-REL FROM TOTAL-02 AFTER ADVANCING 1 LINE.
           WRITE REG-REL FROM MEDIA-01 AFTER ADVANCING 1 LINE.
           MOVE ZEROES TO CT-APROV.
           MOVE ZEROES TO CT-REPROV.
           MOVE ZEROES TO SOMA-GERAL.
           MOVE ZEROES TO TOT-ALU.
           MOVE ZEROES TO MEDIA-GERAL.

       FIM SECTION.
           PERFORM IMP-TOTAL.
           CLOSE RELALU. 
           
  













 



       