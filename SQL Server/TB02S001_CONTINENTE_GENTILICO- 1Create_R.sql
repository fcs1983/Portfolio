-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- CTB00001- dbo.FCS_TB02S001_CONTINENTE_GENTILICO
--
-- Criar a tabela dbo.FCS_TB02S001_CONTINENTE_GENTILICO, com as colunas:
--
-- cod_continente     numeric (3, 0)  Not Null  PK CL  C�digo do continente
-- sexo               char    (1)     Not Null  PK CL  Sexo
-- seq                numeric (2, 0)  Not Null  PK CL  Sequ�ncia do gent�lico,
--                                                     para o mesmo sexo
-- gentilico          varchar (45)        Null         Gent�lico
-- obs                varchar (72)        Null         Coment�rio (Observa��o)
--
-- Aten��o:
-- Declarar a Chave Prim�ria (Primary Key, ou Identificador �nico, ou apenas PK) atrav�s de
-- um constraint de nome PK_FCS_TB02S001_CONTINENTE_GENTILICO.
--
-- Apesar de o  default da  PK ser Clustered, pede-se para declarar que a Primary Key  ser�
-- Clustered.
--
-- O �ndice Prim�rio deve ser ordenado de modo ascendente.
--
-- O �ndice Prim�rio deve ter um  Fill Factor de 10% (dez por cento).
--
-- Definir um constraint de nome CK_FCS_TB02S001_CONTINENTE_GENTILICO_cod_continente para a
-- coluna COD_CONTINENTE, a qual deve admitir valores entre 1 e 8 (inclusive).
--
-- Definir um constraint  de nome  CK_FCS_TB02S001_CONTINENTE_GENTILICO_sexo  para a coluna
-- SEXO, a qual deve admitir os valores: F, M.
-- Os valores podem ser mai�sculos ou min�sculos.
--
-- Definir um constraint de nome CK_FCS_TB02S001_CONTINENTE_GENTILICO_seq para a coluna SEQ,
-- a qual deve admitir valores maiores do que 0 (zero).
--
-- Definir um constraint de nome FK_FCS_TB02S001_CONTINENTE_GENTILICO_cod_continente para a
-- coluna COD_CONTINENTE, que � a chave estrangeira.
-- Ela referencia a coluna CODIGO da tabela dbo.FCS_TB01S005_CONTINENTE.
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
   Where object_id  =  OBJECT_ID(N'dbo.CK_FCS_TB02S001_CONTINENTE_GENTILICO') 
     and parent_object_id = OBJECT_ID(N'dbo.FCS_TB02S001_CONTINENTE_GENTILICO'))
   ALTER TABLE  dbo.FCS_TB02S001_CONTINENTE_GENTILICO
      DROP CONSTRAINT CK_FCS_TB02S001_CONTINENTE_GENTILICO;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.FCS_TB02S001_CONTINENTE_GENTILICO') 
      and type in (N'U'))
   DROP TABLE dbo.FCS_TB02S001_CONTINENTE_GENTILICO;
--
-- ----------------------------------------------------------------------------------------
-- Cria��o da tabela.
-- ----------------------------------------------------------------------------------------
--
CREATE TABLE dbo.FCS_TB02S001_CONTINENTE_GENTILICO
  (
  cod_continente   numeric (3, 0) NOT NULL ,
  sexo             char    (1)    NOT NULL ,
  seq              numeric (2, 0) NOT NULL ,
  gentilico        varchar (45)       NULL ,
  obs              varchar (72)       NULL ,
  Constraint PK_FCS_TB02S001_CONTINENTE_GENTILICO Primary Key Clustered
   (cod_continente asc, sexo asc, seq asc)
   WITH
    FILLFACTOR = 10,
  CONSTRAINT CK_FCS_TB02S001_CONTINENTE_GENTILICO_cod_continente CHECK
   (cod_continente between 1 and 8),
  CONSTRAINT CK_FCS_TB02S001_CONTINENTE_GENTILICO_sexo CHECK
   (sexo in ('f', 'm', 'F', 'M')),
  CONSTRAINT CK_FCS_TB02S001_CONTINENTE_GENTILICO_seq CHECK
   (seq > 0),
  CONSTRAINT FK_FCS_TB02S001_CONTINENTE_GENTILICO_cod_continente FOREIGN KEY (cod_continente)
   References dbo.FCS_TB01S005_CONTINENTE (codigo)
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

