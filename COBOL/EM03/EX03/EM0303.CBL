       IDENTIFICATION DIVISION.
       PROGRAM-ID.    EM0303.
       AUTHOR.        FABIO COSTA.
       DATE-WRITTEN.  10/11/2015.
       DATE-COMPILED. 10/11/2015.
       SECURITY.      NAO MODIFICAR SEM AUTORIZACAO.
      *REMARKS.       LER CADENT, ORDENAR PELO CAMPO CODIGO
      *               GRAVAR EM CADSAI OS REGISTROS COM DEPARTAMENTO
      *               01 E 02.

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
           02 DEPT-ENT       PIC 9(02).

       SD TRAB.

       01 REG-TRAB.
           02 COD-TRAB       PIC 9(05).
           02 NOME-TRAB      PIC X(30).
           02 DEPT-TRAB      PIC 9(02).

       FD CADSAI
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADSAI.DAT".

       01 REG-SAI.
           02 COD-SAI        PIC 9(05).
           02 NOME-SAI       PIC X(30).

       WORKING-STORAGE SECTION.

       77 FIM-ARQ            PIC X(03) VALUE "NAO".

       PROCEDURE DIVISION.

       EM03-03.
           SORT TRAB
                ASCENDING KEY COD-TRAB
           USING CADENT
           OUTPUT PROCEDURE ROT-SAIDA
           STOP RUN.

       ROT-SAIDA SECTION.
           PERFORM INICIO.
           PERFORM PRINCIPAL UNTIL FIM-ARQ EQUAL "SIM".
           PERFORM FIM.

       INICIO SECTION.
           OPEN OUTPUT CADSAI.
           PERFORM LE-TRAB.

       LE-TRAB SECTION.
           RETURN TRAB AT END MOVE "SIM" TO FIM-ARQ.

       PRINCIPAL SECTION.
           PERFORM SELECAO.
           PERFORM LE-TRAB.

       SELECAO SECTION.
           IF DEPT-TRAB EQUAL 01 OR DEPT-TRAB EQUAL 02
               PERFORM GRAVACAO.

       GRAVACAO SECTION.
           MOVE COD-TRAB TO COD-SAI.
           MOVE NOME-TRAB TO NOME-SAI.
           WRITE REG-SAI.

       FIM SECTION.
           CLOSE CADSAI.       
           







                  