       IDENTIFICATION DIVISION.
       PROGRAM-ID.    EM0203.
       AUTHOR.        FABIO COSTA.
       INSTALLATION.  FATEC-SP.
       DATE-WRITTEN.  12/10/2015.
       DATE-COMPILED. 12/10.2015.
       SECURITY.      NAO MODIFICAR SEM AUTORIZACAO.
      *REMARKS.       LER CADENT, SELECIONAR REGISTROS COM SALARIO 
      *               MAIOR OU IGUAL A R$5000,00 E SEXO FEMININO
      *               IMPRIMIR RELSAI.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.  IBM-PC.
       OBJECT-COMPUTER.   IBM-PC.
       SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CADENT ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT RELSAI ASSIGN TO DISK.

       DATA DIVISION.
       FILE SECTION.
   
       FD CADENT
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADENT.DAT".

       01 REG-ENT.
           02 COD-ENT        PIC 9(07).
           02 NOME-ENT       PIC X(30).
           02 SAL-ENT        PIC 9(05)V99.
           02 SEXO-ENT       PIC X.

       FD RELSAI
           LABEL RECORD IS OMITTED.

       01 REL-SAI            PIC X(80).

       WORKING-STORAGE SECTION.

           77 FIM-ARQ        PIC X(03) VALUE "NAO".
           77 CT-LIN         PIC 9(02) VALUE 20.
           77 CT-PAG         PIC 9(02) VALUE ZEROES.
           77 TOTCLI1        PIC 9(05) VALUE ZEROES.
           77 TOTSAL1        PIC 9(09)V99 VALUE ZEROES.

       01 CAB-01.
           02 FILLER         PIC X(70) VALUE SPACES.
           02 FILLER         PIC X(05) VALUE "PAG. ".
           02 VAR-PAG        PIC ZZ9   VALUE ZEROES.
           02 FILLER         PIC X(02) VALUE SPACES.

       01 CAB-02.
           02 FILLER         PIC X(21) VALUE SPACES.
           02 FILLER         PIC X(38) VALUE
                             "LISTAGEM DOS CLIENTES DO SEXO FEMININO".
           02 FILLER         PIC X(21) VALUE SPACES.
       
       01 CAB-03.
           02 FILLER         PIC X(23) VALUE SPACES.
           02 FILLER         PIC X(34) VALUE 
                             "COM SALARIOS SUPERIORES A 5.000,00".
           02 FILLER         PIC X(23) VALUE SPACES.
       
       01 CAB-04.
           02 FILLER         PIC X(10) VALUE SPACES.
           02 FILLER         PIC X(06) VALUE "CODIGO".
           02 FILLER         PIC X(10) VALUE SPACES.
           02 FILLER         PIC X(04) VALUE "NOME".
           02 FILLER         PIC X(36) VALUE SPACES.
           02 FILLER         PIC X(07) VALUE "SALARIO".
           02 FILLER         PIC X(07) VALUE SPACES.

       01 CAB-05.
           02 FILLER         PIC X(80) VALUE SPACES.
 
       01 DETALHE.   
           02 FILLER         PIC X(10) VALUE SPACES.
           02 CODIGO         PIC 9(07) VALUE ZEROES.
           02 FILLER         PIC X(09) VALUE SPACES.
           02 NOME           PIC X(30).
           02 FILLER         PIC X(10) VALUE SPACES.
           02 SALARIO        PIC ZZ.999,99 VALUE ZEROES.
           02 FILLER         PIC X(07) VALUE SPACES.

       01 TOTCLI.
           02 FILLER         PIC X(29) VALUE 
                             "TOTAL DE CLIENTES IMPRESSOS: ".
           02 FILLER         PIC X(05) VALUE SPACES.
           02 TOTCLI2        PIC ZZ.999.
           02 FILLER         PIC X(41) VALUE SPACES.

       01 TOTSAL.
           02 FILLER         PIC X(16) VALUE "TOTAL DE SALARIO".
           02 FILLER         PIC X(15) VALUE SPACES.
           02 TOTSAL2        PIC ZZ.999,99.
           02 FILLER         PIC X(42) VALUE SPACES.

       PROCEDURE DIVISION.

       EM02-03.
           PERFORM INICIO.
           PERFORM PRINCIPAL UNTIL FIM-ARQ EQUAL "SIM".
           PERFORM TOTAL.
           PERFORM FIM.
           STOP RUN.

       INICIO.
           OPEN INPUT  CADENT
                OUTPUT RELSAI.
           PERFORM LEITURA.

       LEITURA.
           READ CADENT AT END MOVE "SIM" TO FIM-ARQ.

       PRINCIPAL.
           IF SAL-ENT IS GREATER THAN OR EQUAL TO 5000,00 AND 
                                      SEXO-ENT IS EQUAL TO "F" THEN
               PERFORM IMPRESSAO.
           PERFORM LEITURA.
   
       IMPRESSAO.
           IF CT-LIN IS GREATER THAN 19
               PERFORM CABECALHO.
           PERFORM IMPDET.

       CABECALHO.
           ADD 1 TO CT-PAG.
           MOVE CT-PAG TO VAR-PAG.
           MOVE SPACES TO REL-SAI.
           WRITE REL-SAI AFTER ADVANCING PAGE.
           WRITE REL-SAI FROM CAB-01 AFTER ADVANCING 1 LINE.
           WRITE REL-SAI FROM CAB-02 AFTER ADVANCING 1 LINE.
           WRITE REL-SAI FROM CAB-03 AFTER ADVANCING 1 LINE.
           WRITE REL-SAI FROM CAB-04 AFTER ADVANCING 3 LINES.
           WRITE REL-SAI FROM CAB-05 AFTER ADVANCING 1 LINE.
           MOVE ZEROES TO CT-LIN.

       IMPDET.
           MOVE COD-ENT  TO CODIGO.
           MOVE NOME-ENT TO NOME.
           MOVE SAL-ENT  TO SALARIO.
           ADD 1 TO TOTCLI1.
           ADD SAL-ENT TO TOTSAL1.
           WRITE REL-SAI FROM DETALHE AFTER ADVANCING 1 LINE.
           ADD 1 TO CT-LIN.
    
       TOTAL.
           MOVE TOTCLI1 TO TOTCLI2.
           MOVE TOTSAL1 TO TOTSAL2.
           WRITE REL-SAI FROM TOTCLI AFTER ADVANCING 4 LINES.
           WRITE REL-SAI FROM TOTSAL AFTER ADVANCING 1 LINE.

       FIM.
           CLOSE CADENT
                 RELSAI. 
    
        
                 
 
               































 
          