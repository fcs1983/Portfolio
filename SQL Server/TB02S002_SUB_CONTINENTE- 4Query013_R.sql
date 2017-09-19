-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY013- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Qual � o subcontinente que possui a maior �rea?
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
  Where ext_km2 =
      (Select max(ext_km2) 'Maior �rea de Subcontinente'
         From dbo.FCS_TB02S002_SUB_CONTINENTE);
--
-- ----------------------------------------------------------------------------------------
-- Coment�rios.
-- ----------------------------------------------------------------------------------------
--
-- A cl�usula FROM � a �nica cl�usula obrigat�ria no comando SELECT.
--
-- As fun��es de agrega��o s�o declaradas no comando SELECT  tal qual se faz com a declara-
-- ��o de uma coluna.
--
-- O SUBSELECT nada mais � do que um comando SELECT dentro de outro comando SELECT. Ele co-
-- me�a com um abre parent�ses, o qual deve ser fechado ao final do comando).
--
-- O SUBSELECT � resolvido em primeiro lugar, gerando um valor que ser�  tratado no comando
-- SELECT mais externo.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------