-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY021 dbo.GIS_TB03S001_PAISES
--
-- Quais são os países cujo nome inicia com a letra "C" ou com a letra "N"?
-- Atenção: Não usar o predicado LIKE.
--

USE BD_T_G01;

Select nome
From dbo.FCS_TB03S001_PAISES
	where substring (nome, 1, 1) = 'C' or substring (nome, 1, 1) = 'N';

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
