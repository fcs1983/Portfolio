       IDENTIFICATION DIVISION.
       PROGRAM-ID.    EM0306.
       AUTHOR.        FABIO COSTA.
       INSTALLATION.  FATEC-SP.
       DATE-WRITTEN.  11/11/2015.
       DATE-COMPILED. 11/11/2015.
       SECURITY.      NAO MODIFICAR SEM AUTORIZACAO.
      *REMARKS.       LER CADVEND E IMPRIMIR RELATORIO CONFORME
      *               LAYOUT.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       OBJECT-COMPUTER.  IBM-PC.
       SOURCE-COMPUTER.  IBM-PC.
       SPECIAL-NAMES.    DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           
           SELECT CADVEND ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENCIAL.

           SELECT TRAB ASSIGN TO DISK.

           SELECT REL-PAG ASSIGN TO DISK.

       DATA DIVISION.
       FILE SECTION.
  
       FD CADVEND
           LABEL RECORD ARE STANDARD
           VALUE OF FILE-ID IS "CADVEND.DAT".

       01 REG-ENT.
           02 DEPT-ENT       PIC X.
           02 SEC-ENT        PIC X.
           02 COD-ENT        PIC 9(05).
           02 NOME-ENT       PIC X(20).
           02 VENDAS-ENT     PIC 9(07)V99.
           02 FIXO-ENT       PIC 9(07)V99.
           02 DESC-ENT       PIC 9(05)V99.

       SD TRAB.
   
       01 REG-TRAB.
           02 DEPT-TRAB      PIC X.
           02 SEC-TRAB       PIC X.
           02 COD-TRAB       PIC 9(05).
           02 NOME-TRAB      PIC X(02).
           02 VENDAS-TRAB    PIC 9(07)V99.
           02 FIXO-TRAB      PIC 9(07)V99.
           02 DESC-TRAB      PIC 9(05)V99.

       FD REL-PAG
           LABEL RECORT IS OMMITED.

       01 REG-REL            PIC X(80).

       WORKING-STORAGE SECTION.

       77 FIM-ARQ            PIC X(03) VALUE "NAO".
       77 CT-LIN             PIC 9(02) VALUE 40.
       77 CT-PAG             PIC 9(02) VALUE ZEROES.

     
       01 CAB-01.
           02 FILLER         PIC X(25) VALUE SPACES.
           02 FILLER         PIC X(22) VALUE "RELATORIO DE PAGAMENTO".
           02 FILLER         PIC X(15) VALUE SPACES.
           02 FILLER         PIC X(05) VALUE "PAG. ".
           02 VAR-PAG        PIC ZZ9.
           02 FILLER         PIC X(10) VALUE SPACES.

       01 CAB-02.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(14) VALUE "DEPARTAMENTO: ".
           02 VAR-DEPT       PIC X.
           02 FILLER         PIC X(60) VALUE SPACES.
 
       01 CAB-03.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(14) VALUE "SECAO:        ".
           02 VAR-SEC        PIC X.
           02 FILLER         PIC X(60) VALUE SPACES.
 
       01 CAB-04.
           02 FILLER         PIC X(06) VALUE "CODIGO".
           02 FILLER         PIC X(04) VALUE SPACES.
           02 FILLER         PIC X(04) VALUE "NOME".
           02 FILLER         PIC X(06) VALUE "SPACES.
           02 FILLER         PIC X(08) VALUE "SAL.FIXO".
           02 FILLER         PIC X(04) VALUE SPACES.
           02 FILLER         PIC X(08) VALUE "COMISSAO".
           02 FILLER         PIC X(04) VALUE SPACES.
           02 FILLER         PIC X(09) VALUE "SAL.BRUTO".
           02 FILLER         PIC X(04) VALUE SPACES.
           02 FILLER         PIC X(08) VALUE "DESCONTO".
           02 FILLER         PIC X(04) VALUE SPACES.
           02 FILLER         PIC X(11) VALUE "SAL.LIQUIDO".

       01 DETALHE.
           02 FILLER         PIC X(02) VALUE SPACES.
           02 CODIGO         PIC 9(05).
           02 FILLER         PIC X(03) VALUE SPACES.
           02 NOME           PIC X(10).
           02 FILLER         PIC X(03) VALUE SPACES.
           02 FIXO           PIC 9(07),99.
           02 FILLER         PIC X(03) VALUE SPACES.
           02 COMISSAO       PIC 9(07),99.
           02 FILLER         PIC X(03) VALUE SPACES.
           02 BRUTO          PIC 9(07),99.
           02 FILLER         PIC X(03) VALUE SPACES.
           02 DESCONTO       PIC 9(07),99.
           02 FILLER         PIC X(03) VALUE SPACES.
           02 LIQUIDO        PIC 9(07),99.
           02 FILLER         PIC X(02) VALUE SPACES.

       01 TOTAL-01.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(28) VALUE 
                                 "TOTAL DE SALARIOS DA SECAO: ".
           02 TOTAL-SECAO    PIC ZZZZZ9999,99.
           02 FILLER         PIC X(36) VALUE SPACES.

       01 TOTAL-02.
           02 FILLER         PIC X(05) VALUE SPACES.
           02 FILLER         PIC X(35) VALUE 
                                 "TOTAL DE SALARIOS DO DEPARTAMENTO: ".
           02 TOTAL-DEPTO    PIC ZZZZZZZ9999,99.
           02 FILLER         PIC X(27) VALUE SPACES.
       
       PROCEDURE DIVISION.

           EM03-06.
               SORT TRAB
                   ASCENDING KEY DEPT-TRAB
                   ASCENDING KEY SEC-TRAB
                   USIND CADVEND
                   OUTPUT PROCEDURE ROT-SAIDA.
               STOP RUN.

       ROT-SAIDA SECTION.
           PERFORM INICIO.
           PERFORM PRINCIPAL UNTIL FIM-ARQ EQUAL "SIM".
            
      
               
          
           
    


















       