-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY022- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Quais s�o os subcontinentes do continente de c�digo igual a 1?
-- Aten��o: Ordenar a sa�da pelo nome do subcontinente, em ordem decrescente.
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
Select codigo            'C�d. Sub-Continente',
       nome              'Nome',
       cod_continente    'C�d. Continente',
       ext_km2           'Extens�o Territorial',
       obs               'Coment�rio'
  From dbo.FCS_TB02S002_SUB_CONTINENTE
  Where codigo = 1
  Order by nome DESC;
--
-- ----------------------------------------------------------------------------------------
-- Coment�rios.
-- ----------------------------------------------------------------------------------------
--
-- A cl�usula FROM � a �nica cl�usula obrigat�ria no comando SELECT.
--
-- A cl�usula WHERE � opcional e permite filtrar as tuplas a serem exibidas.
--
-- A cl�usula ORDER BY � opcional e permite exibir as tuplas em uma ordem a ser escolhida.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
