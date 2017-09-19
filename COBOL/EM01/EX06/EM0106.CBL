       IDENTIFICATION DIVISION.
       PROGRAM-ID.      EM0106.
       AUTHOR.          FABIO EDUARDO LEONARDO.
       INSTALLATION.    FATEC-SP.
       DATE-WRITTEN.    02/09/2015.
       DATE-COMPILED.   02/09/2015.
       SECURITY.        MODIFICACAO SOMENTE COM AUTORIZACAO.
      *REMARKS.         LER OS REGISTROS DE CADENT E GRAVAR EM CADSAI
      *                 OS REGISTROS QUE TIVEREM SALARIO BRUTO MAIOR
      *                 QUE R$3.000,00.

       ENVIRONMENT DIVISION.

       CONFIGURATION SECTION.
           SOURCE-COMPUTER.  IBM-PC.
           OBJECT-COMPUTER.  IBM-PC.
           SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           SELECT CADENT ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT CADSAI ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.

       FD CADENT
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADENT.DAT".

       01 REG-ENT.
           02 MAT-ENT   PIC 9(05).
           02 NOME-ENT  PIC X(30).
           02 SAL-ENT   PIC 9(05)V99.

       FD CADSAI
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADSAI.DAT".

       01 REG-SAI.
           02 MAT-SAI   PIC 9(05).
           02 NOME-SAI  PIC X(30).
           02 SAL-SAI   PIC 9(05)V99.
      
       WORKING-STORAGE SECTION.

       77 FIM-ARQ       PIC X(03) VALUE  "NAO".
       
       PROCEDURE DIVISION.

       EM01-05.

           PERFORM INICIO.
           
           PERFORM PRINCIPAL
                   UNTIL FIM-ARQ EQUAL "SIM".

           PERFORM TERMINO.
   
           STOP RUN.

       INICIO.

           OPEN INPUT CADENT 
               OUTPUT CADSAI.
           PERFORM LEITURA.

       LEITURA.
 
           READ CADENT AT END
               MOVE "SIM" TO FIM-ARQ.

       PRINCIPAL.

           PERFORM GRAVACAO.
           PERFORM LEITURA.

       GRAVACAO.

           IF SAL-ENT IS GREATER THAN 3000
               MOVE MAT-ENT TO MAT-SAI
               MOVE NOME-ENT TO NOME-SAI
               MOVE SAL-ENT TO SAL-SAI
               WRITE REG-SAI.

       TERMINO.

           CLOSE CADENT
                 CADSAI. 

        