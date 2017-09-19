-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY005- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Selecionar todos os subcontinentes da tabela  dbo.FCS_TB02S002_SUB_CONTINENTE,  explici-
-- tando as colunas no comando e colocando label nestas colunas,  para que o usu�rio  possa
-- melhor entender o relat�rio gerado.
-- Aten��o: Ordenar a sa�da pela coluna COD_CONTINENTE, em ordem decrescente.
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
  Order by cod_continente DESC;
--
-- ----------------------------------------------------------------------------------------
-- Coment�rios.
-- ----------------------------------------------------------------------------------------
--
-- No comando SELECT, ao inv�s de utilizar o '*' para indicar que se deseja recuperar todas
-- as colunas que comp�em a tupla,  pode-se relacionar explicitamente todas  as colunas que
-- comp�em a tupla. Caso n�o deseje exibir todas as colunas, basta relacionar aquelas colu-
-- nas cujo conte�do deva ser exibido.
--
-- A rela��o das colunas  no comando SELECT  n�o precisa obedecer a  ordem de sequ�ncia das
-- colunas na tabela.  A sequ�ncia das colunas pode ser feita  na ordem que for mais conve-
-- niente.
--
-- Reparar que a �ltima coluna relacionada  no comando SELECT,  antes da cl�usula FROM, n�o
-- � acompanhada de v�rgula, exatamente por ser a �ltima coluna do comando.
--
-- O uso do R�tulo da coluna (ou Label da coluna ou cabe�alho da coluna) permite imprimir o
-- resultado do comando SELECT com o nome mais adequado das colunas para o entendimento dos
-- usu�rios, ao inv�s de imprimir o nome da coluna no cabe�alho.
--
-- Tupla � sin�nimo de reFCStro ou linha da tabela, ou ainda, conjunto de colunas.
--
-- A cl�usula FROM � a �nica cl�usula obrigat�ria no comando SELECT.
--
-- A cl�usula ORDER BY � opcional. O seu uso permite determinar a ordem de exibi��o das li-
-- nhas da tabela.
--
-- Quando a cl�usula ORDER BY n�o � utilizada, a ordem de exibi��o das linhas da tabela  a-
-- contece de acordo com a Chave Prim�ria (Primary Key), desde que ela tenha mantido o  de-
-- fault de ser uma chave clustered.
--
-- A chave clustered � a chave que ordena fisicamente as linhas da tabela.
--
-- Na cl�usula ORDER BY, a op��o ASC (ordem crescente de exibi��o pela coluna) � o default.
-- Isto significa que n�o � necess�rio escrever esta op��o (ASC) para que a exibi��o ocorra
-- em ordem crescente.
--
-- Na cl�usula ORDER BY,  usa-se a  op��o DESC  (ordem decrescente de exibi��o pela coluna)
-- para a exibi��o das linhas da tabela em ordem decrescente.
--
-- Como n�o existe a cl�usula WHERE,  que � um filtro de sele��o de tuplas,  ser�o selecio-
-- nadas todas as tuplas.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
