-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY029- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Qual é a área média dos subcontinentes da América?
-- Atenção: Colocar label (rótulo) na coluna resultante.
--
-- ----------------------------------------------------------------------------------------
-- Atenção. Indicação do BD a ser usado. Se for o caso, mude o nome do Banco.
-- ----------------------------------------------------------------------------------------
--
USE BD_T_G01;
--
-- ----------------------------------------------------------------------------------------
-- Seleção de todos os dados para visualização do conteúdo da tabela.
-- ----------------------------------------------------------------------------------------
--
Select avg(ext_km2)  'Área média Subcontinentes da América'
  From dbo.FCS_TB02S002_SUB_CONTINENTE
  Where cod_continente =
     (Select codigo
        From dbo.FCS_TB02S002_SUB_CONTINENTE
        Where nome like 'América');
--
-- ----------------------------------------------------------------------------------------
-- Comentários.
-- ----------------------------------------------------------------------------------------
--
-- Tupla é sinônimo de reFCStro ou linha da tabela, ou ainda, conjunto de colunas.
--
-- A cláusula FROM é a única cláusula obrigatória no comando SELECT.
--
-- A cláusula WHERE é opcional. O seu uso permite filtrar as tuplas a serem exibidas.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
