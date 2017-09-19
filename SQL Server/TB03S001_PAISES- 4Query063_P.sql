-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY063- dbo.GIS_TB03S001_PAISES
--
-- Quais s�o os pa�ses com �rea maior do que a �rea m�dia dos pa�ses da Am�rica?
-- Aten��o: Usar Subselect.
-- Aten��o: Usar o predicado de lista no Subselect de primeiro n�vel.
-- Aten��o: Usar o predicado de lista no Subselect de segundo n�vel.
--

USE BD_T_G01;

Select *
From dbo.FCS_TB03S001_PAISES
where ext_m2 > 
	(Select avg(ext_km2) '�rea m�dia dos pa�ses da Am�rica'
	From dbo.FCS_TB03S001_PAISES
	where cod_continente in (Select dbo.GIS_TB03S001_CONTINENTE

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
