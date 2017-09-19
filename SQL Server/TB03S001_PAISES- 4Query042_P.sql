-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY042- dbo.GIS_TB03S001_PAISES
--
-- Qual é a extensão do maior dos países?
-- Atenção: Colocar label (rótulo) na coluna.
--

USE BD_T_G01;

Select max(ext_km2) 'Maior extenção territorial'
  From dbo.FCS_TB03S001_PAISES;

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
