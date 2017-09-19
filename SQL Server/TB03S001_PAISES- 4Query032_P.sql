-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY032 dbo.GIS_TB03S001_PAISES
--
-- Quais são os países cujo nome possui a letra "a" na 3a. (terceira) posição?
-- Atenção: Não usar o predicado LIKE.
--

USE BD_T_G01;

Select nome
From dbo.FCS_TB03S001_PAISES
	where substring(nome, 3, 1) = 'a';

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
