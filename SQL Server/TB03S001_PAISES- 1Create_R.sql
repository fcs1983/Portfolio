-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- CTB00001- dbo.GIS_TB03S001_PAISES
--
-- Criar a tabela dbo.GIS_TB03S001_PAISES, com as colunas:
--
-- codigo                numeric  (3, 0)  Not Null PK CL  C�digo do pa�s
-- nome                  varchar  (50)        Null        Nome do pa�s
-- descri��o             varchar  (75)        Null        Descri��o do pa�s
-- sigla2                varchar  (2)         Null        Sigla do pa�s (2 pos.)
-- sigla3                varchar  (3)         Null        Sigla do pa�s (3 pos.- ISO)
-- sigla3a               varchar  (3)         Null        Sigla do pa�s (3 pos.- ISO)
-- cod_ddi               numeric  (4, 0)      Null        C�digo DDI do pa�s
-- cod_continente        numeric  (3, 0)  Not Null        C�digo do Continente
-- cod_subcontinente     numeric  (3, 0)  Not Null        C�digo do Subcontinente
-- ext_km2               numeric  (11, 3)     Null        Extens�o territorial,
--                                                        em quil�metros quadrados
-- obs                   varchar  (72)        Null        Coment�rio (Observa��o)
--
-- Aten��o:
-- Declarar a Chave Prim�ria (Primary Key, ou Identificador �nico, ou apenas PK) atrav�s de
-- um constraint de nome PK_GIS_TB03S001_PAISES.
--
-- Apesar de o  default da  PK ser Clustered, pede-se para declarar que a Primary Key  ser�
-- Clustered.
--
-- O �ndice Prim�rio deve ser ordenado de modo ascendente.
--
-- O �ndice Prim�rio deve ter um  Fill Factor de 10% (dez por cento).
--
-- Definir um constraint de nome CK_GIS_TB03S001_PAISES_CODIGO para a coluna CODIGO, a qual
-- deve admitir valores entre 1 e 250.
--
-- Definir um  constraint  de  nome  CK_GIS_TB03S001_PAISES_COD_CONTINENTE  para  a  coluna
-- COD_CONTINENTE, a qual deve admitir valores entre  1 e 8.
--
-- Definir  um  constraint  de nome CK_GIS_TB03S001_PAISES_COD_SUBCONTINENTE para  a coluna
-- COD_SUBCONTINENTE, a qual deve admitir os seguintes valores:
-- 11, 12, 21, 22, 23, 31, 32, 33, 34, 35, 36, 37, 41, 42, 51, 52, 53, 54.
--
-- Definir um constraint de nome CK_GIS_TB03S001_PAISES_COD_DDI para  a  coluna COD_DDI,  a
-- qual deve admitir valores maiores do que 0 (zero).
--
-- Definir um constraint  de nome  CK_GIS_TB03S001_PAISES_SIGLA2  para a  coluna SIGLA2,  a
-- qual  n�o deve admitir preenchimento com espa�os em branco  e nem deve ter nenhum espa�o
-- no seu preenchimento.
--
-- Definir  um constraint de  nome CK_GIS_TB03S001_PAISES_SIGLA3  para a  coluna SIGLA3,  a
-- qual n�o deve admitir preenchimento  com espa�os em branco  e nem deve ter nenhum espa�o
-- no seu preenchimento.
--
-- Definir  um constraint de nome  CK_GIS_TB03S001_PAISES_SIGLA3a  para a coluna SIGLA3a, a
-- qual n�o deve admitir preenchimento com espa�os em branco e nem deve ter nenhum espa-
-- �o no seu preenchimento.
--
-- Definir  um  constraint de  nome  FK_GIS_TB03S001_PAISES_COD_CONTINENTE  para  a  coluna
-- COD_CONTINENTE, que � a chave estrangeira (Foreign Key ou FK).
-- Ela referencia a coluna CODIGO da tabela dbo.GIS_TB01S005_CONTINENTE.
--
-- Definir  um  constraint de  nome  FK_GIS_TB03S001_PAISES_COD_SUBCONTINENTE para a coluna
-- COD_SUBCONTINENTE, que � a chave estrangeira (Foreign Key ou FK).
-- Ela referencia a coluna CODIGO da tabela dbo.GIS_TB02S002_SUB_CONTINENTE.
--
-- ----------------------------------------------------------------------------------------
-- Aten��o. Indica��o do BD a ser usado. Se for o caso, mude o nome do Banco.
-- ----------------------------------------------------------------------------------------
--
USE BD_T_G01;
--
-- ----------------------------------------------------------------------------------------
-- Drop Table no SQL Server 2000
-- ----------------------------------------------------------------------------------------
--
/*
if exists
 (select *
   from dbo.sysobjects
   where id = object_id(N'dbo.GIS_TB03S001_PAISES')
   and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE dbo.GIS_TB03S001_PAISES;
*/
-- ----------------------------------------------------------------------------------------
-- Drop Table no SQL Server 2008
-- ----------------------------------------------------------------------------------------
--
If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_FCS_TB03S001_PAISES') 
     and parent_object_id = OBJECT_ID(N'dbo.FCS_TB03S001_PAISES'))
   ALTER TABLE  dbo.FCS_TB03S001_PAISES
      DROP CONSTRAINT CK_FCS_TB03S001_PAISES;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.FCS_TB03S001_PAISES') 
      and type in (N'U'))
   DROP TABLE dbo.FCS_TB03S001_PAISES;
