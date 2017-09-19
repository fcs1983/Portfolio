-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY004- dbo.GIS_TB03S001_PAISES
--
-- Selecionar todos os países da tabela dbo.GIS_TB03S001_PAISES, explicitando as colunas no
-- comando e colocando label nestas colunas, para que o usuário possa melhor entender o re-
-- latório gerado.
-- Atenção: Retirar a partícula "AS" do comando SELECT.
--

USE BD_T_G01;

Select codigo                'Código'                   ,
	   nome                  'Nome'                     ,
	   descrição             'Descrição'                ,
	   sigla2                'Sigla 1'                  , 
	   sigla3                'Sigla 2'                  , 
	   sigla3a               'Sigla 3'                  ,   
	   cod_ddi               'Codigo DDI'               ,
	   cod_continente        'Código de Continente'     ,
	   cod_subcontinente     'Código de Subcontinente'  , 
	   ext_km2               'Extenção (Km2)'           ,
	   obs                   'Observações'              ,
	From dbo.FCS_TB03S001_PAISES;   
	
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
