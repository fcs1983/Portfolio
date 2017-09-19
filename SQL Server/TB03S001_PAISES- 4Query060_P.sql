-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY060- dbo.GIS_TB03S001_PAISES
--
-- Qual � a �rea m�dia dos pa�ses da Am�rica e �sia?
-- Aten��o: Usar o predicado de lista no Select.
-- Aten��o: Usar o predicado LIKE no Subselect.
-- Aten��o: Esta � a mesma query anterior, mas com uma segunda solu��o.
--

USE BD_T_G01;

Select avg(ext_km2)
From dbo.FCS_TB03S001_PAISES
  Where nome in
     (Select nome
		where nome like 'Am�rica' or nome like '�sia')
        From dbo.FCS_TB03S001_PAISES);

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
