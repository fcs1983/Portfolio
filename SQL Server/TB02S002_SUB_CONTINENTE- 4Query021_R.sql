-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY021- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Quantos são os subcontinentes existentes?
-- Atenção: Colocar label (rótulo) nas colunas resultantes.
-- Atenção: Imprimir também:
--          Qual é a soma das áreas de todos os subcontinentes?
--          Qual é a média das áreas de todos os subcontinentes?
--          Qual é a maior área de um subcontinente?
--          Qual é a menor área de um subcontinente?
--          Qual é o desvio padrão da área de todos os subcontinentes?
--          Qual é a variância da área de todos os subcontinentes?
-- Atenção: Exibir como primeira coluna da tupla a data/hora do sistema (ou data/hora local
--          ou data/hora de Brasília), separada das demais colunas por um "-" (hífen).
-- Atenção: Exibir como terceira coluna da tupla  a  data/hora universal  (ou  data/hora de
--          Greenwich ou data/hora de Londres), separada das demais colunas por um "-" (hí-
--          fen).
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
Select getdate()      'Data/hora local',
       ' - '          ' - ',
       getutcdate()   'Data/hora universal',
       ' - '          ' - ',
       count(*)       'Total de subcontinentes',
       sum(ext_km2)   'Área de todos subcontinentes',
       avg(ext_km2)   'Média da Área dos subcontinentes',
       max(ext_km2)   'Maior Área de subcontinentes',
       min(ext_km2)   'Menor Área de subcontinentes',
       stdev(ext_km2) 'Desvio Padrão da Área de subcontinentes',
       var(ext_km2)   'Variância da Área de subcontinentes'
  From dbo.FCS_TB02S002_SUB_CONTINENTE;
--
-- ----------------------------------------------------------------------------------------
-- Comentários.
-- ----------------------------------------------------------------------------------------
--
-- A cláusula FROM é a única cláusula obrigatória no comando SELECT.
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
-- Várias funções podem ser exibidas na mesma consulta.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
