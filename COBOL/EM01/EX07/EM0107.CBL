       IDENTIFICATION DIVISION.
       PROGRAM-ID.      EM0107.
       AUTHOR.          FABIO EDUARDO LEONARDO.
       INSTALLATION.    FATEC-SP.
       DATE-WRITTEN.    02/09/2015.
       DATE-COMPILED.   02/09/2015.
       SECURITY.        MODIFICACAO SOMENTE COM AUTORIZACAO.
      *REMARKS.         LER OS REGISTROS DE CADALU, SELECIONAR PARA
      *                 GRAVACAO EM CADATU OS REGISTROS DO SEXO       
      *                 FEMININO, CALCULAR A MEDIA.

       ENVIRONMENT DIVISION.
   
       CONFIGURATION SECTION.
           SOURCE-COMPUTER.  IBM-PC.
           OBJECT-COMPUTER.  IBM-PC.
           SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           SELECT CADALU ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT CADATU ASSIGN TO DISK
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
           02 NOTA3     PIC 99V99.
           02 NOTA4     PIC 99V99.
           02 SEXO-ENT  PIC X(01).

       FD CADATU
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADATU.DAT".

       01 REG-SAI.
           02 NUM-SAI   PIC 9(05).
           02 NOME-SAI  PIC X(20).
           02 MEDIA     PIC 99V99.
           02 SEXO-SAI  PIC X(01).

       WORKING-STORAGE SECTION.

       77 FIM-ARQ       PIC X(03) VALUE "NAO".
       77 NSOMA         PIC 99V99 VALUE ZEROS.
       77 CMEDIA        PIC 99V99 VALUE ZEROS.

       PROCEDURE DIVISION.
  
       EM01-07.

           PERFORM INICIO.

           PERFORM PRINCIPAL
                   UNTIL FIM-ARQ EQUAL "SIM".

               PERFORM TERMINO.

           STOP RUN.
  
       INICIO.

           OPEN INPUT CADALU
               OUTPUT CADATU.
           PERFORM LEITURA.

       LEITURA.

           READ CADALU AT END MOVE "SIM" TO FIM-ARQ.

       PRINCIPAL.

           PERFORM GRAVACAO.
           PERFORM LEITURA.

       GRAVACAO.

           IF SEXO-ENT EQUAL "F"
               PERFORM CALCULO
               MOVE NUM-ENT TO NUM-SAI
               MOVE NOME-ENT TO NOME-SAI
               MOVE CMEDIA TO MEDIA
               MOVE SEXO-ENT TO SEXO-SAI
               WRITE REG-SAI.

       CALCULO.
 
           ADD NOTA1 NOTA2 NOTA3 NOTA4 GIVING NSOMA.
           DIVIDE NSOMA BY 4 GIVING CMEDIA.
  
       TERMINO.

           CLOSE CADALU
                 CADATU.             








 




