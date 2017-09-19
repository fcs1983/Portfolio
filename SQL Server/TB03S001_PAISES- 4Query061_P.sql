-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY061- dbo.GIS_TB03S001_PAISES
--
-- Qual é a área média dos países da América e Ásia?
-- Atenção: Usar o predicado de lista no Select.
-- Atenção: Usar o predicado de igualdade no Subselect.
-- Atenção: Esta é a mesma query anterior, mas com uma terceira solução.
--

USE BD_T_G01;

Select avg(ext_km2)
From dbo.FCS_TB03S001_PAISES
  Where nome in
     (Select nome
		where nome = 'América' or nome = 'Ásia')
        From dbo.FCS_TB03S001_PAISES);

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
