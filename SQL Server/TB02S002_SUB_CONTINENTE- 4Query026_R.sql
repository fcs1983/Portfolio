-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY026- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Selecionar todos os subcontinentes da tabela  dbo.FCS_TB02S002_SUB_CONTINENTE,  explici-
-- tando as colunas no comando e colocando label nestas colunas,  para que o usu�rio  possa
-- melhor entender o relat�rio gerado.
-- Aten��o: Exibir apenas os subcontinentes com �rea maior  do que a �rea m�dia dos subcon-
--          tinentes
--          Ordenar a sa�da pelo nome do subcontinente, em ordem crescente.
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
Select codigo          'C�digo do subcontinente',
       nome            'Nome do subcontinente',
       cod_continente  'C�digo do Continente',
       ext_km2         '�rea (Km quadr.)',
       obs             'Coment�rio'
  From dbo.FCS_TB02S002_SUB_CONTINENTE
  Where ext_km2 <
     (Select avg(ext_km2)
        From dbo.FCS_TB02S002_SUB_CONTINENTE)
  Order by nome asc;
--
-- ----------------------------------------------------------------------------------------
-- Coment�rios.
-- ----------------------------------------------------------------------------------------
--
-- Tupla � sin�nimo de reFCStro ou linha da tabela, ou ainda, conjunto de colunas.
--
-- A cl�usula FROM � a �nica cl�usula obrigat�ria no comando SELECT.
--
-- A cl�usula WHERE � opcional. O seu uso permite filtrar as tuplas a serem exibidas.
--
-- A cl�usula ORDER BY � opcional.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
