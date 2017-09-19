       IDENTIFICATION DIVISION.
       PROGRAM-ID.      EM0108.
       AUTHOR.          FABIO EDUARDO LEONARDO.
       INSTALLATION.    FATEC-SP.
       DATE-WRITTEN.    02/09/2015.
       DATE-COMPILED.   02/09/2015.
       SECURITY.        MODIFICACAO SOMENTE COM AUTORIZACAO.
      *REMARKS.         LER OS REGISTROS DE CADFUN CALCULAR O REAJUSTE
      *                 E GRAVAR EM CADSAI.

       ENVIRONMENT DIVISION.
  
       CONFIGURATION SECTION.
           SOURCE-COMPUTER.  IBM-PC.
           OBJECT-COMPUTER.  IBM-PC.
           SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           SELECT CADFUN ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT CADSAI ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.

       FD CADFUN
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADFUN.DAT".
   
       01 REG-ENT.
           02 COD-ENT   PIC 9(05).
           02 NOME-ENT  PIC X(20).
           02 SAL-ENT   PIC 9(05)V99.
       
       FD CADSAI
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADSAI.DAT".

       01 REG-SAI.
           02 COD-SAI    PIC 9(05).
           02 NOME-SAI   PIC X(20).
           02 SAL-SAI    PIC 9(05)V99.

       WORKING-STORAGE SECTION.

       77 FIM-ARQ       PIC X(03) VALUE "NAO".
       77 REAJUSTADO    PIC 9(05)V99 VALUE ZEROS.

       PROCEDURE DIVISION.

       EM01-08.

           PERFORM INICIO.

           PERFORM PRINCIPAL
                   UNTIL FIM-ARQ EQUAL "SIM".

               PERFORM TERMINO.

           STOP RUN.

       INICIO.

           OPEN INPUT CADFUN
               OUTPUT CADSAI.
           PERFORM LEITURA.

       LEITURA.

           READ CADFUN AT END MOVE "SIM" TO FIM-ARQ.

       PRINCIPAL.

           PERFORM REAJUSTE.
           PERFORM GRAVACAO.
           PERFORM LEITURA.

       REAJUSTE.

           IF SAL-ENT IS NOT GREATER THAN 1000
               MULTIPLY SAL-ENT BY 1,12 GIVING REAJUSTADO
           ELSE
               IF SAL-ENT IS GREATER THAN 1000 AND 
                       NOT GREATER THAN 2000
                   MULTIPLY SAL-ENT BY 1,11 GIVING REAJUSTADO
               ELSE
                   MULTIPLY SAL-ENT BY 1,10 GIVING REAJUSTADO.
 
       GRAVACAO.

           MOVE COD-ENT TO COD-SAI.
           MOVE NOME-ENT TO NOME-SAI.
           MOVE REAJUSTADO TO SAL-SAI.
           WRITE REG-SAI.

       TERMINO.
    
           CLOSE CADFUN
                 CADSAI.            
     
          





       
 
 