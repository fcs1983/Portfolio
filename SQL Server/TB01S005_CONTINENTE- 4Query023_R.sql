-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY023- dbo.GIS_TB01S005_CONTINENTE
--
-- Quantos são os continentes?
-- Atenção: Imprimir também a área total dos continentes.
--          Imprimir também a área média dos continentes.
--          Imprimir também a área do menor dos continentes.
--          Imprimir também a área do maior dos continentes.
--          Imprimir também o desvio padrão da área dos continentes.
--          Imprimir também a variância da área dos continentes.
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
Select count(*)       'Total de continentes',
       sum(ext_km2)   'Área dos continentes',
       avg(ext_km2)   'Área média dos continentes',
       min(ext_km2)   'Menor área dos continentes',
       max(ext_km2)   'Maior área dos continentes',
       stdev(ext_km2) 'Desvio padrão da área dos continentes',
       var(ext_km2)   'Variância da área dos continentes'
  From dbo.FCS_TB01S005_CONTINENTE;
--
-- ----------------------------------------------------------------------------------------
-- Comentários.
-- ----------------------------------------------------------------------------------------
--
-- As cláusulas (FROM, WHERE, ORDER BY e outras) aparecem uma única vez no comando SELECT.
--
-- A cláusula FROM é a única cláusula obrigatória no comando SELECT.
--
-- O uso do Rótulo da coluna (ou Label da coluna ou cabeçalho da coluna) permite imprimir o
-- resultado do comando SELECT com o nome mais adequado das colunas para o entendimento dos
-- usuários, ao invés de imprimir o nome da coluna no cabeçalho.
--
-- As funções de agregação são declaradas no comando SELECT  tal qual se faz com a declara-
-- ção de uma coluna.
--
-- Como a coluna resultante da execução de uma função de agregagação não veio de uma coluna
-- específica da tabela, esta coluna não tem nome. No cabeçalho desta coluna irá constar  o
-- título sem nome (NO COLUMN NAME).
--
-- Esta não é uma boa forma de apresentar  uma determinada informação, sendo necessário al-
-- terar o nome da coluna de modo que o seu conteúdo seja claro  para quem estiver lendo  o
-- relatório.
--
-- Para evitar este nome de coluna, utiliza-se de um label ou rótulo de coluna.
--
-- Em um mesmo comando SELECT, é possível exibir várias funções de agregação.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
