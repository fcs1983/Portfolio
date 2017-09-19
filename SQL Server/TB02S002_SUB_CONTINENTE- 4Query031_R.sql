-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY031- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Qual é a área média dos subcontinentes da América e Ásia?
-- Atenção: Colocar label (rótulo) na coluna resultante.
-- Atenção: Usar necessariamente o predicado de lista (predicado IN).
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
Select avg(ext_km2) 'Área média dos subcont. da América e Ásia'
  From dbo.FCS_TB02S002_SUB_CONTINENTE
  Where cod_continente IN         -- Predicado de lista
     (Select codigo
        From dbo.FCS_TB02S002_SUB_CONTINENTE
        Where nome in ('América', 'Ásia (Eurásia)');
--
-- ----------------------------------------------------------------------------------------
-- Comentários.
-- ----------------------------------------------------------------------------------------
--
-- Esta query é similar à anterior, mas usando o predicado de lista (predicado IN).
--
-- Agora não ocorreu nenhum erro, porque o predicado IN aceita vários valores.
--
-- Na cláusula WHERE, pode-se verificar o nome do subcontinente de outra forma, além do uso
-- do predicado IN, como é feito na query:
--
-- 1a. forma: Where nome in ('América', 'Ásia (Eurásia)');
--
-- 2a. forma: Where nome like 'América'
--              and nome like 'Ásia (Eurásia)';
--
-- 3a. forma: Where nome like 'Améric%'
--              and nome like 'Ásia (Eurá%';
--
-- 4a. forma: Where nome = 'América'
--              and nome = 'Ásia (Eurásia)';
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
