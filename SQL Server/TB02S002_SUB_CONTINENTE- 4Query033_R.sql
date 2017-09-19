-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY033- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Selecionar todos os subcontinentes da tabela  dbo.FCS_TB02S002_SUB_CONTINENTE,  explici-
-- tando as colunas no comando e colocando label nestas colunas,  para que o usuário  possa
-- melhor entender o relatório gerado.
-- Atenção: Exibir apenas os subcontinentes cujo nome não inicia com a letra "A".
--          Ordenar a saída pelo nome do subcontinente, em ordem crescente.
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
Select codigo          'Código do subcontinente',
       nome            'Nome do subcontinente',
       cod_continente  'Código do Continente',
       ext_km2         'Área (Km quadr.)',
       obs             'Comentário'
  From dbo.FCS_TB02S002_SUB_CONTINENTE
  Where nome not like 'A%'
  Order by nome asc;
--
-- ----------------------------------------------------------------------------------------
-- Comentários.
-- ----------------------------------------------------------------------------------------
--
-- O predicado LIKE permite varrer uma string em busca de uma combinação de caracteres.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
