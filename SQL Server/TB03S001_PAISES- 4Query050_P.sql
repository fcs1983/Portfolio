-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY050- dbo.GIS_TB03S001_PAISES
--
-- Qual � a quantidade total de pa�ses?
-- Aten��o: Imprimir tamb�m a �rea de todos os pa�ses.
--          Imprimir tamb�m a �rea m�dia dos pa�ses.
--          Imprimir tamb�m a �rea do menor dos pa�ses.
--          Imprimir tamb�m a �rea do maior dos pa�ses.
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
