-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY009- dbo.GIS_TB02S001_CONTINENTE_GENTILICO
--
-- Qual � o total de gent�licos de continente existentes?
-- Aten��o: Observar com aten��o como � o nome da coluna resultante.
--

USE BD_T_G01;

Select count(*)
	From dbo.FCS_TB02S001_CONTINENTE_GENTILICO;
	
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
