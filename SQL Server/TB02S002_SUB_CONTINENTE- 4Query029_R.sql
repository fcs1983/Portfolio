-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY029- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Qual � a �rea m�dia dos subcontinentes da Am�rica?
-- Aten��o: Colocar label (r�tulo) na coluna resultante.
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
Select avg(ext_km2)  '�rea m�dia Subcontinentes da Am�rica'
  From dbo.FCS_TB02S002_SUB_CONTINENTE
  Where cod_continente =
     (Select codigo
        From dbo.FCS_TB02S002_SUB_CONTINENTE
        Where nome like 'Am�rica');
--
-- ----------------------------------------------------------------------------------------
-- Coment�rios.
-- ----------------------------------------------------------------------------------------
--
-- Tupla � sin�nimo de reFCStro ou linha da tabela, ou ainda, conjunto de colunas.
--
-- A cl�usula FROM � a �nica cl�usula obrigat�ria no comando SELECT.
--
-- A cl�usula WHERE � opcional. O seu uso permite filtrar as tuplas a serem exibidas.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
