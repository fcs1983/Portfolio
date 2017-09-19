-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY037 dbo.GIS_TB03S001_PAISES
--
-- Quais são os países cuja coluna OBS não encontra-se com valor nulo?
--

USE BD_T_G01;

Select nome
From dbo.FCS_TB03S001_PAISES
	where obs is not null;

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
