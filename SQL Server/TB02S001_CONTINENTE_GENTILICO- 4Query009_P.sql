-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY009- dbo.GIS_TB02S001_CONTINENTE_GENTILICO
--
-- Qual é o total de gentílicos de continente existentes?
-- Atenção: Observar com atenção como é o nome da coluna resultante.
--

USE BD_T_G01;

Select count(*)
	From dbo.FCS_TB02S001_CONTINENTE_GENTILICO;
	
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
