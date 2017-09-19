-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY050- dbo.GIS_TB03S001_PAISES
--
-- Qual é a quantidade total de países?
-- Atenção: Imprimir também a área de todos os países.
--          Imprimir também a área média dos países.
--          Imprimir também a área do menor dos países.
--          Imprimir também a área do maior dos países.
--

USE BD_T_G01;

Select count(*)
	   sum(ext_km2)
	   avg(ext_km2)
	   min(ext_km2)
	   max(ext_km2)
  From dbo.FCS_TB03S001_PAISES;

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
