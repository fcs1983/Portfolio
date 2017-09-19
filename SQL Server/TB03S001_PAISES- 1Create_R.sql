-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- CTB00001- dbo.GIS_TB03S001_PAISES
--
-- Criar a tabela dbo.GIS_TB03S001_PAISES, com as colunas:
--
-- codigo                numeric  (3, 0)  Not Null PK CL  Código do país
-- nome                  varchar  (50)        Null        Nome do país
-- descrição             varchar  (75)        Null        Descrição do país
-- sigla2                varchar  (2)         Null        Sigla do país (2 pos.)
-- sigla3                varchar  (3)         Null        Sigla do país (3 pos.- ISO)
-- sigla3a               varchar  (3)         Null        Sigla do país (3 pos.- ISO)
-- cod_ddi               numeric  (4, 0)      Null        Código DDI do país
-- cod_continente        numeric  (3, 0)  Not Null        Código do Continente
-- cod_subcontinente     numeric  (3, 0)  Not Null        Código do Subcontinente
-- ext_km2               numeric  (11, 3)     Null        Extensão territorial,
--                                                        em quilômetros quadrados
-- obs                   varchar  (72)        Null        Comentário (Observação)
--
-- Atenção:
-- Declarar a Chave Primária (Primary Key, ou Identificador Único, ou apenas PK) através de
-- um constraint de nome PK_GIS_TB03S001_PAISES.
--
-- Apesar de o  default da  PK ser Clustered, pede-se para declarar que a Primary Key  será
-- Clustered.
--
-- O Índice Primário deve ser ordenado de modo ascendente.
--
-- O Índice Primário deve ter um  Fill Factor de 10% (dez por cento).
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
-- qual  não deve admitir preenchimento com espaços em branco  e nem deve ter nenhum espaço
-- no seu preenchimento.
--
-- Definir  um constraint de  nome CK_GIS_TB03S001_PAISES_SIGLA3  para a  coluna SIGLA3,  a
-- qual não deve admitir preenchimento  com espaços em branco  e nem deve ter nenhum espaço
-- no seu preenchimento.
--
-- Definir  um constraint de nome  CK_GIS_TB03S001_PAISES_SIGLA3a  para a coluna SIGLA3a, a
-- qual não deve admitir preenchimento com espaços em branco e nem deve ter nenhum espa-
-- ço no seu preenchimento.
--
-- Definir  um  constraint de  nome  FK_GIS_TB03S001_PAISES_COD_CONTINENTE  para  a  coluna
-- COD_CONTINENTE, que é a chave estrangeira (Foreign Key ou FK).
-- Ela referencia a coluna CODIGO da tabela dbo.GIS_TB01S005_CONTINENTE.
--
-- Definir  um  constraint de  nome  FK_GIS_TB03S001_PAISES_COD_SUBCONTINENTE para a coluna
-- COD_SUBCONTINENTE, que é a chave estrangeira (Foreign Key ou FK).
-- Ela referencia a coluna CODIGO da tabela dbo.GIS_TB02S002_SUB_CONTINENTE.
--
-- ----------------------------------------------------------------------------------------
-- Atenção. Indicação do BD a ser usado. Se for o caso, mude o nome do Banco.
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
-- Criação da tabela.
-- ----------------------------------------------------------------------------------------
--
CREATE TABLE dbo.FCS_TB03S001_PAISES (
  codigo            numeric (3, 0)  NOT NULL ,
  nome              varchar (50)        NULL ,
  descrição         varchar (75)        NULL ,
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
-- Comentários.
-- ----------------------------------------------------------------------------------------
--
-- dbo significa "Data Base Owner" e é uma autoridade. Não faz parte do nome da tabela.
-- Esta autoridade funciona como um grupo e pode reunir vários usuários.
--
-- A tabela foi criada com chave primária (PK).
--
-- A definição de uma chave primária (PK) força a criação (pelo SGBD)  de um  Índice Primá-
-- rio, o qual irá impedir a existência de valores duplicados para a coluna que é usada co-
-- mo chave primária (PK).
--
-- A opção CLUSTERED mantida na definição da chave primária (PK)  indica ao SGBD  que  esta
-- coluna (a PK) é uma chave de ordenação, ou seja, a tabela  é ordenada fisicamente  atra-
-- vés desta coluna.
--
-- A opção FILL FACTOR que aparece na definição da chave primária (Primary key ou PK) esta-
-- belece a porcentagem do  espaço deixado vazio  dentro da unidade  de alocação do  Índice
-- Primário (neste caso, 10% da unidade de alocação ficam vazios).
--
-- As regras de validação (Constraints) para os dados inseridos evitam a inserção de dados
-- inválidos. É uma consistência de dados.
--
-- As regras de validação (Constraints) para os dados inseridos  evitam a inserção de dados
-- inválidos. É uma consistência de dados.
--
-- A coluna  COD_CONTINENTE  é a Chave Estrangeira (FK)  desta tabela porque é o  atributo
-- que referencia a chave primária da tabela  GIS_TB01S005_CONTINENTE (que é o CODIGO).
--
-- A coluna  COD_SUBCONTINENTE  é a Chave Estrangeira (FK)  desta tabela porque é o  atri-
-- buto que referencia a chave primária da tabela GIS_TB02S002_SUB_CONTINENTE (que é o CO-
-- DIGO).
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
