       IDENTIFICATION DIVISION.
       PROGRAM-ID.      EM0103.
       AUTHOR.          FABIO EDUARDO LEONARDO.
       INSTALLATION.    FATEC-SP.
       DATE-WRITTEN.    30/08/2015.
       DATE-COMPILED.   30/08/2015.
       SECURITY.        MODIFICACAO SOMENTE COM AUTORIZACAO.
      *REMARKS.         LER OS REGISTROS DE CADALU, CALCULAR A MEDIA E
      *                 GRAVAR EM CADATU CONFORM LAYOUT.
       
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
           02 NUM-ENT        PIC 9(05).
           02 NOME           PIC X(20).
           02 NOTA1          PIC 99V99.
           02 NOTA2          PIC 99V99.
           02 NOTA3          PIC 99V99.

       FD CADATU
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADATU.DAT".

       01 REG-SAI.
           02 NUM-SAI        PIC 9(05).
           02 MEDIA          PIC 99V99.

       WORKING-STORAGE SECTION.

       77 FIM-ARQ            PIC X(03) VALUE "NAO".
       77 SOMA               PIC 9(02) VALUE ZEROS.
       
       PROCEDURE DIVISION.

       EM01-03.

           PERFORM INICIO.

           PERFORM PRINCIPAL
                   UNTIL FIM-ARQ EQUAL "SIM".
 
               PERFORM TERMINO.

           STOP RUN.

       INICIO.

           OPEN INPUT  CADALU
                OUTPUT CADATU.
           PERFORM LEITURA.

       LEITURA.

           READ CADALU AT END
               MOVE "SIM" TO FIM-ARQ.

       PRINCIPAL.

           PERFORM GRAVACAO.
           PERFORM LEITURA.

       GRAVACAO.

           MOVE NUM-ENT TO NUM-SAI.
           ADD NOTA1 NOTA2 NOTA3 GIVING SOMA.
           DIVIDE SOMA BY 3 GIVING MEDIA.
           WRITE REG-SAI.

       TERMINO.

           CLOSE CADALU
                 CADATU.
       




 









         