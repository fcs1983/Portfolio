-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY034 dbo.GIS_TB03S001_PAISES
--
-- Quais s�o os pa�ses cujo nome  possui a letra "i" na antepen�ltima posi��o e a letra "a"
-- na �ltima posi��o?
-- Aten��o: Usar o predicado LIKE.
--

USE BD_T_G01;

Select nome
From dbo.FCS_TB03S001_PAISES
	where nome like '%ia';

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
