-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY019 dbo.GIS_TB03S001_PAISES
--
-- Quais s�o os pa�ses cujo nome n�o termina com a letra "l"?
--

USE BD_T_G01;

Select nome
From dbo.FCS_TB03S001_PAISES
	where nome not like '%l';

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
