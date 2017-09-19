-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY059- dbo.GIS_TB03S001_PAISES
--
-- Qual é a área média dos países da América e Ásia?
-- Atenção: Usar o predicado de lista no Select.
-- Atenção: Usar o predicado de lista também no Subselect.
--

USE BD_T_G01;

Select avg(ext_km2)
From dbo.FCS_TB03S001_PAISES
  Where cod_continente in
     (Select codigo
		From dbo.FCS_TB03S001_CONTINENTE)
		where nome in ('América', 'Ásia (Eurásia)');

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
