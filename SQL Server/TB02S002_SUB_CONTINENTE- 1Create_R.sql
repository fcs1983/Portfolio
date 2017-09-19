-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- CTB00001- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Criar a tabela dbo.FCS_TB02S002_SUB_CONTINENTE, com as colunas:
--
-- codigo               numeric  (3,0)     Not Null PK CL  C�digo do subcontinente
-- nome                 varchar  (50)          Null        Nome do subcontinente
-- cod_continente       numeric  (3,0)     Not Null        C�digo do continente
-- ext_km2              numeric  (11, 3)       Null        Extens�o territorial,
--                                                         em quil�metros quadrados
-- obs                  varchar  (72)          Null        Coment�rio (Observa��o)
--
-- Aten��o:
-- Declarar a Chave Prim�ria (Primary Key, ou Identificador �nico, ou apenas PK) atrav�s de
-- um constraint de nome PK_FCS_TB02S002_SUB_CONTINENTE.
--
-- Apesar  de o default da  PK ser Clustered,  pede-se para declarar que a Primary Key ser�
-- Clustered.
--
-- O �ndice Prim�rio deve ser ordenado de modo ascendente.
--
-- O �ndice Prim�rio deve ter um  Fill Factor de 10% (dez por cento).
--
-- Definir  um constraint  de  nome  CK_FCS_TB02S002_SUB_CONTINENTE_CODIGO  para  a  coluna
-- CODIGO, a qual deve admitir os seguintes valores:
-- 10, 11, 12, 20, 21, 22, 23, 30, 31, 32, 33, 34, 35, 36, 37, 40, 41, 42, 50, 51, 52, 53,
-- 54, 60, 70, 80.
-- Replicar tamb�m o c�digo dos continentes para os subcontinentes, para validar os subcon-
-- tinentes cujo c�digo de subcontinente n�o � conhecido.
--
-- Definir um constraint de nome CK_FCS_TB02S002_SUB_CONTINENTE_COD_CONTINENTE para a colu-
-- na COD_CONTINENTE, a qual deve admitir valores entre 1 e 8.
--
-- Definir um constraint de nome FK_FCS_TB02S002_SUB_CONTINENTE_COD_CONTINENTE para a colu-
-- na COD_CONTINENTE, que � a chave estrangeira.
-- Ela referencia a coluna CODIGO da tabela dbo.FCS_TB01S005_CONTINENTE.
-- Para esta chave estrangeira, definir a regra de Delete Cascade e Update Cascade.
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
   where id = object_id(N'dbo.FCS_TB02S002_SUB_CONTINENTE')
   and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE dbo.FCS_TB02S002_SUB_CONTINENTE;
*/
-- ----------------------------------------------------------------------------------------
-- Drop Table no SQL Server 2008
-- ----------------------------------------------------------------------------------------
--
If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_FCS_TB02S002_SUB_CONTINENTE') 
     and parent_object_id = OBJECT_ID(N'dbo.FCS_TB02S002_SUB_CONTINENTE'))
   ALTER TABLE  dbo.FCS_TB02S002_SUB_CONTINENTE
      DROP CONSTRAINT CK_FCS_TB02S002_SUB_CONTINENTE;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.FCS_TB02S002_SUB_CONTINENTE') 
      and type in (N'U'))
   DROP TABLE dbo.FCS_TB02S002_SUB_CONTINENTE;
--
-- ----------------------------------------------------------------------------------------
-- Cria��o da tabela.
-- ----------------------------------------------------------------------------------------
--
CREATE TABLE dbo.FCS_TB02S002_SUB_CONTINENTE (
  codigo          numeric (3, 0)  NOT NULL ,
  nome            varchar (50)        NULL ,
  cod_continente  numeric (3, 0)  NOT NULL ,
  ext_km2         numeric (11,3)      NULL ,
  obs             varchar (72)        NULL ,
  CONSTRAINT PK_FCS_TB02S002_SUB_CONTINENTE PRIMARY KEY CLUSTERED 
    (codigo  asc)
    WITH
     FILLFACTOR = 10,
  CONSTRAINT CK_FCS_TB02S002_SUB_CONTINENTE_codigo CHECK
    (codigo in (10, 11, 12, 20, 21, 22, 23, 30, 31, 32, 33, 34, 35, 36, 37, 40, 41,
                42, 50, 51, 52, 53, 54, 60, 70, 80)),
  CONSTRAINT CK_FCS_TB02S002_SUB_CONTINENTE_cod_continente CHECK
    (cod_continente between 1 and 8),
  CONSTRAINT FK_FCS_TB02S002_SUB_CONTINENTE_cod_continente FOREIGN KEY (cod_continente)
    References FCS_TB01S005_CONTINENTE (codigo)
    On Delete Cascade
    On Update Cascade
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
-- Foram definidas regras de valida��o (Constraints) para os dados a serem inseridos. O in-
-- tuito � evitar a inser��o de um dado inv�lido na tabela.
--
-- No SQLServer da Microsoft, o uso de  !=  equivale a  NOT =  ou ainda a  NOT EQUAL TO.
--
-- As regras de valida��o (Constraints) para os dados inseridos  evitam a inser��o de dados
-- inv�lidos. � uma consist�ncia de dados.
--
-- A coluna  COD_CONTINENTE � a Chave Estrangeira (FK) desta tabela porque � o atributo que
-- referencia a chave prim�ria da tabela  FCS_TB01S005_CONTINENTE (que � o CODIGO).
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
