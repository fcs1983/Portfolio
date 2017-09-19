-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY013- dbo.GIS_TB02S001_CONTINENTE_GENTILICO
--
-- Selecionar todos os gent�licos de continente da tabela  dbo.GIS_TB02S001_CONTINENTE_GEN-
-- TILICO, explicitando as colunas no comando e colocando label nestas colunas,  para que o
-- usu�rio possa melhor entender o relat�rio gerado.
-- Aten��o: Selecionar apenas os gent�licos da �frica.
--          Voc� n�o sabe qual � o c�digo da �frica.
--          Exibir o nome do continente ao lado do c�digo do continente.
--          Usar o Inner Join.
--
-- ----------------------------------------------------------------------------------------
-- Aten��o. Indica��o do BD a ser usado. Se for o caso, mude o nome do Banco.
-- ----------------------------------------------------------------------------------------
--
USE BDGIS;
--
-- ----------------------------------------------------------------------------------------
-- Sele��o de todos os dados para visualiza��o do conte�do da tabela.
-- ----------------------------------------------------------------------------------------
--
Select G1.cod_continente    'C�d. Continente',
       C1.nome              'Nome Continente',
       G1.sexo              'Sexo',
       G1.seq               'Seq',
       G1.gentilico         'Gentilico',
       G1.obs               'Coment�rio'
  From dbo.GIS_TB02S001_CONTINENTE_GENTILICO G1
      Inner Join
       dbo.GIS_TB01S005_CONTINENTE  C1
      On G1.cod_continente = C1.codigo    -- Este � o predicado de join
  Where C1.nome like '�frica';
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
-- Tupla � sin�nimo de registro ou linha da tabela, ou ainda, conjunto de colunas.
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
-- Quando se usa o Inner Join, � necess�rio declarar o predicado de join, que � a igualdade
-- entre a chave estrangeira de uma tabela e a chave prim�ria de outra tabela.
--
-- No Inner Join, a declara��o do predicado de join � feita na cl�usula FROM, usando a par-
-- t�cula ON.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
