-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY004- dbo.GIS_TB02S001_CONTINENTE_GENTILICO
--
-- Selecionar todos os gent�licos de continente da tabela  dbo.GIS_TB02S001_CONTINENTE_GEN-
-- TILICO, explicitando as colunas no comando e colocando label nestas colunas,  para que o
-- usu�rio possa melhor entender o relat�rio gerado.
-- Aten��o: Ordenar a sa�da pela coluna COD_CONTINENTE, em ordem crescente.
--

USE BD_T_G01;

Select cod_continente        AS 'C�digo do Continente' ,
	   sexo                  As 'Sexo'                 ,
	   seq                   AS 'Sequ�ncia'            ,
	   gentilico             AS 'Gentilico'            ,
	   obs                   AS 'Observa��es'          ,
	From dbo.FCS_TB02S001_CONTINENTE_GENTILICO
	Order by cod_continente ASC;
	
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
