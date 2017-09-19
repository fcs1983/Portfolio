-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY038 dbo.GIS_TB03S001_PAISES
--
-- Quais s�o os pa�ses cuja extens�o territorial � maior do que o pa�s com a menor extens�o
-- territorial e � menor do que o pa�s com a maior extens�o territorial?
--

USE BD_T_G01;

Select nome
From dbo.FCS_TB03S001_PAISES
  Where ext_km2 >
     (Select min(ext_km2)
        From dbo.FCS_TB03S001_PAISES)
    and ext_km2 <
     (Select max(ext_km2)
        From dbo.FCS_TB03S001_PAISES);

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
