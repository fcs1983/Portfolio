-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY002- dbo.GIS_TB03S001_PAISES
--
-- Selecionar todos os países da tabela dbo.GIS_TB03S001_PAISES, explicitando as colunas no
-- comando.
--

USE BD_T_G01;

Select codigo, nome, descrição, sigla2, sigla3, sigla3a, cod_ddi, cod_continente, cod_subcontinente, ext_km2, obs
	From dbo.FCS_TB02S001_CONTINENTE_GENTILICO;
	
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
