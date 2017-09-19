       IDENTIFICATION DIVISION.
       PROGRAM-ID.    EM0305.
       AUTHOR.        FABIO COSTA.
       INSTALLATION.  FATEC-SP.
       DATE-WRITTEN.  11/11/2015.
       DATE-COMPILED. 11/11/2015.
       SECURITY.      NAO MODIFICAR SEM AUTORIZACAO.
      *REMARKS.       GERAR UM RELATORIO CLASSIFICADO EM ORDEM 
      *               ASCENDENTE POR ESTADO E NUMERO DO VENDEDOR.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       OBJECT-COMPUTER.  IBM-PC.
       SOURCE-COMPUTER.  IBM-PC.
       SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ARQVENDA ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT TRAB ASSIGN TO DISK.

           SELECT RELVENDA ASSIGN TO DISK.

       DATA DIVISION.
       FILE SECTION.

       FD ARQVENDA
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "ARQVENDA.DAT".

       01 REG-ENT.
           02 ESTADO-ENT     PIC X(02).
           02 NR-ENT         PIC 9(05).
           02 NOME-ENT       PIC X(20).
           02 VALOR-ENT      PIC 9(07)V99.

       SD TRAB.

       01 REG-TRAB.
           02 ESTADO-TRAB    PIC X(02).
           02 NR-TRAB        PIC 9(05).
           02 NOME-TRAB      PIC X(20).
           02 VALOR-TRAB     PIC 9(07)V99.

       FD RELVENDA
           LABEL RECORD IS OMMITED.

       01 REG-REL            PIC X(80).

       WORKING-STORAGE SECTION.

       77 FIM-ARQ            PIC X(03) VALUE "NAO".
       77 CT-LIN             PIC 9(02) VALUE 20.
       77 CT-PAG             PIC 9(02) VALUE ZEROES.
       77 SET-EST            PIC X(02) VALUE SPACES.
       77 SET-NUM            PIC 9(05) VALUE ZEROES.
       77 TOT-VEND           PIC 9(07)V99 VALUE ZEROES.
       77 TOT-COMP           PIC 9(07)V99 VALUE ZEROES.
       77 TOT-EST            PIC 9(07)V99 VALUE ZEROES.  

       01 CAB-01.
           02 FILLER         PIC X(15) VALUE SPACES.
           02 FILLER         PIC X(35) VALUE 
                             "VENDAS TOTAIS POR ESTADO - VENDEDOR".
           02 FILLER         PIC X(10) VALUE SPACES.
           02 FILLER         PIC X(05) VALUE "PAG. ".
           02 VAR-PAG        PIC Z99.
           02 FILLER         PIC X(12) VALUE SPACES.

       01 CAB-02.
           02 FILLER          PIC X(02) VALUE SPACES.
           02 FILLER          PIC X(08) VALUE "ESTADO: ".
           02 VAR-EST         PIC X(20) VALUE "SAO PAULO".
           02 FILLER          PIC X(50) VALUE SPACES.

       01 CAB-03.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(15) VALUE "NRO DO VENDEDOR".
           02 FILLER         PIC X(08) VALUE SPACES.
           02 FILLER         PIC X(16) VALUE "NOME DO VENDEDOR".
           02 FILLER         PIC X(12) VALUE SPACES.
           02 FILLER         PIC X(14) VALUE "VALOR DA VENDA".
           02 FILLER         PIC X(10) VALUE SPACES.

       01 DETALHE.
           02 FILLER         PIC X(08) VALUE SPACES.
           02 NRO            PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(16) VALUE SPACES.
           02 NOME           PIC X(15) VALUE SPACES.
           02 FILLER         PIC X(13) VALUE SPACES.
           02 VALOR          PIC ZZZZZ99,99.
           02 FILLER         PIC X(14) VALUE SPACES.

       01 TOTAL-01.
           02 FILLER         PIC X(36) VALUE SPACES.
           02 FILLER         PIC X(19) VALUE "TOTAL DO VENDEDOR: ".
           02 TOT-V          PIC ZZZZZ99,99.
           02 FILLER         PIC X(16) VALUE SPACES.

       01 TOTAL-02.
           02 FILLER         PIC X(36) VALUE SPACES.
           02 FILLER         PIC X(20) VALUE "TOTAL DO ESTADO:    ".
           02 TOT-E          PIC ZZZZZ99,99.
           02 FILLER         PIC X(15) VALUE SPACES.

       01 TOTAL-03.
           02 FILLER         PIC X(36) VALUE SPACES.
           02 FILLER         PIC X(20) VALUE "TOTAL DA COMPANHIA: ".
           02 TOT-C          PIC ZZZZZ99,99.
           02 FILLER         PIC X(15) VALUE SPACES.

       PROCEDURE DIVISION.

       EM03-05.
           SORT TRAB
               ASCENDING KEY ESTADO-TRAB
               ASCENDING KEY NR-TRAB
               USING ARQVENDA
               OUTPUT PROCEDURE ROT-SAIDA.
           STOP RUN.

       ROT-SAIDA SECTION.
           PERFORM INICIO.
           PERFORM PRINCIPAL UNTIL FIM-ARQ EQUAL "SIM".
           PERFORM IMP-TOTAL.
           PERFORM FIM.

       INICIO SECTION.
           OPEN OUTPUT RELVENDA.
           PERFORM LEITURA.
           MOVE ESTADO-TRAB TO SET-EST.
           MOVE NR-TRAB TO SET-NUM.
       
       LEITURA SECTION.
           RETURN TRAB AT END MOVE "SIM" TO FIM-ARQ.
           ADD VALOR-TRAB TO TOT-COMP.

       PRINCIPAL SECTION.
           PERFORM IMPRESSAO.
           PERFORM LEITURA.
    
       IMPRESSAO SECTION.
           IF CT-LIN IS GREATER THAN 19
               PERFORM CABECALHO.
           IF ESTADO-TRAB IS EQUAL TO "SP"
               IF NR-TRAB IS EQUAL TO SET-NUM
                   PERFORM IMP-DET
               ELSE
                   PERFORM IMP-TOT-V
                   MOVE ZEROES TO TOT-VEND
                   MOVE NR-TRAB TO SET-NUM
                   PERFORM IMP-DET.
                 

       CABECALHO SECTION.
           ADD 1 TO CT-PAG.
           MOVE CT-PAG TO VAR-PAG.
           MOVE SPACES TO REG-REL.
           WRITE REG-REL AFTER ADVANCING PAGE.
           WRITE REG-REL FROM CAB-01 AFTER ADVANCING 1 LINE.
           WRITE REG-REL FROM CAB-02 AFTER ADVANCING 2 LINES.
           WRITE REG-REL FROM CAB-03 AFTER ADVANCING 2 LINES.
           MOVE ZEROES TO CT-LIN.

       IMP-DET SECTION.
               IF NRO IS EQUAL TO SPACES
                   MOVE NR-TRAB TO NRO
               ELSE
                   MOVE SPACES TO NRO.
               IF NOME IS EQUAL TO SPACES
                   MOVE NOME-TRAB TO NOME
               ELSE
                   MOVE SPACES TO NOME.
               MOVE VALOR-TRAB TO VALOR.
               ADD VALOR-TRAB TO TOT-VEND.
               ADD VALOR-TRAB TO TOT-EST.
               WRITE REG-REL FROM DETALHE AFTER ADVANCING 1 LINE.
               ADD 1 TO CT-LIN.

       IMP-TOTAL SECTION.
           PERFORM IMP-TOT-V.
           MOVE TOT-EST TO TOT-E.
           MOVE TOT-COMP TO TOT-C.
           WRITE REG-REL FROM TOTAL-02 AFTER ADVANCING 2 LINES.
           WRITE REG-REL FROM TOTAL-03 AFTER ADVANCING 2 LINES.

       IMP-TOT-V SECTION.
           MOVE SPACES TO NRO.
           MOVE SPACES TO NOME.
           MOVE TOT-VEND TO TOT-V.
           WRITE REG-REL FROM TOTAL-01 AFTER ADVANCING 2 LINES.

       FIM SECTION.
           CLOSE RELVENDA. 
           
                                  
     
        
             























 