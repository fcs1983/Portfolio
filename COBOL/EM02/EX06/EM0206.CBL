       IDENTIFICATION DIVISION.
       PROGRAM-ID.    EM0206.
       AUTHOR.        FABIO COSTA.
       INSTALLATION.  FATEC-SP.
       DATE-WRITTEN.  13/10/2015.
       DATE-COMPILED. 13/10/2015.
       SECURITY.      NAO MODIFICAR SEM AUTORIZACAO.
      *REMARKS.       LER OS REGISTROS E CADCLI CRITICA-LOS 
      *               MEDIANTE AS CONDICOES DADAS.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.  IBM-PC.
       OBJECT-COMPUTER.  IBM-PC.
       SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CADCLI ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.
 
           SELECT CADOK ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT RELOCOR ASSIGN TO DISK.

       DATA DIVISION.
       FILE SECTION.

       FD CADCLI
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADCLI.DAT".  
       
       01 REGCLI.
           02 CODIGO-ENT     PIC X(03).
           02 CPF-ENT1.
               03 CPF-ENT        PIC 9 OCCURS 11 TIMES.
           02 NOME-ENT       PIC X(30).
           02 ESTADO-ENT     PIC X(02).
               88 ESTADO-VALIDO        VALUE "AC" "AL" "AP" "AM" "BA"
                  "CE" "DF" "ES" "GO" "MA" "MT" "MS" "MG" "PA" "PB"
                  "PR" "PE" "PI" "RJ" "RN" "RS" "RO" "RR" "SC" "SP" 
                  "SE" "TO". 
                                         
           02 CIDADE-ENT     PIC X(30).
           02 EMAIL-ENT      PIC X(30).
           02 TELEFONE-ENT   PIC 9(10).

       FD CADOK
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADOK.DAT".

       01 REGOK.
           02 CPF-SAI        PIC 9(11).
           02 NOME-SAI       PIC X(30).
           02 ESTADO-SAI     PIC X(02).
           02 CIDADE-SAI     PIC X(30).
           02 EMAIL-SAI      PIC X(30).
           02 TELEFONE-SAI   PIC 9(10).

       FD RELOCOR
           LABEL RECORD IS OMMITED.

       01 REL-SAI            PIC X(80).

       WORKING-STORAGE SECTION.

       77 FIM-ARQ            PIC X(03) VALUE "NAO".
       77 CT-LIN             PIC 9(02) VALUE 40.
       77 CPF-SOMA1          PIC 9(04) VALUE ZEROES.
       77 CPF-SOMA2          PIC 9(04) VALUE ZEROES.
       77 CPF-DIV1           PIC 99    VALUE ZEROES.
       77 CPF-DIV2           PIC 99    VALUE ZEROES.
       77 CTR1               PIC 99    VALUE 1.
       77 CTR2               PIC 99    VALUE 10.
       77 CPF-RESTO1         PIC 99    VALUE ZEROES.
       77 CPF-RESTO2         PIC 99    VALUE ZEROES. 
       77 CPF-VAL            PIC 9     VALUE ZEROES.
       77 NOME-VAL           PIC 9     VALUE ZEROES.
       77 ESTADO-VAL         PIC 9     VALUE ZEROES.
       77 CIDADE-VAL         PIC 9     VALUE ZEROES.
       77 EMAIL-VAL          PIC 9     VALUE ZEROES.

       01 CAB-01.
           02 FILLER         PIC X(32) VALUE SPACES.
           02 FILLER         PIC X(17) VALUE "TURISMAR TURISMOS".
           02 FILLER         PIC X(32) VALUE SPACES.

       01 CAB-02.
           02 FILLER         PIC X(17) VALUE SPACES.
           02 FILLER         PIC X(45) VALUE 
                      "RELATORIO DE DADOS DE CLIENTES INCONSISTENTES".
           02 FILLER         PIC X(18) VALUE SPACES.
   
       01 CAB-03.
           02 FILLER         PIC X(17) VALUE "CODIGO DO CLIENTE".
           02 FILLER         PIC X(08) VALUE SPACES.
           02 FILLER         PIC X(15) VALUE "DADOS INVALIDOS".
           02 FILLER         PIC X(40) VALUE SPACES.

       01 CAB-04.
           02 FILLER         PIC X(80) VALUE ALL "-".
       
       01 CAB-05.
           02 FILLER         PIC X(80) VALUE SPACES.
 
       01 DETALHE.
           02 FILLER         PIC X(08) VALUE SPACES.
           02 CODIGO         PIC XXX   VALUE SPACES.
           02 FILLER         PIC X(14) VALUE SPACES.
           02 MSGINVALIDO    PIC X(30).
           02 FILLER         PIC X(25) VALUE SPACES.

       PROCEDURE DIVISION.
 
       EM02-06.
           PERFORM INICIO.
           PERFORM PRINCIPAL UNTIL FIM-ARQ EQUAL "SIM".
           PERFORM FIM.
           STOP RUN.

       INICIO.
           OPEN INPUT  CADCLI
                OUTPUT CADOK
                OUTPUT RELOCOR.
           PERFORM LEITURA.

       LEITURA.
           READ CADCLI AT END MOVE "SIM" TO FIM-ARQ.

       PRINCIPAL.
           PERFORM VALIDACAO.
           IF CPF-VAL = 1 AND NOME-VAL = 1 AND ESTADO-VAL = 1 AND 
                          CIDADE-VAL = 1 AND EMAIL-VAL = 1
               PERFORM GRAVACAO
           ELSE
               PERFORM IMPRESSAO.
           PERFORM LEITURA.

       VALIDACAO.
           PERFORM VALIDACPF.
           PERFORM VALIDANOME.
           PERFORM VALIDAESTADO.
           PERFORM VALIDACIDADE.
           PERFORM VALIDAEMAIL.

       VALIDACPF.
           PERFORM SOMA1 9 TIMES.
           MOVE 1  TO CTR1.
           MOVE 11 TO CTR2.
           PERFORM SOMA2 10 TIMES.
           MULTIPLY 10 BY CPF-SOMA1.
           DIVIDE 11 INTO CPF-SOMA1 GIVING CPF-DIV1 
                                    REMAINDER CPF-RESTO1.
           MULTIPLY 10 BY CPF-SOMA2.
           DIVIDE 11 INTO CPF-SOMA2 GIVING CPF-DIV2 
                                    REMAINDER CPF-RESTO2.
           IF CPF-RESTO1 IS EQUAL TO CPF-ENT(10) AND CPF-RESTO2 
                                         IS EQUAL TO CPF-ENT(11) THEN
               MOVE 1 TO CPF-VAL
           ELSE
               MOVE 0 TO CPF-VAL.

                    
       SOMA1.
           COMPUTE CPF-SOMA1 = CPF-SOMA1 + CPF-ENT(CTR1) * CTR2.
           ADD 1 TO CTR1.
           SUBTRACT 1 FROM CTR2.
        
       SOMA2.
           COMPUTE CPF-SOMA2 = CPF-SOMA2 + CPF-ENT(CTR1) * CTR2.
           ADD 1 TO CTR1.
           SUBTRACT 1 FROM CTR2. 
                   
       VALIDANOME.
           IF NOME-ENT IS NOT EQUAL TO SPACES
               MOVE 1 TO NOME-VAL
           ELSE
               MOVE 0 TO NOME-VAL.

       VALIDAESTADO.
           IF ESTADO-VALIDO
               MOVE 1 TO ESTADO-VAL
           ELSE
               MOVE 0 TO ESTADO-VAL.

       VALIDACIDADE.
           IF CIDADE-ENT IS NOT EQUAL TO SPACES
               MOVE 1 TO CIDADE-VAL
           ELSE
               MOVE 0 TO CIDADE-VAL.

       VALIDAEMAIL.
           IF EMAIL-ENT IS NOT EQUAL TO SPACES
               MOVE 1 TO EMAIL-VAL
           ELSE
               MOVE 0 TO EMAIL-VAL.           

       GRAVACAO.
           MOVE CPF-ENT1 TO CPF-SAI.
           MOVE NOME-ENT TO NOME-SAI.
           MOVE ESTADO-ENT TO ESTADO-SAI.
           MOVE CIDADE-ENT TO CIDADE-SAI.
           MOVE EMAIL-ENT TO EMAIL-SAI.
           MOVE TELEFONE-ENT TO TELEFONE-SAI.
           WRITE REGOK.

       IMPRESSAO.
           IF CT-LIN IS GREATER THAN 39
               PERFORM CABECALHO.
           PERFORM IMPDET.

       CABECALHO.
           MOVE SPACES TO REL-SAI.
           WRITE REL-SAI AFTER ADVANCING PAGE.
           WRITE REL-SAI FROM CAB-01 AFTER ADVANCING 1 LINE.
           WRITE REL-SAI FROM CAB-02 AFTER ADVANCING 2 LINES.
           WRITE REL-SAI FROM CAB-03 AFTER ADVANCING 2 LINES.
           WRITE REL-SAI FROM CAB-04 AFTER ADVANCING 1 LINE.
           WRITE REL-SAI FROM CAB-04 AFTER ADVANCING 1 LINE.
           MOVE ZEROES TO CT-LIN.

       IMPDET.
           IF CPF-VAL = 0
               MOVE CODIGO-ENT TO CODIGO
               MOVE "CPF INVALIDO" TO MSGINVALIDO
               WRITE REL-SAI FROM DETALHE AFTER ADVANCING 1 LINE.
           IF NOME-VAL = 0
               IF CODIGO IS EQUAL TO SPACES
                   MOVE CODIGO-ENT TO CODIGO
               ELSE
                   MOVE SPACES TO CODIGO
               MOVE "NOME NAO INFORMADO" TO MSGINVALIDO
               WRITE REL-SAI FROM DETALHE AFTER ADVANCING 1 LINE.
           IF ESTADO-VAL = 0
               IF CODIGO IS EQUAL TO SPACES
                   MOVE CODIGO-ENT TO CODIGO
               ELSE
                   MOVE SPACES TO CODIGO
               MOVE "ESTADO INVALIDO" TO MSGINVALIDO
               WRITE REL-SAI FROM DETALHE AFTER ADVANCING 1 LINE.
           IF CIDADE-VAL = 0
               IF CODIGO IS EQUAL TO SPACES
                   MOVE CODIGO-ENT TO CODIGO
               ELSE
                   MOVE SPACES TO CODIGO
               MOVE "CIDADE NAO INFORMADA" TO MSGINVALIDO
               WRITE REL-SAI FROM DETALHE AFTER ADVANCING 1 LINE.
           IF EMAIL-VAL = 0
               IF CODIGO IS EQUAL TO SPACES
                   MOVE CODIGO-ENT TO CODIGO
               ELSE
                   MOVE SPACES TO CODIGO
               MOVE "EMAIL SEM DESCRICAO" TO MSGINVALIDO
               WRITE REL-SAI FROM DETALHE AFTER ADVANCING 1 LINE.
           ADD 1 TO CT-LIN.

       FIM.
           CLOSE CADCLI
                 CADOK
                 RELOCOR.
           
                    
            
             

 










  