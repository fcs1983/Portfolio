-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY022- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Quais são os subcontinentes do continente de código igual a 1?
-- Atenção: Ordenar a saída pelo nome do subcontinente, em ordem decrescente.
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
Select codigo            'Cód. Sub-Continente',
       nome              'Nome',
       cod_continente    'Cód. Continente',
       ext_km2           'Extensão Territorial',
       obs               'Comentário'
  From dbo.FCS_TB02S002_SUB_CONTINENTE
  Where codigo = 1
  Order by nome DESC;
--
-- ----------------------------------------------------------------------------------------
-- Comentários.
-- ----------------------------------------------------------------------------------------
--
-- A cláusula FROM é a única cláusula obrigatória no comando SELECT.
--
-- A cláusula WHERE é opcional e permite filtrar as tuplas a serem exibidas.
--
-- A cláusula ORDER BY é opcional e permite exibir as tuplas em uma ordem a ser escolhida.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
