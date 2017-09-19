       IDENTIFICATION DIVISION.
       PROGRAM-ID.    EM0302.
       AUTHOR.        FABIO COSTA.
       DATE-WRITTEN.  10/11/2015.
       DATE-COMPILED. 10/11/2015.
       SECURITY.      NAO MODIFICAR SEM AUTORIZACAO.
      *REMARKS.       LER CADENT, SELECIONAR OS REGISTROS DO SEXO
      *               MASCULINO, GRAVAR EM CADSAI EM ORDEM DESCENDENTE
      *               PELO CAMPO CODIGO.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.  IBM-PC.
       OBJECT-COMPUTER.  IBM-PC.
       SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CADENT ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT TRAB ASSIGN TO DISK.

           SELECT CADSAI ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

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
           02 COD-SAI           PIC 9(05).
           02 NOME-SAI          PIC X(30).

       WORKING-STORAGE SECTION.

       77 FIM-ARQ            PIC X(03) VALUE "NAO".

       PROCEDURE DIVISION.
   
       EM03-02.
           SORT TRAB
               DESCENDING KEY COD-TRAB
               INPUT PROCEDURE ROT-ENTRADA
               GIVING CADSAI.
           STOP RUN.

       ROT-ENTRADA SECTION.
           PERFORM INICIO-ENTRADA.
           PERFORM PRINCIPAL-ENTRADA UNTIL FIM-ARQ EQUAL "SIM".
           PERFORM FIM-ENTRADA.

       INICIO-ENTRADA SECTION.
           OPEN INPUT CADENT.
           PERFORM LEITURA-ENTRADA.
 
       LEITURA-ENTRADA SECTION.
           READ CADENT AT END MOVE "SIM" TO FIM-ARQ.

       PRINCIPAL-ENTRADA SECTION.
           PERFORM SELECAO-ENTRADA.
           PERFORM LEITURA-ENTRADA.

       SELECAO-ENTRADA SECTION.
           IF SEXO-ENT EQUAL TO "M"
               PERFORM GRAVACAO-ENTRADA.

       GRAVACAO-ENTRADA SECTION.
           MOVE COD-ENT TO COD-TRAB.
           MOVE NOME-ENT TO NOME-TRAB.
           MOVE SEXO-ENT TO SEXO-TRAB.
           RELEASE REG-TRAB.

       FIM-ENTRADA SECTION.
           CLOSE CADENT.































         

