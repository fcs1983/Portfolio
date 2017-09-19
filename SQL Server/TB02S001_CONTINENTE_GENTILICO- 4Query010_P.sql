-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY010- dbo.GIS_TB02S001_CONTINENTE_GENTILICO
--
-- Qual � o total de gent�licos de continente existentes?
-- Aten��o: Colocar label (r�tulo) na coluna resultante.
--

USE BD_T_G01;

Select count(*)    'N�mero de Gentilicos'          
	From dbo.FCS_TB02S001_CONTINENTE_GENTILICO;
	
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
