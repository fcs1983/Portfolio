-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY004- dbo.GIS_TB02S001_CONTINENTE_GENTILICO
--
-- Selecionar todos os gentílicos de continente da tabela  dbo.GIS_TB02S001_CONTINENTE_GEN-
-- TILICO, explicitando as colunas no comando e colocando label nestas colunas,  para que o
-- usuário possa melhor entender o relatório gerado.
-- Atenção: Ordenar a saída pela coluna COD_CONTINENTE, em ordem crescente.
--

USE BD_T_G01;

Select cod_continente        AS 'Código do Continente' ,
	   sexo                  As 'Sexo'                 ,
	   seq                   AS 'Sequência'            ,
	   gentilico             AS 'Gentilico'            ,
	   obs                   AS 'Observações'          ,
	From dbo.FCS_TB02S001_CONTINENTE_GENTILICO
	Order by cod_continente ASC;
	
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
