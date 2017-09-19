-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY049- dbo.GIS_TB03S001_PAISES
--
-- Quantos são os países existentes no continente 2?
-- Atenção: Colocar label (rótulo) na coluna.
--

USE BD_T_G01;

Select count(*) 'Nº de países no continente 2'
  From dbo.FCS_TB03S001_PAISES
  where codigo = 2;

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
