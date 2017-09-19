-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY017- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Qual � a soma das �reas de todos os subcontinentes?
-- Aten��o: Colocar label (r�tulo) na coluna resultante.
--          Esta � uma outra forma de solicitar a mesma informa��o da query anterior.
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
Select sum(ext_km2) '�rea de todos subcontinentes'
  From dbo.FCS_TB02S002_SUB_CONTINENTE;
--
-- ----------------------------------------------------------------------------------------
-- Coment�rios.
-- ----------------------------------------------------------------------------------------
--
-- A cl�usula FROM � a �nica cl�usula obrigat�ria no comando SELECT.
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
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
