-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY006- dbo.GIS_TB03S001_PAISES
--
-- Selecionar todos os países da tabela dbo.GIS_TB03S001_PAISES, explicitando as colunas no
-- comando e colocando label nestas colunas, para que o usuário possa melhor entender o re-
-- latório gerado.
-- Atenção: Ordenar a saída pela coluna CODIGO, em ordem decrescente.
--

USE BD_T_G01;

Select codigo                AS 'Código'                   ,
	   nome                  AS 'Nome'                     ,
	   descrição             AS 'Descrição'                ,
	   sigla2                AS 'Sigla 1'                  , 
	   sigla3                AS 'Sigla 2'                  , 
	   sigla3a               AS 'Sigla 3'                  ,   
	   cod_ddi               AS 'Codigo DDI'               ,
	   cod_continente        AS 'Código de Continente'     ,
	   cod_subcontinente     AS 'Código de Subcontinente'  , 
	   ext_km2               AS 'Extenção (Km2)'           ,
	   obs                   AS 'Observações'              ,
	From dbo.FCS_TB03S001_PAISES   
	Order by codigo desc;
	
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
