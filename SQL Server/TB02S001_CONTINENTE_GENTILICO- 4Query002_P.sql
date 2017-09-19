-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY002- dbo.GIS_TB02S001_CONTINENTE_GENTILICO
--
-- Selecionar todos os gentílicos de continente da tabela  dbo.GIS_TB02S001_CONTINENTE_GEN-
-- TILICO, explicitando as colunas no comando.
--
USE BD_T_G01;

Select cod_continente, sexo, seq, gentilico, obs
	From dbo.FCS_TB02S001_CONTINENTE_GENTILICO;

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
