-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- QUERY021- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Quantos s�o os subcontinentes existentes?
-- Aten��o: Colocar label (r�tulo) nas colunas resultantes.
-- Aten��o: Imprimir tamb�m:
--          Qual � a soma das �reas de todos os subcontinentes?
--          Qual � a m�dia das �reas de todos os subcontinentes?
--          Qual � a maior �rea de um subcontinente?
--          Qual � a menor �rea de um subcontinente?
--          Qual � o desvio padr�o da �rea de todos os subcontinentes?
--          Qual � a vari�ncia da �rea de todos os subcontinentes?
-- Aten��o: Exibir como primeira coluna da tupla a data/hora do sistema (ou data/hora local
--          ou data/hora de Bras�lia), separada das demais colunas por um "-" (h�fen).
-- Aten��o: Exibir como terceira coluna da tupla  a  data/hora universal  (ou  data/hora de
--          Greenwich ou data/hora de Londres), separada das demais colunas por um "-" (h�-
--          fen).
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
Select getdate()      'Data/hora local',
       ' - '          ' - ',
       getutcdate()   'Data/hora universal',
       ' - '          ' - ',
       count(*)       'Total de subcontinentes',
       sum(ext_km2)   '�rea de todos subcontinentes',
       avg(ext_km2)   'M�dia da �rea dos subcontinentes',
       max(ext_km2)   'Maior �rea de subcontinentes',
       min(ext_km2)   'Menor �rea de subcontinentes',
       stdev(ext_km2) 'Desvio Padr�o da �rea de subcontinentes',
       var(ext_km2)   'Vari�ncia da �rea de subcontinentes'
  From dbo.FCS_TB02S002_SUB_CONTINENTE;
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
-- Como a coluna resultante da execu��o de uma fun��o de agregaga��o n�o veio de uma coluna
-- espec�fica da tabela, esta coluna n�o tem nome. No cabe�alho desta coluna ir� constar  o
-- t�tulo sem nome (NO COLUMN NAME).
--
-- Esta n�o � uma boa forma de apresentar  uma determinada informa��o, sendo necess�rio al-
-- terar o nome da coluna de modo que o seu conte�do seja claro  para quem estiver lendo  o
-- relat�rio.
--
-- Para evitar este nome de coluna, utiliza-se de um label ou r�tulo de coluna.
--
-- V�rias fun��es podem ser exibidas na mesma consulta.
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
