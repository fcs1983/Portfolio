-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY048- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Selecionar todos os subcontinentes da tabela  dbo.FCS_TB02S002_SUB_CONTINENTE,  explici-
-- tando as colunas no comando e colocando label nestas colunas,  para que o usu�rio  possa
-- melhor entender o relat�rio gerado.
-- Aten��o: Exibir apenas os subcontinentes com extens�o territorial maior do que o subcon-
--          tinente com a menor extens�o territorial  e menor do que o subcontinente  com a
--          maior extens�o territorial.
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
       ext_km2         'Ext.Territorial (Km quadr.)',
       obs             'Coment�rio'
  From dbo.FCS_TB02S002_SUB_CONTINENTE
  Where ext_km2 > 
     (select min(ext_km2)
        From dbo.FCS_TB02S002_SUB_CONTINENTE)
   and
       ext_km2 < 
     (select max(ext_km2)
        From dbo.FCS_TB02S002_SUB_CONTINENTE)
  Order by nome asc;
--
-- ----------------------------------------------------------------------------------------
-- Coment�rios.
-- ----------------------------------------------------------------------------------------
--
-- As fun��es de agrega��o s�o muito utilizadas nas consultas.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
