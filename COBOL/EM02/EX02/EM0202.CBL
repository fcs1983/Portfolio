       IDENTIFICATION DIVISION.
       PROGRAM-ID.    EM0202.
       AUTHOR.        FABIO COSTA.
       INSTALLATION.  FATEC-SP.
       DATE-WRITTEN.  12/10/2015.
       DATE-COMPILED. 12/10/2015.
       SECURITY.      NAO MODIFICAR SEM AUTORIZACAO.
      *REMARKS.       LER CADCLI E IMPRIMIR RELCLI.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.  IBM-PC.
       OBJECT-COMPUTER.  IBM-PC.
       SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CADCLI ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.
  
           SELECT RELCLI ASSIGN TO DISK.

       DATA DIVISION.
       FILE SECTION.

       FD CADCLI
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADCLI.DAT".

       01 REG-ENT.
           02 CPF            PIC 9(11).
           02 NOME-ENT       PIC X(30).
           02 EST-ENT        PIC X(02).
           02 CID-ENT        PIC X(30).
           02 TEL-ENT        PIC 9(08).
           02 DATA-ENT.       
               03 DD         PIC 99.
               03 MM         PIC 99.
               03 AA         PIC 9999.

       FD RELCLI
           LABEL RECORD IS OMMITED.

       01 REL-SAI            PIC X(80).

       WORKING-STORAGE SECTION.

       77 FIM-ARQ            PIC X(03) VALUE "NAO".
       77 CT-LIN             PIC 9(02) VALUE 25.
       77 CT-PAG             PIC 9(02) VALUE ZEROES.
       77 TOTCLI1            PIC 9(04) VALUE ZEROES.

       01 CAB-01.
           02 FILLER         PIC X(70) VALUE SPACES.
           02 FILLER         PIC X(05) VALUE "PAG. ".
           02 VAR-PAG        PIC Z9 VALUE ZEROES.
           02 FILLER         PIC X(03) VALUE SPACES.

       01 CAB-02.
           02 FILLER         PIC X(32) VALUE SPACES.
           02 FILLER         PIC X(17) VALUE "TURISMAR TURISMOS".
           02 FILLER         PIC X(31) VALUE SPACES.
    
       01 CAB-03.
           02 FILLER         PIC X(22) VALUE SPACES.
           02 FILLER         PIC X(35) VALUE 
                             "CLIENTES NO PERIODO DE: 2010 A 2011".
           02 FILLER         PIC X(23) VALUE SPACES.
   
       01 CAB-04.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(04) VALUE "NOME".
           02 FILLER         PIC X(25) VALUE SPACES.
           02 FILLER         PIC X(06) VALUE "ESTADO".
           02 FILLER         PIC X(08) VALUE SPACES.
           02 FILLER         PIC X(08) VALUE "TELEFONE".
           02 FILLER         PIC X(24)  VALUE SPACES.

       01 CAB-05.
           02 FILLER         PIC X(80) VALUE ALL "-".
       
       01 CAB-06.
           02 FILLER         PIC X(80) VALUE SPACES.

       01 DETALHE.
           02 NOME           PIC X(30).
           02 FILLER         PIC X(05) VALUE SPACES.
           02 ESTADO         PIC X(02).
           02 FILLER         PIC X(10) VALUE SPACES.
           02 TELEFONE       PIC 9999.9999.
           02 FILLER         PIC X(25) VALUE SPACES.

       01 TOTCLI.
           02 FILLER         PIC X(19) VALUE "TOTAL DE CLIENTES: ".
           02 TOT            PIC ZZZ9 VALUE ZEROES.
           02 FILLER         PIC X(57) VALUE SPACES.

       PROCEDURE DIVISION.

       EM02-02.
           PERFORM INICIO.
           PERFORM PRINCIPAL UNTIL FIM-ARQ EQUAL "SIM".
           PERFORM TOTAL.
           PERFORM FIM.
           STOP RUN.

       INICIO.
           OPEN INPUT   CADCLI
                OUTPUT  RELCLI.
           PERFORM LEITURA.

       LEITURA.
           READ CADCLI AT END MOVE "SIM" TO FIM-ARQ.

       PRINCIPAL.
           IF AA EQUAL TO 2010 OR 2011
               PERFORM IMPRESSAO.
           PERFORM LEITURA.

       IMPRESSAO.
           IF CT-LIN IS GREATER THAN 24
               PERFORM CABECALHO.
           PERFORM IMPDET.

       CABECALHO.
           ADD 1 TO CT-PAG.
           MOVE CT-PAG TO VAR-PAG.
           MOVE SPACES TO REL-SAI.
           WRITE REL-SAI AFTER ADVANCING PAGE.
           WRITE REL-SAI FROM CAB-01 AFTER ADVANCING 1 LINE.
           WRITE REL-SAI FROM CAB-02 AFTER ADVANCING 1 LINE.
           WRITE REL-SAI FROM CAB-03 AFTER ADVANCING 3 LINE.
           WRITE REL-SAI FROM CAB-04 AFTER ADVANCING 3 LINE.
           WRITE REL-SAI FROM CAB-05 AFTER ADVANCING 1 LINE. 
           WRITE REL-SAI FROM CAB-06 AFTER ADVANCING 1 LINE.
           MOVE ZEROES TO CT-LIN.

       IMPDET.
           MOVE NOME-ENT TO NOME.
           MOVE EST-ENT TO ESTADO.
           MOVE TEL-ENT TO TELEFONE.          
           ADD 1 TO TOTCLI1.
           WRITE REL-SAI FROM DETALHE AFTER ADVANCING 1 LINE.
           ADD 1 TO CT-LIN.

       TOTAL.
           MOVE TOTCLI1 TO TOT.
           WRITE REL-SAI FROM TOTCLI AFTER ADVANCING 4 LINES.

       FIM.
           CLOSE CADCLI
                 RELCLI.












                     