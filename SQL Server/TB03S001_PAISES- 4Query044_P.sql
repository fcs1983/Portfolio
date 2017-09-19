-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY044- dbo.GIS_TB03S001_PAISES
--
-- Qual � a soma das �reas de todos os pa�ses?
-- Aten��o: Colocar label (r�tulo) na coluna.
-- Esta � uma outra forma de pedir a mesma informa��o solicitada na query anterior.
--

USE BD_T_G01;

Select sum(ext_km2) '�rea total'
  From dbo.FCS_TB03S001_PAISES;

-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
