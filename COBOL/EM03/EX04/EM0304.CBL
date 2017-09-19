       IDENTIFICATION DIVISION.
       PROGRAM-ID.    EM0304.
       AUTHOR.        FABIO COSTA.
       DATE-WRITTEN.  10/11/2015.
       DATE-COMPILED. 10/11/2015.
       SECURITY.      NAO MODIFICAR SEM AUTORIZACAO.
      *REMARKS.       GERAR UM RELATORIO ORDENADO PELO CPF DO
      *               CLIENTE.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       OBJECT-COMPUTER.  IBM-PC.
       SOURCE-COMPUTER.  IBM-PC.
       SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CADCLI ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT TRAB ASSIGN TO DISK.
       
           SELECT RELAT ASSIGN TO DISK.

       DATA DIVISION.
       FILE SECTION.

       FD CADCLI
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADCLI.DAT".

       01 REG-ENT.
           02 COD-ENT        PIC 9(03).
           02 CPF-ENT        PIC 9(11).
           02 NOME-ENT       PIC X(30).
           02 ESTADO-ENT     PIC X(02).
           02 CIDADE-ENT     PIC X(30).
           02 EMAIL-ENT      PIC X(30).

       SD TRAB.
       
       01 REG-TRAB.
           02 COD-TRAB       PIC 9(03).
           02 CPF-TRAB       PIC 9(11).
           02 NOME-TRAB      PIC X(30).
           02 ESTADO-TRAB    PIC X(02).
           02 CIDADE-TRAB    PIC X(30).
           02 EMAIL-TRAB     PIC X(30).

       FD RELAT
           LABEL RECORD IS OMITTED.
       
       01 REG-REL            PIC X(80).

       WORKING-STORAGE SECTION.
      
       77 FIM-ARQ            PIC X(03) VALUE "NAO".
       77 CT-LIN             PIC 9(02) VALUE 20.
       77 CT-PAG             PIC 9(02) VALUE ZEROES.
       77 SET-EST            PIC X(02) VALUE "SP".
       77 SET-CID            PIC X(30) VALUE "SAO PAULO".
       
       01 CAB-01.
           02 FILLER         PIC X(25) VALUE SPACES.
           02 FILLER         PIC X(37) VALUE 
               "RELACAO DE CLIENTES POR ESTADO/CIDADE".
           02 FILLER         PIC X(10) VALUE SPACES.
           02 FILLER         PIC X(05) VALUE "PAG. ".
           02 VAR-PAG        PIC ZZ9.

       01 CAB-02.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(08) VALUE "ESTADO: ".
           02 VAR-EST        PIC X(02).
           02 FILLER         PIC X(65) VALUE SPACES.
   
       01 CAB-03.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(08) VALUE "CIDADE: ".
           02 VAR-CID        PIC X(30).
           02 FILLER         PIC X(37) VALUE SPACES.

       01 CAB-04.
           02 FILLER         PIC X(02) VALUE SPACES.
           02 FILLER         PIC X(03) VALUE "CPF".
           02 FILLER         PIC X(20) VALUE SPACES.
           02 FILLER         PIC X(04) VALUE "NOME".
           02 FILLER         PIC X(15) VALUE SPACES.
           02 FILLER         PIC X(05) VALUE "EMAIL".
           02 FILLER         PIC X(31) VALUE SPACES.

       01 CAB-05.
           02 FILLER         PIC X(80) VALUE SPACES.

       01 DETALHE.
           02 FILLER         PIC X(02) VALUE SPACES.
           02 CPF            PIC 9(11).
           02 FILLER         PIC X(04) VALUE SPACES.
           02 NOME           PIC X(30).
           02 FILLER         PIC X(03) VALUE SPACES.
           02 EMAIL          PIC X(30).

       PROCEDURE DIVISION.

       EM03-04.
           SORT TRAB
                ASCENDING KEY CPF-TRAB  
                INPUT  PROCEDURE ROT-ENTRADA
                OUTPUT PROCEDURE ROT-SAIDA.
           STOP RUN.

       ROT-ENTRADA SECTION.
           PERFORM INICIO-ENTRADA.
           PERFORM PRINCIPAL-ENTRADA UNTIL FIM-ARQ EQUAL "SIM".
           PERFORM FIM-ENTRADA.

       INICIO-ENTRADA SECTION.
           OPEN INPUT CADCLI.
           PERFORM LEITURA-ENTRADA.

       LEITURA-ENTRADA SECTION.
           READ CADCLI AT END MOVE "SIM" TO FIM-ARQ.

       PRINCIPAL-ENTRADA SECTION.
           PERFORM SELECAO-ENTRADA.
           PERFORM LEITURA-ENTRADA.
   
       SELECAO-ENTRADA SECTION.
           IF ESTADO-ENT EQUAL TO SET-EST AND 
                                  CIDADE-ENT EQUAL TO SET-CID
               PERFORM GRAVACAO-ENTRADA.

       GRAVACAO-ENTRADA SECTION.
           MOVE COD-ENT TO COD-TRAB.
           MOVE CPF-ENT TO CPF-TRAB.
           MOVE NOME-ENT TO NOME-TRAB.
           MOVE ESTADO-ENT TO ESTADO-TRAB.
           MOVE CIDADE-ENT TO CIDADE-TRAB.
           MOVE EMAIL-ENT TO EMAIL-TRAB.
           RELEASE REG-TRAB.

       FIM-ENTRADA SECTION.
           CLOSE CADCLI.

       ROT-SAIDA SECTION.
           PERFORM INICIO-SAIDA.
           PERFORM PRINCIPAL-SAIDA UNTIL FIM-ARQ EQUAL "SIM".
           PERFORM FIM-SAIDA.

       INICIO-SAIDA SECTION.
           MOVE "NAO" TO FIM-ARQ.
           OPEN OUTPUT RELAT.
           PERFORM LE-SAIDA.
  
       LE-SAIDA SECTION.
           RETURN TRAB AT END MOVE "SIM" TO FIM-ARQ.

       PRINCIPAL-SAIDA SECTION.
           PERFORM IMPRESSAO-SAIDA.
           PERFORM LE-SAIDA.

       IMPRESSAO-SAIDA SECTION.
           IF CT-LIN GREATER THAN 19
               PERFORM CABECALHO-SAIDA.
           PERFORM DETALHE-SAIDA.

       CABECALHO-SAIDA SECTION.
           ADD 1 TO CT-PAG.
           MOVE CT-PAG TO VAR-PAG.
           MOVE SET-EST TO VAR-EST.
           MOVE SET-CID TO VAR-CID.
           MOVE SPACES TO REG-REL.
           WRITE REG-REL AFTER ADVANCING PAGE.
           WRITE REG-REL FROM CAB-01 AFTER ADVANCING 1 LINE.
           WRITE REG-REL FROM CAB-02 AFTER ADVANCING 2 LINES.
           WRITE REG-REL FROM CAB-03 AFTER ADVANCING 2 LINES.
           WRITE REG-REL FROM CAB-04 AFTER ADVANCING 2 LINES.
           WRITE REG-REL FROM CAB-05 AFTER ADVANCING 1 LINE.
           MOVE ZEROES TO CT-LIN.

       DETALHE-SAIDA SECTION.
           MOVE CPF-TRAB   TO CPF.
           MOVE NOME-TRAB  TO NOME.
           MOVE EMAIL-TRAB TO EMAIL.
           WRITE REG-REL FROM DETALHE AFTER ADVANCING 1 LINE.
           ADD 1 TO CT-LIN.

       FIM-SAIDA SECTION.
           CLOSE RELAT.      

 





                                               
           





  
    
           