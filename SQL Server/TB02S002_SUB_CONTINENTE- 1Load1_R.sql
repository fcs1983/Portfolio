-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- INS00001- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Inserir todos os dados na tabela dbo.FCS_TB02S002_SUB_CONTINENTE.
-- Após a inserção, exibir os dados da tabela.
--
-- ----------------------------------------------------------------------------------------
-- Atenção. Indicação do BD a ser usado. Se for o caso, mude o nome do Banco.
-- ----------------------------------------------------------------------------------------
--
USE BD_T_G01;
--
-- ----------------------------------------------------------------------------------------
-- Limpeza prévia da tabela. Excluindo todos os dados.
-- ----------------------------------------------------------------------------------------
--
Delete From dbo.FCS_TB02S002_SUB_CONTINENTE;
--
-- ----------------------------------------------------------------------------------------
-- Inserção dos dados.
-- ----------------------------------------------------------------------------------------
--
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (10, 'África', 1, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (11, 'África Sub-Saariana', 1, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (12, 'África Equatorial', 1, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (21, 'América do Norte', 2, 23473000, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (22, 'América Central', 2, 540000, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (23, 'América do Sul', 2, 17700000, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (30, 'Ásia', 3, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (31, 'Oriente Médio', 3, 6640000, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (32, 'Ásia Meridional', 3, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (33, 'Ásia Oriental', 3, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (34, 'Sudeste Asiático', 3, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (35, 'Extremo Oriente', 3, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (36, 'Indochina', 3, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (37, 'Subcontinente Indiano', 3, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (40, 'Europa', 4, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (41, 'Europa Ocidental', 4, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (42, 'Europa Oriental', 4, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (50, 'Oceania', 5, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (51, 'Australásia', 5, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (52, 'Melanésia', 5, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (53, 'Micronésia', 5, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (54, 'Polinésia', 5, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (60, 'Antartida', 6, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (70, 'Ártico', 7, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (80, 'Fantasia', 8, NULL, NULL);
--
-- ----------------------------------------------------------------------------------------
-- Seleção de todos os dados para visualização do conteúdo da tabela.
-- ----------------------------------------------------------------------------------------
--
Select *
 From dbo.FCS_TB02S002_SUB_CONTINENTE;
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
--
