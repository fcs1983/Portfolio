-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY048- dbo.GIS_TB01S005_CONTINENTE
--
-- Quais s�o os continentes cuja coluna observa��o (obs) encontra-se com valor nulo?
-- Aten��o: Exibir os dados, colocando na primeira coluna a data e hora correntes (ou seja,
-- a data e hora locais ou de Bras�lia).
--          Colocar uma coluna de separa��o entre a data corrente e os demais dados.
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
Select Getdate()     'Data e Hora correntes',
       ' - ',
       codigo        'C�digo do continente',
       sigla         'Sigla',
       nome          'Nome',
       ext_km2       'Extens�o (Km quadrados)',
       obs           'Coment�rio'
  From dbo.FCS_TB01S005_CONTINENTE
  Where obs IS NULL;
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
-- O predicado IS NULL permite verificar se o conte�do de uma coluna � ou n�o nulo (NULL).
--
-- O valor NULL corresponde ao conjunto vazio, significando o valor dado para a aus�ncia de
-- valor. Ele n�o � 0 (zero) e nem � branco.
--
-- A fun��o GETDATE() recolhe a data e hora correntes (ou seja, a data e hora locais ou da-
-- ta e hora de Bras�lia)
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
