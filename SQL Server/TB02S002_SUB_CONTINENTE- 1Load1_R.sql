-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (FCS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- INS00001- dbo.FCS_TB02S002_SUB_CONTINENTE
--
-- Inserir todos os dados na tabela dbo.FCS_TB02S002_SUB_CONTINENTE.
-- Ap�s a inser��o, exibir os dados da tabela.
--
-- ----------------------------------------------------------------------------------------
-- Aten��o. Indica��o do BD a ser usado. Se for o caso, mude o nome do Banco.
-- ----------------------------------------------------------------------------------------
--
USE BD_T_G01;
--
-- ----------------------------------------------------------------------------------------
-- Limpeza pr�via da tabela. Excluindo todos os dados.
-- ----------------------------------------------------------------------------------------
--
Delete From dbo.FCS_TB02S002_SUB_CONTINENTE;
--
-- ----------------------------------------------------------------------------------------
-- Inser��o dos dados.
-- ----------------------------------------------------------------------------------------
--
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (10, '�frica', 1, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (11, '�frica Sub-Saariana', 1, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (12, '�frica Equatorial', 1, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (21, 'Am�rica do Norte', 2, 23473000, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (22, 'Am�rica Central', 2, 540000, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (23, 'Am�rica do Sul', 2, 17700000, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (30, '�sia', 3, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (31, 'Oriente M�dio', 3, 6640000, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (32, '�sia Meridional', 3, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (33, '�sia Oriental', 3, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (34, 'Sudeste Asi�tico', 3, NULL, NULL);
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
  (51, 'Austral�sia', 5, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (52, 'Melan�sia', 5, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (53, 'Micron�sia', 5, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (54, 'Polin�sia', 5, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (60, 'Antartida', 6, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (70, '�rtico', 7, NULL, NULL);
Insert into dbo.FCS_TB02S002_SUB_CONTINENTE values
  (80, 'Fantasia', 8, NULL, NULL);
--
-- ----------------------------------------------------------------------------------------
-- Sele��o de todos os dados para visualiza��o do conte�do da tabela.
-- ----------------------------------------------------------------------------------------
--
Select *
 From dbo.FCS_TB02S002_SUB_CONTINENTE;
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
--
