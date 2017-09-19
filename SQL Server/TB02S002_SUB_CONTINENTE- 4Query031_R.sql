-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY031- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Qual � a �rea m�dia dos subcontinentes da Am�rica e �sia?
-- Aten��o: Colocar label (r�tulo) na coluna resultante.
-- Aten��o: Usar necessariamente o predicado de lista (predicado IN).
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
Select avg(ext_km2) '�rea m�dia dos subcont. da Am�rica e �sia'
  From dbo.FCS_TB02S002_SUB_CONTINENTE
  Where cod_continente IN         -- Predicado de lista
     (Select codigo
        From dbo.FCS_TB02S002_SUB_CONTINENTE
        Where nome in ('Am�rica', '�sia (Eur�sia)');
--
-- ----------------------------------------------------------------------------------------
-- Coment�rios.
-- ----------------------------------------------------------------------------------------
--
-- Esta query � similar � anterior, mas usando o predicado de lista (predicado IN).
--
-- Agora n�o ocorreu nenhum erro, porque o predicado IN aceita v�rios valores.
--
-- Na cl�usula WHERE, pode-se verificar o nome do subcontinente de outra forma, al�m do uso
-- do predicado IN, como � feito na query:
--
-- 1a. forma: Where nome in ('Am�rica', '�sia (Eur�sia)');
--
-- 2a. forma: Where nome like 'Am�rica'
--              and nome like '�sia (Eur�sia)';
--
-- 3a. forma: Where nome like 'Am�ric%'
--              and nome like '�sia (Eur�%';
--
-- 4a. forma: Where nome = 'Am�rica'
--              and nome = '�sia (Eur�sia)';
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
