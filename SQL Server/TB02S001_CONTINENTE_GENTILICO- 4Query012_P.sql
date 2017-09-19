-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY012- dbo.GIS_TB02S001_CONTINENTE_GENTILICO
--
-- Selecionar todos os gentílicos de continente da tabela  dbo.GIS_TB02S001_CONTINENTE_GEN-
-- TILICO, explicitando as colunas no comando e colocando label nestas colunas,  para que o
-- usuário possa melhor entender o relatório gerado.
-- Atenção: Selecionar apenas os gentílicos da África.
--          Você não sabe qual é o código da África.
--          Exibir o nome do continente ao lado do código do continente.
--          Usar o Join Natural (Natural Join).
--

USE BD_T_G01;

Select G1.cod_continente        AS 'Código do Continente' ,
	   C1.nome                  AS 'Nome do Continente'   ,
	   G1.sexo                  As 'Sexo'                 ,
	   G1.seq                   AS 'Sequência'            ,
	   G1.gentilico             AS 'Gentilico'            ,
	   G1.obs                   AS 'Observações'          ,
	From dbo.FCS_TB02S001_CONTINENTE_GENTILICO  G1,  
	     dbo.FCS_TB01S005_CONTINENTE            C1
	Where G1.cod_continente = C1.codigo
		and C1.nome like 'África';
		
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