--
-- ----------------------------------------------------------------------------------------
-- Cria��o da tabela.
-- ----------------------------------------------------------------------------------------
--
CREATE TABLE dbo.FCS_TB03S001_PAISES (
  codigo            numeric (3, 0)  NOT NULL ,
  nome              varchar (50)        NULL ,
  descri��o         varchar (75)        NULL ,
  sigla2            char    (2)         NULL ,
  sigla3            char    (3)         NULL ,
  sigla3a           char    (3)         NULL ,
  cod_ddi           numeric (4, 0)      NULL ,
  cod_continente    numeric (3, 0)  NOT NULL ,
  cod_subcontinente numeric (3, 0)  NOT NULL ,
  ext_km2           numeric (11, 3)     NULL ,
  obs               varchar (72)        NULL ,
  CONSTRAINT PK_FCS_TB03S001_PAISES PRIMARY KEY CLUSTERED 
   (codigo  asc)
   WITH
    FILLFACTOR = 10,
  CONSTRAINT CK_FCS_TB03S001_PAISES_codigo CHECK
   (codigo between 1 and 250),
  CONSTRAINT CK_FCS_TB03S001_PAISES_cod_continente CHECK
   (cod_continente between 1 and 8),
  CONSTRAINT CK_FCS_TB03S001_PAISES_cod_subcontinente CHECK
   (cod_subcontinente in (10, 11, 12, 21, 22, 23, 30, 31, 32, 33, 34, 35, 36, 37,
                 40, 41, 42, 50, 51, 52, 53, 54, 60, 70, 80)),
  CONSTRAINT CK_FCS_TB03S001_PAISES_cod_ddi CHECK
   (cod_ddi > 0),
  CONSTRAINT CK_FCS_TB03S001_PAISES_sigla3 CHECK
   (sigla3 != ' ' and
    sigla3 not like '% %'),
  CONSTRAINT CK_FCS_TB03S001_PAISES_sigla3a CHECK
   (sigla3a != ' ' and
    sigla3a not like '% %'),
  CONSTRAINT FK_FCS_TB03S001_PAISES_cod_continente FOREIGN KEY (cod_continente)
   References dbo.FCS_TB01S005_CONTINENTE (codigo),
  CONSTRAINT FK_FCS_TB03S001_PAISES_cod_subcontinente FOREIGN KEY (cod_subcontinente)
   References dbo.FCS_TB02S002_SUB_CONTINENTE (codigo)
);
--
-- ----------------------------------------------------------------------------------------
-- Coment�rios.
-- ----------------------------------------------------------------------------------------
--
-- dbo significa "Data Base Owner" e � uma autoridade. N�o faz parte do nome da tabela.
-- Esta autoridade funciona como um grupo e pode reunir v�rios usu�rios.
--
-- A tabela foi criada com chave prim�ria (PK).
--
-- A defini��o de uma chave prim�ria (PK) for�a a cria��o (pelo SGBD)  de um  �ndice Prim�-
-- rio, o qual ir� impedir a exist�ncia de valores duplicados para a coluna que � usada co-
-- mo chave prim�ria (PK).
--
-- A op��o CLUSTERED mantida na defini��o da chave prim�ria (PK)  indica ao SGBD  que  esta
-- coluna (a PK) � uma chave de ordena��o, ou seja, a tabela  � ordenada fisicamente  atra-
-- v�s desta coluna.
--
-- A op��o FILL FACTOR que aparece na defini��o da chave prim�ria (Primary key ou PK) esta-
-- belece a porcentagem do  espa�o deixado vazio  dentro da unidade  de aloca��o do  �ndice
-- Prim�rio (neste caso, 10% da unidade de aloca��o ficam vazios).
--
-- As regras de valida��o (Constraints) para os dados inseridos evitam a inser��o de dados
-- inv�lidos. � uma consist�ncia de dados.
--
-- As regras de valida��o (Constraints) para os dados inseridos  evitam a inser��o de dados
-- inv�lidos. � uma consist�ncia de dados.
--
-- A coluna  COD_CONTINENTE  � a Chave Estrangeira (FK)  desta tabela porque � o  atributo
-- que referencia a chave prim�ria da tabela  GIS_TB01S005_CONTINENTE (que � o CODIGO).
--
-- A coluna  COD_SUBCONTINENTE  � a Chave Estrangeira (FK)  desta tabela porque � o  atri-
-- buto que referencia a chave prim�ria da tabela GIS_TB02S002_SUB_CONTINENTE (que � o CO-
-- DIGO).
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
