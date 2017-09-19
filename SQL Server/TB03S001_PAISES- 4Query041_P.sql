-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY041- dbo.GIS_TB03S001_PAISES
--
-- Qual é o total de países existentes?
-- Atenção: Colocar label (rótulo) na coluna.
--

USE BD_T_G01;

Select count(*) 'Total de Países'
  From dbo.FCS_TB03S001_PAISES;

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
