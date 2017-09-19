       IDENTIFICATION DIVISION.
       PROGRAM-ID.    EM0403.
       AUTHOR.        FABIO COSTA.
       INSTALLATION.  FATEC-SP.
       DATE-WRITTEN.  01/12/2015.
       DATE-COMPILED. 01/02/2015.
       SECURITY.      NAO MODIFICAR SEM AUTORIZACAO.
      *REMARKS.       REALIZAR A INTERCALACAO DOS ARQUIVOS DE ENTRADA,
      *               GERANDO ARQUIVO DE SAIDA E RELATORIOS.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.  IBM-PC.
       OBJECT-COMPUTER.  IBM-PC.
       SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           SELECT CADMERC ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT MOVMERC ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT ATUMERC ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT RELERRO ASSIGN TO DISK.
  
           SELECT RELMERC ASSIGN TO DISK.

       DATA DIVISION.
       FILE SECTION.

       FD CADMERC
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADMERC.DAT".

       01 REG-CAD.
           02 COD-CAD        PIC 9(03).
           02 DESC-CAD       PIC X(30).
           02 MIN-CAD        PIC 9(03).
           02 QTDE-CAD       PIC 9(03).
           02 PRECO-CAD      PIC 9(04)V99.

       FD MOVMERC
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "MOVMERC.DAT".

       01 REG-MOV.
           02 COD-MOV        PIC 9(03).
           02 DESC-MOV       PIC X(30).
           02 MIN-MOV        PIC 9(03).
           02 QTDE-MOV       PIC 9(03).
           02 PRECO-MOV      PIC 9(04)V99.
           02 TIPO-MOV       PIC X.

       FD ATUMERC
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "ATUMERC.DAT".

       01 REG-ATU.
           02 COD-ATU        PIC 9(03).
           02 DESC-ATU       PIC X(30).
           02 MIN-ATU        PIC 9(03).
           02 QTDE-ATU       PIC 9(03).
           02 PRECO-ATU      PIC 9(04)V99.
          
       FD RELERRO
           LABEL RECORD IS OMMITED.

       01 REL-ERRO           PIC X(80).

       FD RELMERC
           LABEL RECORD IS OMMITED.

       01 REL-CRIT           PIC X(80).

       WORKING-STORAGE SECTION.

       77 CH-CAD             PIC X(03) VALUE SPACES.
       77 CH-MOV             PIC X(03) VALUE SPACES.
       77 CT-LIN1            PIC 9(02) VALUE 40.
       77 CT-LIN2            PIC 9(02) VALUE 40.
       77 CT-PAG1            PIC 9(02) VALUE ZEROES.
       77 CT-PAG2            PIC 9(02) VALUE ZEROES.

       01 CAB-01.
           02 FILLER         PIC X(28) VALUE SPACES.
           02 FILLER         PIC X(22) VALUE "RELACAO DE MERCADORIAS".
           02 FILLER         PIC X(19) VALUE SPACES.
           02 FILLER         PIC X(04) VALUE "PAG.".
           02 VAR-PAG        PIC ZZ9.
           02 FILLER         PIC X(04) VALUE SPACES.

       01 CAB-02.
           02 FILLER         PIC X(30) VALUE SPACES.
           02 FILLER         PIC X(20) VALUE "ERROS DE ATUALIZACAO".
           02 FILLER         PIC X(30) VALUE SPACES.

       01 CAB-03.
           02 FILLER         PIC X(04) VALUE SPACES.
           02 FILLER         PIC X(06) VALUE "CODIGO".
           02 FILLER         PIC X(08) VALUE SPACES.
           02 FILLER         PIC X(09) VALUE "DESCRICAO".
           02 FILLER         PIC X(26) VALUE SPACES.
           02 FILLER         PIC X(08) VALUE "MENSAGEM".
           02 FILLER         PIC X(19) VALUE SPACES.

       01 CAB-04.
           02 FILLER         PIC X(80) VALUE SPACES.

       01 DETALHE1.
           02 FILLER         PIC X(06) VALUE SPACES.
           02 CODIGO1        PIC 9(03).
           02 FILLER         PIC X(04) VALUE SPACES.
           02 DESCRICAO1     PIC X(30).
           02 FILLER         PIC X(04) VALUE SPACES.
           02 MENSAGEM       PIC X(30).
           02 FILLER         PIC X(03) VALUE SPACES.

       01 CAB-05.
           02 FILLER         PIC X(32) VALUE SPACES.
           02 FILLER         PIC X(15) VALUE "ESTOQUE CRITICO".
           02 FILLER         PIC X(33) VALUE SPACES.

       01 CAB-06.
           02 FILLER         PIC X(04) VALUE SPACES.
           02 FILLER         PIC X(06) VALUE "CODIGO".
           02 FILLER         PIC X(03) VALUE SPACES.
           02 FILLER         PIC X(09) VALUE "DESCRICAO".
           02 FILLER         PIC X(22) VALUE SPACES.
           02 FILLER         PIC X(07) VALUE "ESTOQUE".
           02 FILLER         PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(10) VALUE "QUANTIDADE".
           02 FILLER         PIC X(03) VALUE SPACES.
           02 FILLER         PIC X(05) VALUE "PRECO".
           02 FILLER         PIC X(06) VALUE SPACES.

       01 CAB-07.
           02 FILLER         PIC X(46) VALUE SPACES.
           02 FILLER         PIC X(06) VALUE "MINIMO".
           02 FILLER         PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(07) VALUE "ESTOQUE".
           02 FILLER         PIC X(02) VALUE SPACES.
           02 FILLER         PIC X(08) VALUE "UNITARIO".
           02 FILLER         PIC X(06) VALUE SPACES.

       01 DETALHE2.
           02 FILLER         PIC X(06) VALUE SPACES.
           02 CODIGO2        PIC 9(03).
           02 FILLER         PIC X(02) VALUE SPACES.
           02 DESCRICAO2     PIC X(30).
           02 FILLER         PIC X(05) VALUE SPACES.
           02 MINIMO         PIC 9(03).
           02 FILLER         PIC X(08) VALUE SPACES.
           02 QTDE           PIC 9(03).
           02 FILLER         PIC X(05) VALUE SPACES.
           02 PRECO          PIC Z.Z99,99.
           02 FILLER         PIC X(09) VALUE SPACES.

       PROCEDURE DIVISION.
  
       EM04-03.
           PERFORM INICIO.
           PERFORM PRINCIPAL UNTIL CH-CAD EQUAL CH-MOV AND
                                   CH-MOV EQUAL HIGH-VALUES.
           PERFORM FIM.
           STOP RUN.

       INICIO.
           OPEN INPUT  CADMERC
                       MOVMERC
                OUTPUT ATUMERC
                       RELERRO
                       RELMERC.
           PERFORM LER-CAD.
           PERFORM LER-MOV.

       LER-CAD.
           READ CADMERC AT END MOVE HIGH-VALUES TO CH-CAD.
           IF CH-CAD EQUAL HIGH-VALUES
               NEXT SENTENCE
           ELSE
               MOVE COD-CAD TO CH-CAD.

       LER-MOV.
           READ MOVMERC AT END MOVE HIGH-VALUES TO CH-MOV.
           IF CH-MOV EQUAL HIGH-VALUES
               NEXT SENTENCE
           ELSE
               MOVE COD-MOV TO CH-MOV.

       PRINCIPAL.
           IF CH-CAD EQUAL TO CH-MOV
               PERFORM IGUAL
               PERFORM LER-CAD
               PERFORM LER-MOV
           ELSE
               IF CH-CAD LESS CH-MOV
                   PERFORM MENOR
                   PERFORM LER-CAD
               ELSE
                   PERFORM MAIOR
                   PERFORM LER-MOV.

       IGUAL.
           IF TIPO-MOV IS EQUAL TO 1
               MOVE COD-MOV  TO CODIGO1
               MOVE DESC-MOV TO DESCRICAO1
               MOVE "INCLUSAO DE REG. JA EXISTENTE" TO MENSAGEM
               PERFORM RELATERRO
               MOVE COD-CAD   TO COD-ATU
               MOVE DESC-CAD  TO DESC-ATU
               MOVE MIN-CAD   TO MIN-ATU
               MOVE QTDE-CAD  TO QTDE-ATU
               MOVE PRECO-CAD TO PRECO-ATU
               WRITE REG-ATU
               IF QTDE-CAD IS LESS THAN OR EQUAL TO MIN-CAD
                   MOVE COD-CAD   TO CODIGO2
                   MOVE DESC-CAD  TO DESCRICAO2
                   MOVE MIN-CAD   TO MINIMO
                   MOVE QTDE-CAD  TO QTDE
                   MOVE PRECO-CAD TO PRECO   
                   PERFORM RELCRITICO
               END-IF
           ELSE
               IF TIPO-MOV IS EQUAL TO 2
                   MOVE COD-MOV   TO COD-ATU
                   MOVE DESC-MOV  TO DESC-ATU
                   MOVE MIN-MOV   TO MIN-ATU
                   MOVE QTDE-MOV  TO QTDE-ATU
                   MOVE PRECO-MOV TO PRECO-ATU
                   WRITE REG-ATU
                   IF QTDE-MOV IS LESS THAN OR EQUAL TO MIN-MOV
                       MOVE COD-MOV   TO CODIGO2
                       MOVE DESC-MOV  TO DESCRICAO2
                       MOVE MIN-MOV   TO MINIMO
                       MOVE QTDE-MOV  TO QTDE
                       MOVE PRECO-MOV TO PRECO
                       PERFORM RELCRITICO.

       MENOR.
           MOVE COD-CAD   TO COD-ATU.
           MOVE DESC-CAD  TO DESC-ATU.
           MOVE MIN-CAD   TO MIN-ATU.
           MOVE QTDE-CAD  TO QTDE-ATU.
           MOVE PRECO-CAD TO PRECO-ATU.
           WRITE REG-ATU.
           IF QTDE-CAD IS LESS THAN OR EQUAL TO MIN-CAD
               MOVE COD-CAD   TO CODIGO2
               MOVE DESC-CAD  TO DESCRICAO2
               MOVE MIN-CAD   TO MINIMO
               MOVE QTDE-CAD  TO QTDE
               MOVE PRECO-CAD TO PRECO
               PERFORM RELCRITICO.

       MAIOR.   
           IF TIPO-MOV IS EQUAL TO 1
               MOVE COD-MOV   TO COD-ATU
               MOVE DESC-MOV  TO DESC-ATU  
               MOVE MIN-MOV   TO MIN-ATU
               MOVE QTDE-MOV  TO QTDE-ATU
               MOVE PRECO-MOV TO PRECO-ATU
               WRITE REG-ATU
               IF QTDE-MOV IS LESS THAN OR EQUAL TO MIN-MOV
                   MOVE COD-MOV   TO CODIGO2
                   MOVE DESC-MOV  TO DESCRICAO2
                   MOVE MIN-MOV   TO MINIMO
                   MOVE QTDE-MOV  TO QTDE
                   MOVE PRECO-MOV TO PRECO
                   PERFORM RELCRITICO
               END-IF 
           ELSE
               IF TIPO-MOV IS EQUAL TO 2
                   MOVE COD-MOV  TO CODIGO1
                   MOVE DESC-MOV TO DESCRICAO1
                   MOVE "ALTERACAO DE REG. Ñ EXISTENTE" TO MENSAGEM 
                   PERFORM RELATERRO
               ELSE
                   MOVE COD-MOV TO CODIGO1
                   MOVE DESC-MOV TO DESCRICAO1
                   MOVE "EXCLUSAO DE REG. Ñ EXISTENTE" TO MENSAGEM
                   PERFORM RELATERRO.

       RELATERRO.
           IF CT-LIN1 GREATER THAN 39
               PERFORM CABECALHOERRO.
           PERFORM IMPERRO.

       CABECALHOERRO.
           ADD 1 TO CT-PAG1.
           MOVE CT-PAG1 TO VAR-PAG.
           MOVE SPACES TO REL-ERRO.
           WRITE REL-ERRO AFTER ADVANCING PAGE.
           WRITE REL-ERRO FROM CAB-01 AFTER ADVANCING 1 LINE.
           WRITE REL-ERRO FROM CAB-02 AFTER ADVANCING 2 LINES.
           WRITE REL-ERRO FROM CAB-03 AFTER ADVANCING 2 LINES.
           WRITE REL-ERRO FROM CAB-04 AFTER ADVANCING 1 LINE.
           MOVE ZEROES TO CT-LIN1.
 
       IMPERRO.
           WRITE REL-ERRO FROM DETALHE1 AFTER ADVANCING 1 LINE.
           ADD 1 TO CT-LIN1.
             
       RELCRITICO.
           IF CT-LIN2 GREATER THAN 39
               PERFORM CABECALHOCRIT.
           PERFORM IMPCRIT.

       CABECALHOCRIT.
           ADD 1 TO CT-PAG2.
           MOVE CT-PAG2 TO VAR-PAG.
           MOVE SPACES TO REL-CRIT.
           WRITE REL-CRIT AFTER ADVANCING PAGE.
           WRITE REL-CRIT FROM CAB-01 AFTER ADVANCING 1 LINE.
           WRITE REL-CRIT FROM CAB-05 AFTER ADVANCING 2 LINES.
           WRITE REL-CRIT FROM CAB-06 AFTER ADVANCING 2 LINES.
           WRITE REL-CRIT FROM CAB-07 AFTER ADVANCING 1 LINE.
           WRITE REL-CRIT FROM CAB-04 AFTER ADVANCING 1 LINE.
           MOVE ZEROES TO CT-LIN2.
 
       IMPCRIT.
           WRITE REL-CRIT FROM DETALHE2 AFTER ADVANCING 1 LINE.
           ADD 1 TO CT-LIN2.

       FIM.
           CLOSE CADMERC
                 MOVMERC
                 ATUMERC
                 RELERRO
                 RELMERC. 
            
           
       













   