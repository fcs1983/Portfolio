-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- CTB00001- dbo.FCS_TB01S005_CONTINENTE
--
-- Criar a tabela dbo.FCS_TB01S005_CONTINENTE, com as colunas:
--
-- codigo           numeric  (3,0)    Not Null PK CL  C�digo do continente
-- nome             varchar  (50)         Null        Nome do continente
-- sigla            char     (3)          Null        Sigla do continente
-- ext_km2          numeric  (11, 3)      Null        Extens�o territorial,
--                                                    em quil�metros quadrados
-- obs              varchar  (72)         Null        Coment�rio (Observa��o)
-- data_atual       datetime              Null        Data e Hora da inser��o de registro
--                                                    na tabela
--                                                    (� a data atual, vinda do sistema)
--
-- Aten��o:
-- Ao definir a coluna DATA_ATUAL, informar que o seu valor default ser� a  obten��o da da-
-- ta corrente (Lembrando que a data corrente � obtida atrav�s da fun��o getdate).
--
-- Declarar a Chave Prim�ria (Primary Key, ou Identificador �nico, ou apenas PK) atrav�s de
-- um constraint de nome PK_FCS_TB01S005_CONTINENTE.
--
-- Apesar de o  default da  PK ser Clustered, pede-se para declarar que a Primary Key  ser�
-- Clustered.
--
-- O �ndice Prim�rio deve ser ordenado de modo ascendente.
--
-- O �ndice Prim�rio deve ter um  Fill Factor de 1% (um por cento).
--
-- Definir um constraint de nome CK_FCS_TB01S005_CONTINENTE_CODIGO para a coluna CODIGO,  a
-- a qual deve admitir valores entre 1 e 8.
-- Cabe observar que s� temos 7 continentes, mas vamos criar um continente adicional.
--
-- Definir um constraint de nome  CK_FCS_TB01S005_CONTINENTE_SIGLA  para a coluna SIGLA,  a
-- qual n�o deve admitir preenchimento com espa�os em branco e  nem deve ter nenhum  espa�o
-- no seu preenchimento.
--
-- ----------------------------------------------------------------------------------------
-- Aten��o. Indica��o do BD a ser usado. Se for o caso, mude o nome do Banco.
-- ----------------------------------------------------------------------------------------
--
USE BD_T_G01;
--
-- ----------------------------------------------------------------------------------------
-- Drop Table no SQL Server 2008
-- ----------------------------------------------------------------------------------------
--
If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_FCS_TB01S005_CONTINENTE') 
     and parent_object_id = OBJECT_ID(N'dbo.FCS_TB01S005_CONTINENTE'))
   ALTER TABLE  dbo.FCS_TB01S005_CONTINENTE
      DROP CONSTRAINT CK_FCS_TB01S005_CONTINENTE;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.FCS_TB01S005_CONTINENTE') 
      and type in (N'U'))
   DROP TABLE dbo.FCS_TB01S005_CONTINENTE;
--
-- ----------------------------------------------------------------------------------------
-- Cria��o da tabela.
-- ----------------------------------------------------------------------------------------
--
CREATE TABLE dbo.FCS_TB01S005_CONTINENTE (
  codigo       numeric  (3, 0)  NOT NULL ,
  nome         varchar  (50)        NULL ,
  sigla        char     (3)         NULL ,
  ext_km2      numeric  (11, 3)     NULL ,
  obs          varchar  (72)        NULL ,
  data_atual   datetime             NULL ,
  CONSTRAINT PK_FCS_TB01S005_CONTINENTE PRIMARY KEY CLUSTERED (codigo  asc)
   WITH
    FILLFACTOR = 1,
  CONSTRAINT CK_FCS_TB01S005_CONTINENTE_codigo CHECK
   (codigo between 1 and 8),
  CONSTRAINT CK_FCS_TB01S005_CONTINENTE_sigla CHECK
   (sigla != ' ' and
    sigla not like '% %')
);
--
SELECT * From dbo.FCS_TB01S005_CONTINENTE

-- ----------------------------------------------------------------------------------------
-- Coment�rios.
-- ----------------------------------------------------------------------------------------
--
-- dbo significa "Data Base Owner" e � uma autoridade. N�o faz parte do nome da tabela.
-- Esta autoridade funciona como um grupo e pode reunir v�rios usu�rios.
--
-- A tabela foi criada com chave prim�ria (PK).
--
-- A op��o CLUSTERED mantida na defini��o da chave prim�ria (PK)  indica ao SGBD  que  esta
-- coluna (a PK) � uma chave de ordena��o, ou seja, a tabela  � ordenada fisicamente  atra-
-- v�s desta coluna.
--
-- A defini��o de uma chave prim�ria (PK) for�a a cria��o (pelo SGBD)  de um  �ndice Prim�-
-- rio, o qual ir� impedir a exist�ncia de valores duplicados para a coluna que � usada co-
-- mo chave prim�ria (PK).
--
-- Al�m disso, foram definidas regras de valida��o (Constraints) para os dados  a serem in-
-- seridos. O intuito � evitar a inser��o de um dado inv�lido na tabela.
--
-- No SQLServer da Microsoft, o uso de  !=  equivale a  NOT =  ou ainda a  NOT EQUAL TO.
--
-- A op��o FILL FACTOR que aparece na defini��o da chave prim�ria (Primary key ou PK) esta-
-- belece a porcentagem do  espa�o deixado vazio  dentro da unidade  de aloca��o do  �ndice
-- Prim�rio (neste caso, 10% da unidade de aloca��o ficam vazios).
--
-- No comando Create Table � poss�vel definir o valor default para uma coluna.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
