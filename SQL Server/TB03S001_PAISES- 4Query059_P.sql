-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY059- dbo.GIS_TB03S001_PAISES
--
-- Qual � a �rea m�dia dos pa�ses da Am�rica e �sia?
-- Aten��o: Usar o predicado de lista no Select.
-- Aten��o: Usar o predicado de lista tamb�m no Subselect.
--

USE BD_T_G01;

Select avg(ext_km2)
From dbo.FCS_TB03S001_PAISES
  Where cod_continente in
     (Select codigo
		From dbo.FCS_TB03S001_CONTINENTE)
		where nome in ('Am�rica', '�sia (Eur�sia)');

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
