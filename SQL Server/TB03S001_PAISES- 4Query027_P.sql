-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY027 dbo.GIS_TB03S001_PAISES
--
-- Quais são os países cujo nome não possui a letra "S" em qualquer posição?
-- Atenção: Considerar que a letra na 1a. posição é maiúscula.
-- Atenção: Usar o predicado LIKE.
--

USE BD_T_G01;

Select nome
From dbo.FCS_TB03S001_PAISES
	where nome not like 'S%' and nome not like '%s%';

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
