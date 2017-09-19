-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY024- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Selecionar todos os subcontinentes da tabela  dbo.FCS_TB02S002_SUB_CONTINENTE,  explici-
-- tando as colunas no comando e colocando label nestas colunas,  para que o usu�rio  possa
-- melhor entender o relat�rio gerado.
-- Aten��o: Exibir apenas os subcontinentes do continente de nome "�frica".
--          O c�digo desse continente n�o � conhecido por voc�.
--          Exibir o nome do continente ao lado do c�digo do continente.
--          Ordenar a sa�da pelo nome do subcontinente, em ordem crescente.
-- Aten��o: Usar o Inner Join.
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
Select S1.codigo            'C�d. Sub-Continente',
       S1.nome              'Nome Sub-Continente',
       S1.cod_continente    'C�d. Continente',
       C1.nome              'Nome Continente',
       S1.ext_km2           'Extens�o Territorial',
       S1.obs               'Coment�rio'
  From dbo.FCS_TB02S002_SUB_CONTINENTE  S1
     Inner Join
       dbo.FCS_TB01S005_CONTINENTE  C1
     On S1.cod_continente = C1.codigo   -- Este � o predicado de join
  Where C1.nome like '�frica'
  Order by S1.nome ASC;
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
-- A cl�usula WHERE � opcional. O seu uso permite filtrar as tuplas a serem exibidas.
--
-- Na cl�usula FROM, o apelido da tabela visa facilitar a prefixa��o das colunas. Como o a-
-- pelido � mais curto que o nome da tabela, a digita��o fica facilitada,  assim como a vi-
-- sualiza��o do script.
--
-- Quando a cl�usula ORDER BY n�o � utilizada, a ordem de exibi��o das linhas da tabela  a-
-- contece de acordo com a Chave Prim�ria (Primary Key), desde que ela tenha mantido o  de-
-- fault de ser uma chave clustered.
--
-- No Join Natural n�o h� indica��o expl�cita do Join. Sabe-se que � um Join pela  exist�n-
-- cia de duas (ou mais) tabelas declaradas na cl�usula FROM.
--
-- Quando se usa o Join, � necess�rio declarar o predicado de join, que � a igualdade entre
-- a chave estrangeira de uma tabela e a chave prim�ria de outra tabela.
--
-- No Join Natural, a declara��o do predicado de join � feita na cl�usula WHERE.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
