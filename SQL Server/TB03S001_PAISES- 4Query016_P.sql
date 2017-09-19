-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY016- dbo.GIS_TB03S001_PAISES
--
-- Quais são os países cujo nome não inicia com a letra "B"?
-- Atenção: Usar o predicado LIKE.
--

USE BD_T_G01;

Select nome
From dbo.FCS_TB03S001_PAISES
	where nome not like 'B%';

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
