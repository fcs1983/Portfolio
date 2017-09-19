-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY026- dbo.GIS_TB01S005_CONTINENTE
--
-- Qual é o nome do continente que possui a menor extensão?
-- Atenção: Usar subselect.
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
Select codigo        'Código do continente',
       sigla         'Sigla',
       nome          'Nome',
       ext_km2       'Extensão (Km quadrados)',
       obs           'Comentário'
  From dbo.FCS_TB01S005_CONTINENTE
  Where ext_km2 =
     (Select min(ext_km2)                  -- Este é o Subselect
        From dbo.FCS_TB01S005_CONTINENTE);
--
-- ----------------------------------------------------------------------------------------
-- Comentários.
-- ----------------------------------------------------------------------------------------
--
-- As cláusulas (FROM, WHERE, ORDER BY e outras) aparecem uma única vez no comando SELECT.
--
-- A cláusula FROM é a única cláusula obrigatória no comando SELECT.
--
-- A cláusula WHERE é um filtro de seleção de tuplas, permitindo a exibição somente das tu-
-- plas que atenderem à restrição constante na cláusula.
--
-- As funções de agregação são declaradas no comando SELECT  tal qual se faz com a declara-
-- ção de uma coluna.
--
-- Em um mesmo comando SELECT, é possível exibir várias funções de agregação.
--
-- Um SUBSELECT nada mais do é do que um comando SELECT dentro de outro comando SELECT.
--
-- O SUBSELECT é facilmente identificável pois o comando SELECT inicia com um "(", ou seja,
-- com um abre parênteses.
--
-- A SQL inicia a execução dos SELECTs pelo SELECT mais interno e termina com o SELECT mais
-- externo (ou seja, executa do fim para o começo).
--
-- A solução de um SUBSELECT resulta em um ou mais valores.
--
-- Pode haver até 15 (quinze) níveis de SUBSELECT.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
