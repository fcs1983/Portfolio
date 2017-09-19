-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY030- dbo.GIS_TB01S005_CONTINENTE
--
-- Quais s�o os continentes com �rea menor do que a �rea do continente americano?
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
Select codigo        'C�digo do continente',
       sigla         'Sigla',
       nome          'Nome',
       ext_km2       'Extens�o (Km quadrados)',
       obs           'Coment�rio'
  From dbo.FCS_TB01S005_CONTINENTE
  Where ext_km2 <
     (Select  ext_km2
        From dbo.FCS_TB01S005_CONTINENTE
        Where nome like '%Am�rica%');
--
-- ----------------------------------------------------------------------------------------
-- Coment�rios.
-- ----------------------------------------------------------------------------------------
--
-- As cl�usulas (FROM, WHERE, ORDER BY e outras) aparecem uma �nica vez no comando SELECT.
--
-- A cl�usula FROM � a �nica cl�usula obrigat�ria no comando SELECT.
--
-- A cl�usula WHERE � um filtro de sele��o de tuplas, permitindo a exibi��o somente das tu-
-- plas que atenderem � restri��o constante na cl�usula.
--
-- As fun��es de agrega��o s�o declaradas no comando SELECT  tal qual se faz com a declara-
-- ��o de uma coluna.
--
-- Em um mesmo comando SELECT, � poss�vel exibir v�rias fun��es de agrega��o.
--
-- Um SUBSELECT nada mais do � do que um comando SELECT dentro de outro comando SELECT.
--
-- O SUBSELECT � facilmente identific�vel pois o comando SELECT inicia com um "(", ou seja,
-- com um abre par�nteses.
--
-- A SQL inicia a execu��o dos SELECTs pelo SELECT mais interno e termina com o SELECT mais
-- externo (ou seja, executa do fim para o come�o).
--
-- A solu��o de um SUBSELECT resulta em um ou mais valores.
--
-- Pode haver at� 15 (quinze) n�veis de SUBSELECT.
--
-- Uma segunda solu��o para esta query (consulta) pode ser a coloca��o no Subselect:
-- WHERE nome = 'Am�rica');
--
-- Uma terceira solu��o para esta query (consulta) pode ser a coloca��o no Subselect:
-- WHERE nome in ('Am�rica'));
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
