       IDENTIFICATION DIVISION.
       PROGRAM-ID.      EM0105.
       AUTHOR.          FABIO EDUARDO LEONARDO.
       INSTALLATION.    FATEC-SP.
       DATE-WRITTEN.    02/09/2015.
       DATE-COMPILED.   02/09/2015.
       SECURITY.        MODIFICACAO SOMENTE COM AUTORIZACAO.
      *REMARKS.         LER OS REGISTROS DE CADALU, CALCULAR A MEDIA 
      *                 E GRAVAR NO ARQUIVO DE SAIDA CADAPR OS REGISTROS QUE
      *                 TIVEREM MEDIA >= 7,0 E FALTAS <= 18.

       ENVIRONMENT DIVISION.

       CONFIGURATION SECTION.
           SOURCE-COMPUTER. IBM-PC.
           OBJECT-COMPUTER. IBM-PC.
           SPECIAL-NAMES.   DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           SELECT CADALU ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT CADAPR ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.

       FD CADALU
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADALU.DAT".

       01 REG-ENT.
           02 NUM-ENT   PIC 9(05).
           02 NOME-ENT  PIC X(20).
           02 NOTA1     PIC 99V99.
           02 NOTA2     PIC 99V99.
           02 FALTAS    PIC 99.

       FD CADAPR
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADAPR.DAT".

       01 REG-SAI.
           02 NUM-SAI   PIC 9(05).
           02 NOME-SAI  PIC X(20).
           02 MEDIA     PIC 99V99.

       WORKING-STORAGE SECTION.

       77 FIM-ARQ       PIC X(03) VALUE "NAO".
       77 SOMA          PIC 99v99 VALUE ZEROS.
       77 CMEDIA        PIC 99v99 VALUE ZEROS.

       PROCEDURE DIVISION.

       EM01-05.

           PERFORM INICIO.
     
           PERFORM PRINCIPAL
                   UNTIL FIM-ARQ EQUAL "SIM".

               PERFORM TERMINO.

           STOP RUN.

       INICIO.

           OPEN INPUT  CADALU
                OUTPUT CADAPR.
           PERFORM LEITURA.

       LEITURA.

           READ CADALU AT END 
               MOVE "SIM" TO FIM-ARQ.
    
       PRINCIPAL.

           PERFORM CALCULO.  
           PERFORM GRAVACAO.
           PERFORM LEITURA.

       CALCULO.

           ADD NOTA1 NOTA2 GIVING SOMA.
           DIVIDE SOMA BY 2 GIVING CMEDIA.

       GRAVACAO.

           IF CMEDIA IS NOT LESS THAN 7 AND FALTAS IS NOT 
                           GREATER THAN 18
               MOVE CMEDIA TO MEDIA
               MOVE NUM-ENT TO NUM-SAI
               MOVE NOME-ENT TO NOME-SAI  
               WRITE REG-SAI.

       TERMINO.

           CLOSE CADALU
                 CADAPR.
 





      




