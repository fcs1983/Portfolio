-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY004- dbo.GIS_TB03S001_PAISES
--
-- Selecionar todos os pa�ses da tabela dbo.GIS_TB03S001_PAISES, explicitando as colunas no
-- comando e colocando label nestas colunas, para que o usu�rio possa melhor entender o re-
-- lat�rio gerado.
-- Aten��o: Retirar a part�cula "AS" do comando SELECT.
--

USE BD_T_G01;

Select codigo                'C�digo'                   ,
	   nome                  'Nome'                     ,
	   descri��o             'Descri��o'                ,
	   sigla2                'Sigla 1'                  , 
	   sigla3                'Sigla 2'                  , 
	   sigla3a               'Sigla 3'                  ,   
	   cod_ddi               'Codigo DDI'               ,
	   cod_continente        'C�digo de Continente'     ,
	   cod_subcontinente     'C�digo de Subcontinente'  , 
	   ext_km2               'Exten��o (Km2)'           ,
	   obs                   'Observa��es'              ,
	From dbo.FCS_TB03S001_PAISES;   
	
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
