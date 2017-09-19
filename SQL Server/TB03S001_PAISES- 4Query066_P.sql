-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY066- dbo.GIS_TB03S001_PAISES
--
-- Selecionar todos os pa�ses da tabela dbo.GIS_TB03S001_PAISES, explicitando as colunas no
-- comando e colocando label nestas colunas, para que o usu�rio possa melhor entender o re-
-- lat�rio gerado.
-- Aten��o: Colocar o nome do continente ao lado do c�digo do continente.
-- Aten��o: Usar Join Natural (Natural Join).
--

USE BD_T_G01;

Select P1.codigo                AS 'C�digo'                   ,
	   P1.nome                  AS 'Nome'                     ,
	   P1.descri��o             AS 'Descri��o'                ,
	   P1.sigla2                AS 'Sigla 1'                  , 
	   P1.sigla3                AS 'Sigla 2'                  , 
	   P1.sigla3a               AS 'Sigla 3'                  ,   
	   P1.cod_ddi               AS 'Codigo DDI'               ,
	   P1.cod_continente        AS 'C�digo de Continente'     ,
	   C1.nome                  AS 'Nome do Continente'       ,
	   P1.cod_subcontinente     AS 'C�digo de Subcontinente'  , 
	   P1.ext_km2               AS 'Exten��o (Km2)'           ,
	   P1.obs                   AS 'Observa��es'              ,
From dbo.FCS_TB03S001_PAISES       P1, 
	 dbo.FCS_TB03S001_CONTINENTES  C1
Where P1.cod_continente = C1.codigo;

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
