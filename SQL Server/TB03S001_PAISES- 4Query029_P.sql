-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY029 dbo.GIS_TB03S001_PAISES
--
-- Quais s�o os pa�ses cujo nome  n�o possui as letras "r" e "i",  nesta ordem  ou na ordem
-- inversa?
-- Aten��o: Considerar que a letra na 1a. posi��o � mai�scula.
-- Aten��o: Usar o predicado LIKE.
--

USE BD_T_G01;

Select nome
From dbo.FCS_TB03S001_PAISES
	where nome not like 'Ri%' and nome not like 'Ir%' and nome not like '%ri%' and nome not like '%ir%' ;

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
