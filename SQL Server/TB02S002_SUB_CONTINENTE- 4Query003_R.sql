-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY003- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Selecionar todos os subcontinentes da tabela  dbo.FCS_TB02S002_SUB_CONTINENTE,  explici-
-- tando as colunas no comando e colocando label nestas colunas,  para que o usu�rio  possa
-- melhor entender o relat�rio gerado.
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
Select codigo           AS 'C�d. Sub-Continente',
       nome             AS 'Nome',
       cod_continente   AS 'C�d. Continente',
       ext_km2          AS 'Extens�o Territorial',
       obs              AS 'Coment�rio'
 From dbo.FCS_TB02S002_SUB_CONTINENTE;
--
-- ----------------------------------------------------------------------------------------
-- Coment�rios.
-- ----------------------------------------------------------------------------------------
--
-- No comando SELECT, o '*' indica que se deseja recuperar todas as colunas que  comp�em  a
-- tupla.
--
-- No comando SELECT, ao inv�s de utilizar o '*' para indicar que se deseja recuperar todas
-- as colunas que comp�em a tupla,  pode-se relacionar explicitamente todas  as colunas que
-- comp�em a tupla.
--
-- O uso do R�tulo da coluna (ou Label da coluna ou cabe�alho da coluna) permite imprimir o
-- resultado do comando SELECT com o nome mais adequado das colunas para o entendimento dos
-- usu�rios, ao inv�s de imprimir o nome da coluna no cabe�alho.
--
-- Tupla � sin�nimo de reFCStro ou linha da tabela, ou ainda, conjunto de colunas.
--
-- A cl�usula FROM � a �nica cl�usula obrigat�ria no comando SELECT.
--
-- Como n�o existe a cl�usula WHERE,  que � um filtro de sele��o de tuplas,  ser�o selecio-
-- nadas todas as tuplas.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
