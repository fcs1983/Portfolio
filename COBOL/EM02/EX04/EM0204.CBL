       IDENTIFICATION DIVISION.
       PROGRAM-ID.    EM0204.
       AUTHOR.        FABIO COSTA.
       INSTALLATION.  FATEC-SP.
       DATE-WRITTEN.  12/10/2015.
       DATE-COMPILED. 12/10/2015.
       SECURITY.      NAO MODIFICAR SEM AUTORIZACAO.
      *REMARKS.       LER CADESTOQ E IMPRIMIR RELATORIO DE ACORDO COM
      *               O LAY-OUT.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.  IBM-PC.
       OBJECT-COMPUTER.  IBM-PC.
       SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CADESTOQ ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.
   
           SELECT RELESTOQ ASSIGN TO DISK.

       DATA DIVISION.
       FILE SECTION.

       FD CADESTOQ
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADESTOQ.DAT".

       01 REG-ENT.
           02 COD-ENT        PIC 9(05).
           02 NOME-ENT       PIC X(15).
           02 QTDE-ENT       PIC 9(05).
           02 PCOUN-ENT      PIC 9(06)V99.

       FD RELESTOQ
           LABEL RECORD IS OMMITED.

       01 REL-SAI            PIC X(80).

       WORKING-STORAGE SECTION.

       77 FIM-ARQ            PIC X(03) VALUE "NAO".
       77 CT-LIN             PIC 9(02) VALUE 25.
       77 CT-PAG             PIC 9(02) VALUE ZEROES.
       77 CTO-TOT            PIC 9(09) VALUE ZEROES.
       77 CTDE-TOT           PIC 9(07) VALUE ZEROES.
       77 PCO-MED            PIC 9(08) VALUE ZEROES.
       77 PCO-TOT            PIC 9(10) VALUE ZEROES.
       
       01 DATA-SIS.
           03 ANO-SIS        PIC 9(02) VALUE ZEROES.
           03 MES-SIS        PIC 9(02) VALUE ZEROES.
           03 DIA-SIS        PIC 9(02) VALUE ZEROES.

       01 CAB-01.
           02 FILLER         PIC X(06) VALUE "DATA: ".
           02 DD             PIC 9(02).
           02 FILLER         PIC X     VALUE "/".
           02 MM             PIC 9(02).
           02 FILLER         PIC X     VALUE "/".
           02 AA             PIC 9(02).
           02 FILLER         PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(32) VALUE 
                             "RELATORIO DE MATERIAL EM ESTOQUE".
           02 FILLER         PIC X(19) VALUE SPACES.
           02 FILLER         PIC X(05) VALUE "PAG. ".
           02 VAR-PAG        PIC ZZ9   VALUE ZEROES.
           02 FILLER         PIC X(02) VALUE SPACES.

       01 CAB-02.
           02 FILLER         PIC X(06) VALUE "CODIGO".
           02 FILLER         PIC X(04) VALUE SPACES.
           02 FILLER         PIC X(04) VALUE "NOME".
           02 FILLER         PIC X(10) VALUE SPACES.
           02 FILLER         PIC X(07) VALUE "QTDE DO".
           02 FILLER         PIC X(04) VALUE SPACES.
           02 FILLER         PIC X(14) VALUE "CUSTO UNITARIO".
           02 FILLER         PIC X(04) VALUE SPACES.
           02 FILLER         PIC X(11) VALUE "CUSTO TOTAL".
           02 FILLER         PIC X(16) VALUE SPACES.
  
       01 CAB-03.
           02 FILLER         PIC X(24) VALUE SPACES.
           02 FILLER         PIC X(07) VALUE "ESTOQUE".
           02 FILLER         PIC X(49) VALUE SPACES.

       01 DETALHE.
           02 CODIGO         PIC 9(05).
           02 FILLER         PIC X(03) VALUE SPACES.
           02 NOME           PIC X(15).
           02 FILLER         PIC X(03) VALUE SPACES.
           02 QTDE           PIC Z.ZZ9.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 CTOUN          PIC ZZZ.ZZ9,99.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 CTOTOTAL       PIC Z.ZZZ.ZZ9,99.
           02 FILLER         PIC X(23) VALUE SPACES.

       01 CAB-04.
           02 FILLER         PIC X(16) VALUE "QUANTIDADE TOTAL".
           02 FILLER         PIC X(15) VALUE SPACES.
           02 FILLER         PIC X(11) VALUE "PRECO MEDIO".
           02 FILLER         PIC X(15) VALUE SPACES.
           02 FILLER         PIC X(11) VALUE "PRECO TOTAL".
           02 FILLER         PIC X(12) VALUE SPACES.

       01 DETALHE2.
           02 FILLER         PIC X(02) VALUE SPACES.
           02 CTDE-TOT1      PIC Z.ZZZ.ZZ9.
           02 FILLER         PIC X(18) VALUE SPACES.
           02 PCO-MED1       PIC ZZZ.ZZ9,99.
           02 FILLER         PIC X(15) VALUE SPACES.
           02 PCO-TOT1       PIC ZZ.ZZZ.ZZ9,99.
           02 FILLER         PIC X(20) VALUE SPACES.

       PROCEDURE DIVISION.
   
       EM02-03.
           PERFORM INICIO.
           PERFORM PRINCIPAL UNTIL FIM-ARQ EQUAL "SIM".
           PERFORM TOTAL.
           PERFORM FIM.
           STOP RUN.

       INICIO.
           OPEN INPUT  CADESTOQ
                OUTPUT RELESTOQ.
           PERFORM LEITURA.

       LEITURA.
           READ CADESTOQ AT END MOVE "SIM" TO FIM-ARQ.
 
       PRINCIPAL.
           PERFORM CALCULO.
           PERFORM IMPRESSAO.
           PERFORM LEITURA.

       CALCULO.
           MULTIPLY QTDE-ENT BY PCOUN-ENT GIVING CTO-TOT.
           ADD QTDE-ENT TO CTDE-TOT.
           ADD CTO-TOT TO PCO-TOT.

       IMPRESSAO.
           IF CT-LIN IS GREATER THAN 24
               PERFORM CABECALHO.
           PERFORM IMPDET.

       CABECALHO.
           ADD 1 TO CT-PAG.
           MOVE CT-PAG TO VAR-PAG.
           ACCEPT DATA-SIS FROM DATE.
           MOVE DIA-SIS TO DD.
           MOVE MES-SIS TO MM.
           MOVE ANO-SIS TO AA.
           MOVE SPACES TO REL-SAI.
           WRITE REL-SAI AFTER ADVANCING PAGE.
           WRITE REL-SAI FROM CAB-01 AFTER ADVANCING 1 LINE.
           WRITE REL-SAI FROM CAB-02 AFTER ADVANCING 3 LINES.
           WRITE REL-SAI FROM CAB-03 AFTER ADVANCING 1 LINE.
           MOVE ZEROES TO CT-LIN.

       IMPDET.
           MOVE COD-ENT   TO CODIGO.
           MOVE NOME-ENT  TO NOME.
           MOVE QTDE-ENT  TO QTDE.
           MOVE PCOUN-ENT TO CTOUN.
           MOVE CTO-TOT TO CTOTOTAL.
           WRITE REL-SAI FROM DETALHE AFTER ADVANCING 1 LINE.
           ADD 1 TO CT-LIN.

       TOTAL.
           ADD 1 TO CT-PAG.
           MOVE CTDE-TOT TO CTDE-TOT1.
           MOVE PCO-TOT TO PCO-TOT1.
           DIVIDE PCO-TOT BY CTDE-TOT GIVING PCO-MED.
           MOVE PCO-MED TO PCO-MED1.
           MOVE SPACES TO REL-SAI.
           WRITE REL-SAI AFTER ADVANCING PAGE.
           WRITE REL-SAI FROM CAB-01 AFTER ADVANCING 2 LINES.
           WRITE REL-SAI FROM CAB-04 AFTER ADVANCING 3 LINES.
           WRITE REL-SAI FROM DETALHE2 AFTER ADVANCING 2 LINES.

       FIM.
           CLOSE CADESTOQ
                 RELESTOQ.           
           
                 

       
           


     
             
           
   





















