-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY049- dbo.GIS_TB03S001_PAISES
--
-- Quantos s�o os pa�ses existentes no continente 2?
-- Aten��o: Colocar label (r�tulo) na coluna.
--

USE BD_T_G01;

Select count(*) 'N� de pa�ses no continente 2'
  From dbo.FCS_TB03S001_PAISES
  where codigo = 2;

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
