-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY007- dbo.GIS_TB01S005_CONTINENTE
--
-- Selecionar todos os continentes da tabela dbo.GIS_TB01S005_CONTINENTE,  explicitando  as
-- colunas no comando e colocando label nestas colunas, para que o usuário possa melhor en-
-- tender o relatório gerado.
-- Atenção: Ordenar a saída pela coluna NOME, em ordem decrescente.
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
Select codigo           'Código do Continente',
       nome             'Nome do Continente',
       sigla            'Sigla do Continente',
       ext_km2          'Extensão territorial (Km quadrados)',
       obs              'Comentário',
       data_atual       'Data da atualização'
  From dbo.FCS_TB01S005_CONTINENTE
  Order by nome DESC;
--
-- ----------------------------------------------------------------------------------------
-- Comentários.
-- ----------------------------------------------------------------------------------------
--
-- No comando SELECT, ao invés de utilizar o '*' para indicar que se deseja recuperar  todas
-- as colunas que compõem a tupla,  pode-se relacionar explicitamente todas  as colunas  que
-- compõem a tupla. Caso não deseje exibir todas as colunas, basta relacionar aquelas  colu-
-- nas cujo conteúdo deva ser exibido.
--
-- A relação das colunas no comando SELECT não precisa obedecer a ordem de sequência das co-
-- lunas na tabela.  A sequência das colunas pode ser feita na ordem que for mais convenien-
-- te.
--
-- Reparar que a última coluna relacionada  no comando SELECT,  antes da cláusula FROM,  não
-- é acompanhada de vírgula, exatamente por ser a última coluna do comando.
--
-- O uso do Rótulo da coluna (ou Label da coluna ou cabeçalho da coluna) permite imprimir  o
-- resultado do comando SELECT com o nome mais adequado das colunas para o entendimento  dos
-- usuários, ao invés de imprimir o nome da coluna no cabeçalho.
--
-- Tupla é sinônimo de registro ou linha da tabela, ou ainda, conjunto de colunas.
--
-- A cláusula FROM é a única cláusula obrigatória no comando SELECT.
--
-- A cláusula ORDER BY é opcional. O seu uso permite determinar a ordem de exibição das li-
-- nhas da tabela.
--
-- Quando a cláusula ORDER BY não é utilizada, a ordem de exibição das linhas da tabela  a-
-- contece de acordo com a Chave Primária (Primary Key), desde que ela tenha mantido o  de-
-- fault de ser uma chave clustered.
--
-- A chave clustered é a chave que ordena fisicamente as linhas da tabela.
--
-- Na cláusula ORDER BY, a opção ASC (ordem crescente de exibição pela coluna) é o default.
-- Isto significa que não é necessário escrever esta opção (ASC) para que a exibição ocorra
-- em ordem crescente.
--
-- Na cláusula ORDER BY,  usa-se a  opção DESC  (ordem decrescente de exibição pela coluna)
-- para a exibição das linhas da tabela em ordem decrescente.
--
-- Como não existe a cláusula WHERE,  que é um filtro de seleção de tuplas,  serão selecio-
-- nadas todas as tuplas.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
