-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY028 dbo.GIS_TB03S001_PAISES
--
-- Quais são os países cujo nome possui as letras "r" e "i", nesta ordem ou na ordem inver-
-- sa?
-- Atenção: Considerar que a letra na 1a. posição é maiúscula.
-- Atenção: Usar o predicado LIKE.
--

USE BD_T_G01;

Select nome
From dbo.FCS_TB03S001_PAISES
	where nome like 'Ri%' or nome like 'Ir%', or nome like '%ri%' or nome like '%ir%' ;

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
