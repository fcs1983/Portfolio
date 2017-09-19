-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY030- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Qual � a �rea m�dia dos subcontinentes da Am�rica e �sia?
-- Aten��o: Colocar label (r�tulo) na coluna resultante.
-- Aten��o: Usar necessariamente o predicado de igualdade.
--          Verificar o que ocorre na execu��o desta consulta.
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
  Where cod_continente =         -- Predicado de igualdade como solicitado
     (Select codigo
        From dbo.FCS_TB02S002_SUB_CONTINENTE
        Where nome in ('Am�rica', '�sia (Eur�sia)');
--
-- ----------------------------------------------------------------------------------------
-- Coment�rios.
-- ----------------------------------------------------------------------------------------
--
-- Na execu��o desta consulta (query), ocorreu um erro.
--
-- O erro ocorreu porque a subquery (subselect ou subconsulta) retornou mais de uma valor.
--
-- Quando h� mais de um valor retornando de uma subquery,  n�o se deve usar o  predicado de
-- igualdade. O correto � usar o predicado de lista (predicado IN).
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
