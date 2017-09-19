-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY051- dbo.GIS_TB03S001_PAISES
--
-- Qual é o nome do país que possui a maior extensão?
-- Atenção: Usar subselect.
--

USE BD_T_G01;

Select nome
From dbo.FCS_TB03S001_PAISES
  Where ext_km2 =
     (Select max(ext_km2)
        From dbo.FCS_TB03S001_PAISES);

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
