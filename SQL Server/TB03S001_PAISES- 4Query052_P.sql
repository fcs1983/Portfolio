-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY052- dbo.GIS_TB03S001_PAISES
--
-- Qual é o nome do país que possui a menor extensão?
-- Atenção: Usar subselect.
--

USE BD_T_G01;

Select nome
From dbo.FCS_TB03S001_PAISES
  Where ext_km2 =
     (Select min(ext_km2)
        From dbo.FCS_TB03S001_PAISES);

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
