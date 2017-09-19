       IDENTIFICATION DIVISION.
       PROGRAM-ID.    EM0301.
       AUTHOR.        FABIO COSTA.
       INSTALLATION.  FATEC-SP.
       DATE-WRITTEN.  10/11/2015.
       DATE-COMPILED. 10/11/2015.
       SECURITY.      NAO MODIFICAR SEM AUTORIZACAO.
      *REMARKS.       LER CADENT, GRAVAR EM CADSAI EM ORDEM ASCENDENTE.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       OBJECT-COMPUTER.  IBM-PC.
       SOURCE-COMPUTER.  IBM-PC.
       SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CADENT ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT TRAB ASSIGN TO DISK.

           SELECT CADSAI ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.

       FD CADENT
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADENT.DAT".
       
       01 REG-ENT.
           02 COD-ENT        PIC 9(05).
           02 NOME-ENT       PIC X(30).
           02 SEXO-ENT       PIC X.

       SD TRAB.
       
       01 REG-TRAB.
           02 COD-TRAB       PIC 9(05).
           02 NOME-TRAB      PIC X(30).
           02 SEXO-TRAB      PIC X.

       FD CADSAI
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADSAI.DAT".

       01 REG-SAI.
           02 COD-SAI        PIC 9(05).
           02 NOME-SAI       PIC X(30).
           02 SEXO-SAI       PIC X.

       WORKING-STORAGE SECTION.

       77 FIM-ARQ            PIC X(03) VALUE "NAO".

       PROCEDURE DIVISION.

       EM03-01.
           SORT TRAB 
               ASCENDING KEY COD-TRAB
               ASCENDING KEY NOME-TRAB
           USING CADENT
           GIVING CADSAI.
           STOP RUN.
               
















           