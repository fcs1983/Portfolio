       IDENTIFICATION DIVISION.
       PROGRAM-ID.    EM0201.
       AUTHOR.        FABIO COSTA.
       INSTALLATION.  FATEC-SP.
       DATE-WRITTEN.  17/09/2015.
       DATE-COMPILED. 17/09/2015.
       SECURITY.      NAO MODIFICAR SEM AUTORIZACAO.
      *REMARKS.       LER CADSOC1, SE EM DIA GRAVAR EM CADSOC2, SE
      *               EM ATRAZO, IMPRIMIR RELATORIO VIDE LAYOUT.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.  IBM-PC.
       OBJECT-COMPUTER.  IBM-PC.
       SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.
 
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CADSOC1 ASSIGN TO DISK
	   ORGANIZATION IS LINE SEQUENTIAL.
           
           SELECT CADSOC2 ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT RELSOCIO ASSIGN TO DISK.

       DATA DIVISION.
       FILE SECTION.
   
       FD CADSOC1
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADSOC1.DAT".

       01 REG-ENT.
           02 COD-PAG1       PIC 9(02).
           02 NUM-SOC1       PIC 9(06).
           02 NOME-SOC1      PIC X(30).
           02 VAL-PAG1       PIC 9(09)V9(02).

       FD CADSOC2
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADSOC2.DAT".

       01 REG-SAI.
           02 NUM-SOC2       PIC 9(06).
           02 NOME-SOC2      PIC X(30).
           02 VAL-PAG2       PIC 9(09)V9(02).

       FD RELSOCIO
           LABEL RECORD IS OMITTED.

       01 REG-ATR            PIC X(80).

       WORKING-STORAGE SECTION.
       
       77 FIM-ARQ            PIC X(03) VALUE "NAO".
       77 CT-LIN             PIC 9(02) VALUE 30.
       77 CT-PAG             PIC 9(02) VALUE ZEROES.
       77 TOT-SOC            PIC 9(05) VALUE ZEROES.
       77 VAL-TOT            PIC 9(09)V9(02) VALUE ZEROES.
  
       01 CAB-01.
           02 FILLER         PIC X(70) VALUE SPACES.
           02 FILLER         PIC X(05) VALUE "PAG. ".
           02 VAR-PAG        PIC Z9.
           02 FILLER         PIC X(03) VALUE SPACES.

       01 CAB-02.
           02 FILLER         PIC X(26) VALUE SPACES.
           02 FILLER         PIC X(28) VALUE 
                             "RELACAO DE SOCIOS ATRAZADOS ".
           02 FILLER         PIC X(26) VALUE SPACES.

       01 CAB-03.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(15) VALUE "NUMERO DO SOCIO".
           02 FILLER         PIC X(10) VALUE SPACES.
           02 FILLER         PIC X(13) VALUE "NOME DO SOCIO".
           02 FILLER         PIC X(15) VALUE SPACES.
           02 FILLER         PIC X(18) VALUE "VALOR DO PAGAMENTO".
           02 FILLER         PIC X(05) VALUE SPACES.

       01 CAB-04.
           02 FILLER         PIC X(80) VALUE SPACES.

       01 DETALHE.
           02 FILLER         PIC X(09) VALUE SPACES.
           02 NUMERO         PIC 999.999.
           02 FILLER         PIC X(15).
           02 NOME           PIC X(30).
           02 VALOR          PIC ZZZ.ZZZ.ZZ9,99.

       01 SOCTOT.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(27) VALUE 
                                 "TOTAL DE SOCIOS ATRAZADOS: ".
           02 TOT1           PIC zz99 VALUE ZEROES.
           02 FILLER         PIC X(43) VALUE SPACES.

       01 VALTOT.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(22) VALUE "VALOR TOTAL ATRAZADO: ".
           02 TOT2           PIC ZZZ.ZZZ.ZZZ.ZZ9,99.
           02 FILLER         PIC X(42) VALUE SPACES.

       PROCEDURE DIVISION.

       EM02-EX01.
           PERFORM INICIO.
           PERFORM PRINCIPAL UNTIL FIM-ARQ EQUAL "SIM".
           PERFORM TOTAL.
           PERFORM FIM.
           STOP RUN.

       INICIO.
           OPEN INPUT  CADSOC1
                OUTPUT CADSOC2
                OUTPUT RELSOCIO.
           PERFORM LEITURA.

       LEITURA.
           READ CADSOC1 AT END MOVE "SIM" TO FIM-ARQ.

       PRINCIPAL.
           IF COD-PAG1 IS EQUAL TO 1 THEN 
               PERFORM GRAVACAO
           ELSE
               PERFORM IMPRESSAO.
           PERFORM LEITURA.
       
       GRAVACAO.
           MOVE NUM-SOC1 TO NUM-SOC2.
           MOVE NOME-SOC1 TO NOME-SOC2.
           MOVE VAL-PAG1 TO VAL-PAG2.
           WRITE REG-SAI.    
      
       IMPRESSAO.
           IF CT-LIN IS GREATER THAN 29
               PERFORM CABECALHO.
           PERFORM IMPDET.       

       CABECALHO.
           ADD 1 TO CT-PAG.
           MOVE CT-PAG TO VAR-PAG.
           MOVE SPACES TO REG-ATR.
           WRITE REG-ATR AFTER ADVANCING PAGE.
           WRITE REG-ATR FROM CAB-01 AFTER ADVANCING 1 LINE.
           WRITE REG-ATR FROM CAB-02 AFTER ADVANCING 3 LINES.
           WRITE REG-ATR FROM CAB-03 AFTER ADVANCING 3 LINES.
           WRITE REG-ATR FROM CAB-04 AFTER ADVANCING 1 LINE.
           MOVE ZEROES TO CT-LIN.

       IMPDET.
           MOVE NUM-SOC1 TO NUMERO.
           MOVE NOME-SOC1 TO NOME.
           MOVE VAL-PAG1 TO VALOR.
           ADD 1 TO TOT-SOC.
           ADD VAL-PAG1 TO VAL-TOT.
           WRITE REG-ATR FROM DETALHE AFTER ADVANCING 1 LINE. 
           ADD 1 TO CT-LIN.

       TOTAL.                     
           MOVE TOT-SOC TO TOT1.
           MOVE VAL-TOT TO TOT2
           MOVE SPACES TO REG-ATR.
           WRITE REG-ATR FROM SOCTOT AFTER ADVANCING 3 LINES.
           WRITE REG-ATR FROM VALTOT AFTER ADVANCING 1 LINE.

       FIM.
           CLOSE CADSOC1
                 CADSOC2
                 RELSOCIO.
          

       






     

           

