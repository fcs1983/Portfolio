-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY006- dbo.GIS_TB03S001_PAISES
--
-- Selecionar todos os pa�ses da tabela dbo.GIS_TB03S001_PAISES, explicitando as colunas no
-- comando e colocando label nestas colunas, para que o usu�rio possa melhor entender o re-
-- lat�rio gerado.
-- Aten��o: Ordenar a sa�da pela coluna CODIGO, em ordem decrescente.
--

USE BD_T_G01;

Select codigo                AS 'C�digo'                   ,
	   nome                  AS 'Nome'                     ,
	   descri��o             AS 'Descri��o'                ,
	   sigla2                AS 'Sigla 1'                  , 
	   sigla3                AS 'Sigla 2'                  , 
	   sigla3a               AS 'Sigla 3'                  ,   
	   cod_ddi               AS 'Codigo DDI'               ,
	   cod_continente        AS 'C�digo de Continente'     ,
	   cod_subcontinente     AS 'C�digo de Subcontinente'  , 
	   ext_km2               AS 'Exten��o (Km2)'           ,
	   obs                   AS 'Observa��es'              ,
	From dbo.FCS_TB03S001_PAISES   
	Order by codigo desc;
	
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
