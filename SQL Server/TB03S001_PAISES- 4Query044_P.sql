-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY044- dbo.GIS_TB03S001_PAISES
--
-- Qual é a soma das áreas de todos os países?
-- Atenção: Colocar label (rótulo) na coluna.
-- Esta é uma outra forma de pedir a mesma informação solicitada na query anterior.
--

USE BD_T_G01;

Select sum(ext_km2) 'Área total'
  From dbo.FCS_TB03S001_PAISES;

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
