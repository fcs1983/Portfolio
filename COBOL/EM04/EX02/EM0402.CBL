       IDENTIFICATION DIVISION.
       PROGRAM-ID.    EM0402.
       AUTHOR.        FABIO COSTA.
       INSTALLATION.  FATEC-SP.
       DATE-WRITTEN.  01/12/2015.
       DATE-COMPILED. 01/12/2015.
       SECURITY.      NAO MODIFICAR SEM AUTORIZACAO.
      *REMARKS.       REALIZAR O BALANCE-LINE DOS ARQUIVOS DE ENTRADA,
      *               GERANDO O ARQUIVO DE SAIDA E RELATORIO.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.  IBM-PC.
       OBJECT-COMPUTER.  IBM-PC.
       SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CADANT ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.
 
           SELECT ARQMOV ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT CADATU ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT RELOCORR ASSIGN TO DISK.

       DATA DIVISION.
       FILE SECTION.

       FD CADANT
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADANT.DAT".

       01 REG-ANT.
           02 CC-ANT         PIC 9(03).
           02 TIPO-ANT       PIC X(01).
           02 ENDER-ANT      PIC X(50).

       FD ARQMOV
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "ARQMOV.DAT".

       01 REG-MOV.
           02 CC-MOV         PIC 9(03).
           02 TIPO-MOV       PIC X(01).
           02 ENDER-MOV      PIC X(50).

       FD CADATU
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADATU.DAT".

       01 REG-ATU.
           02 CC-ATU         PIC 9(03).
           02 TIPO-ATU       PIC X(01).
           02 ENDER-ATU      PIC X(50).

       FD RELOCORR
           LABEL RECORD IS OMMITED.

       01 REG-REL            PIC X(80).

       WORKING-STORAGE SECTION.

       77 CH-ANT             PIC X(03) VALUE SPACES.
       77 CH-MOV             PIC X(03) VALUE SPACES.
       77 CT-LIN             PIC 9(02) VALUE 40.
       77 CT-PAG             PIC 9(02) VALUE ZEROES.

       01 CAB-01.
           02 FILLER         PIC X(28) VALUE SPACES.
           02 FILLER         PIC X(24) VALUE "RELATORIO DE ATUALIZACAO".
           02 FILLER         PIC X(17) VALUE SPACES.
           02 FILLER         PIC X(04) VALUE "PAG.".
           02 VAR-PAG        PIC ZZ9.
           02 FILLER         PIC X(04) VALUE SPACES.
   
       01 CAB-02.
           02 FILLER         PIC X(04) VALUE SPACES.
           02 FILLER         PIC X(06) VALUE "CODIGO".
           02 FILLER         PIC X(06) VALUE SPACES.
           02 FILLER         PIC X(04) VALUE "TIPO".
           02 FILLER         PIC X(06) VALUE SPACES.
           02 FILLER         PIC X(08) VALUE "MENSAGEM".
           02 FILLER         PIC X(46) VALUE SPACES.

       01 DETALHE.
           02 FILLER         PIC X(04) VALUE SPACES.
           02 CODIGO         PIC 9(03).
           02 FILLER         PIC X(09) VALUE SPACES.
           02 TIPO           PIC X.
           02 FILLER         PIC X(09) VALUE SPACES.
           02 MENSAGEM       PIC X(30).
           02 FILLER         PIC X(24) VALUE SPACES.       
          
       PROCEDURE DIVISION.

       EM04-02.
           PERFORM INICIO.
           PERFORM PRINCIPAL UNTIL CH-ANT EQUAL CH-MOV AND
                                   CH-MOV EQUAL HIGH-VALUES.
           PERFORM FIM.
           STOP RUN.    

       INICIO.
           OPEN INPUT   CADANT
                        ARQMOV
                OUTPUT  CADATU
                        RELOCORR.
           PERFORM LER-ANT.
           PERFORM LER-MOV.

       LER-ANT.
           READ CADANT AT END MOVE HIGH-VALUES TO CH-ANT.
           IF CH-ANT EQUAL HIGH-VALUES
               NEXT SENTENCE
           ELSE
               MOVE CC-ANT TO CH-ANT.
  
       LER-MOV.
           READ ARQMOV AT END MOVE HIGH-VALUES TO CH-MOV.
           IF CH-MOV EQUAL HIGH-VALUES
               NEXT SENTENCE
           ELSE
               MOVE CC-MOV TO CH-MOV.

       PRINCIPAL.
           IF CH-ANT EQUAL CH-MOV
               PERFORM IGUAL
               PERFORM LER-ANT
               PERFORM LER-MOV
           ELSE
               IF CH-ANT LESS CH-MOV
                   PERFORM MENOR
                   PERFORM LER-ANT
               ELSE
                   PERFORM MAIOR
                   PERFORM LER-MOV.

       IGUAL.
           IF TIPO-MOV EQUAL "E"
               MOVE CC-ANT TO CODIGO
               MOVE TIPO-MOV TO TIPO
               MOVE "REGISTRO EXCLUIDO" TO MENSAGEM
               PERFORM IMP-REL
           ELSE
               IF TIPO-MOV EQUAL "I"
                   PERFORM GRAVA-ANT 
                   MOVE CC-MOV TO CODIGO 
                   MOVE TIPO-MOV TO TIPO
                   MOVE "INCLUSAO P/ REG. EXISTENTE" TO MENSAGEM
                   PERFORM IMP-REL
               ELSE
                   MOVE CC-MOV TO CC-ATU
                   MOVE TIPO-MOV TO TIPO-ATU
                   MOVE ENDER-MOV TO ENDER-ATU
                   WRITE REG-ATU
                   MOVE CC-ANT TO CODIGO
                   MOVE TIPO-ANT TO TIPO
                   MOVE "REGISTRO SUBSTITUIDO" TO MENSAGEM
                   PERFORM IMP-REL
                   MOVE CC-MOV TO CODIGO
                   MOVE TIPO-MOV TO TIPO
                   MOVE "REGISTRO SUBSTITUTO" TO MENSAGEM
                   PERFORM IMP-REL.   
                  
       MENOR.
           PERFORM GRAVA-ANT.
 
       MAIOR.
           PERFORM GRAVA-MOV.

       GRAVA-ANT.
           MOVE CC-ANT TO CC-ATU.
           MOVE TIPO-ANT TO TIPO-ATU.
           MOVE ENDER-ANT TO ENDER-ATU.
           WRITE REG-ATU.

       GRAVA-MOV.
           IF TIPO-MOV EQUAL "I"
               MOVE CC-MOV TO CC-ATU
               MOVE TIPO-MOV TO TIPO-ATU
               MOVE ENDER-MOV TO ENDER-ATU
               WRITE REG-ATU
               MOVE CC-MOV TO CODIGO
               MOVE TIPO-MOV TO TIPO
               MOVE "REGISTRO INCLUIDO" TO MENSAGEM
               PERFORM IMP-REL
           ELSE
               IF TIPO-MOV EQUAL "A"
                   MOVE CC-MOV TO CODIGO
                   MOVE TIPO-MOV TO TIPO
                   MOVE "ALTERACAO P/ REG. INEXISTENTE" TO MENSAGEM
                   PERFORM IMP-REL
               ELSE
                   MOVE CC-MOV TO CODIGO
                   MOVE TIPO-MOV TO TIPO
                   MOVE "EXCLUSAO P/ REG. INEXISTENTE" TO MENSAGEM
                   PERFORM IMP-REL.

       IMP-REL.
           IF CT-LIN GREATER THAN 39
               PERFORM CABECALHO.
           PERFORM IMPDET.

       CABECALHO.
           ADD 1 TO CT-PAG.
           MOVE CT-PAG TO VAR-PAG.
           MOVE SPACES TO REG-REL.
           WRITE REG-REL AFTER ADVANCING PAGE.
           WRITE REG-REL FROM CAB-01 AFTER ADVANCING 1 LINE.
           WRITE REG-REL FROM CAB-02 AFTER ADVANCING 2 LINES.
           MOVE ZEROES TO CT-LIN.

       IMPDET.
           WRITE REG-REL FROM DETALHE AFTER ADVANCING 1 LINE.
           ADD 1 TO CT-LIN.

       FIM.
           CLOSE CADANT
                 ARQMOV
                 CADATU
                 RELOCORR. 


       
                
                 
           
                       










    
           
 