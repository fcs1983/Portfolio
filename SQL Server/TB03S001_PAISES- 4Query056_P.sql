-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY056- dbo.GIS_TB03S001_PAISES
--
-- Qual � a �rea m�dia dos pa�ses da Am�rica?
-- Aten��o: Usar subselect.
--

USE BD_T_G01;

Select avg(ext_km2)
From dbo.FCS_TB03S001_PAISES
  Where nome =
     (Select nome
		where nome like 'Am�rica'
        From dbo.FCS_TB03S001_PAISES);

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
