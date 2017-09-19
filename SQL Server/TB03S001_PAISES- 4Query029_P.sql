-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY029 dbo.GIS_TB03S001_PAISES
--
-- Quais são os países cujo nome  não possui as letras "r" e "i",  nesta ordem  ou na ordem
-- inversa?
-- Atenção: Considerar que a letra na 1a. posição é maiúscula.
-- Atenção: Usar o predicado LIKE.
--

USE BD_T_G01;

Select nome
From dbo.FCS_TB03S001_PAISES
	where nome not like 'Ri%' and nome not like 'Ir%' and nome not like '%ri%' and nome not like '%ir%' ;

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
