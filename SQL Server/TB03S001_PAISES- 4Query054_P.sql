-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY054- dbo.GIS_TB03S001_PAISES
--
-- Quais são os países com área maior do que a área média dos países?
-- Atenção: Usar subselect.
--

USE BD_T_G01;

Select nome
From dbo.FCS_TB03S001_PAISES
  Where ext_km2 >
     (Select avg(ext_km2)
        From dbo.FCS_TB03S001_PAISES);

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
