-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY023 dbo.GIS_TB03S001_PAISES
--
-- Quais s�o os pa�ses cujo nome n�o inicia com a letra "C" e nem com a letra "N"?
-- Aten��o: N�o usar o predicado LIKE.
--

USE BD_T_G01;

Select nome
From dbo.FCS_TB03S001_PAISES
	where substring (nome, 1, 1) != 'C' and substring (nome, 1, 1) != 'N';

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
