-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY047- dbo.GIS_TB03S001_PAISES
--
-- Qual � o desvio padr�o da extens�o territorial dos pa�ses?
-- Aten��o: Colocar label (r�tulo) na coluna.
--

USE BD_T_G01;

Select stdev(ext_km2) 'Desvio Padr�o'
  From dbo.FCS_TB03S001_PAISES;

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
