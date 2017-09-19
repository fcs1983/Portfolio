-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY023- dbo.GIS_TB01S005_CONTINENTE
--
-- Quantos s�o os continentes?
-- Aten��o: Imprimir tamb�m a �rea total dos continentes.
--          Imprimir tamb�m a �rea m�dia dos continentes.
--          Imprimir tamb�m a �rea do menor dos continentes.
--          Imprimir tamb�m a �rea do maior dos continentes.
--          Imprimir tamb�m o desvio padr�o da �rea dos continentes.
--          Imprimir tamb�m a vari�ncia da �rea dos continentes.
--
-- ----------------------------------------------------------------------------------------
-- Aten��o. Indica��o do BD a ser usado. Se for o caso, mude o nome do Banco.
-- ----------------------------------------------------------------------------------------
--
USE BD_T_G01;
--
-- ----------------------------------------------------------------------------------------
-- Sele��o de todos os dados para visualiza��o do conte�do da tabela.
-- ----------------------------------------------------------------------------------------
--
Select count(*)       'Total de continentes',
       sum(ext_km2)   '�rea dos continentes',
       avg(ext_km2)   '�rea m�dia dos continentes',
       min(ext_km2)   'Menor �rea dos continentes',
       max(ext_km2)   'Maior �rea dos continentes',
       stdev(ext_km2) 'Desvio padr�o da �rea dos continentes',
       var(ext_km2)   'Vari�ncia da �rea dos continentes'
  From dbo.FCS_TB01S005_CONTINENTE;
--
-- ----------------------------------------------------------------------------------------
-- Coment�rios.
-- ----------------------------------------------------------------------------------------
--
-- As cl�usulas (FROM, WHERE, ORDER BY e outras) aparecem uma �nica vez no comando SELECT.
--
-- A cl�usula FROM � a �nica cl�usula obrigat�ria no comando SELECT.
--
-- O uso do R�tulo da coluna (ou Label da coluna ou cabe�alho da coluna) permite imprimir o
-- resultado do comando SELECT com o nome mais adequado das colunas para o entendimento dos
-- usu�rios, ao inv�s de imprimir o nome da coluna no cabe�alho.
--
-- As fun��es de agrega��o s�o declaradas no comando SELECT  tal qual se faz com a declara-
-- ��o de uma coluna.
--
-- Como a coluna resultante da execu��o de uma fun��o de agregaga��o n�o veio de uma coluna
-- espec�fica da tabela, esta coluna n�o tem nome. No cabe�alho desta coluna ir� constar  o
-- t�tulo sem nome (NO COLUMN NAME).
--
-- Esta n�o � uma boa forma de apresentar  uma determinada informa��o, sendo necess�rio al-
-- terar o nome da coluna de modo que o seu conte�do seja claro  para quem estiver lendo  o
-- relat�rio.
--
-- Para evitar este nome de coluna, utiliza-se de um label ou r�tulo de coluna.
--
-- Em um mesmo comando SELECT, � poss�vel exibir v�rias fun��es de agrega��o.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
