-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY063- dbo.GIS_TB03S001_PAISES
--
-- Quais são os países com área maior do que a área média dos países da América?
-- Atenção: Usar Subselect.
-- Atenção: Usar o predicado de lista no Subselect de primeiro nível.
-- Atenção: Usar o predicado de lista no Subselect de segundo nível.
--

USE BD_T_G01;

Select *
From dbo.FCS_TB03S001_PAISES
where ext_m2 > 
	(Select avg(ext_km2) 'Área média dos países da América'
	From dbo.FCS_TB03S001_PAISES
	where cod_continente in (Select dbo.GIS_TB03S001_CONTINENTE

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
