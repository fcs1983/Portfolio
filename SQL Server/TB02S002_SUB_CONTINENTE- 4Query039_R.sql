-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY039- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Selecionar todos os subcontinentes da tabela  dbo.FCS_TB02S002_SUB_CONTINENTE,  explici-
-- tando as colunas no comando e colocando label nestas colunas,  para que o usu�rio  possa
-- melhor entender o relat�rio gerado.
-- Aten��o: Exibir apenas os subcontinentes  cujo nome  n�o possui a letra "R"  e nem letra
--          "I" em qualquer posi��o.
--          Tanto a letra "R" como a letra "I" podem ser mai�sculas ou min�sculas.
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
  Where nome not like '%r%'
    and nome not like '%R%'
    and nome not like '%i%'
    and nome not like '%I%'
  Order by nome asc;
--
-- ----------------------------------------------------------------------------------------
-- Coment�rios.
-- ----------------------------------------------------------------------------------------
--
-- O predicado LIKE permite varrer uma string em busca de uma combina��o de caracteres.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
