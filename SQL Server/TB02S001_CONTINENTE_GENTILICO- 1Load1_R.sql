-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- INS00001- dbo.GIS_TB02S001_CONTINENTE_GENTILICO
--
-- Inserir todos os dados na tabela dbo.GIS_TB02S001_CONTINENTE_GENTILICO.
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
Delete From dbo.FCS_TB02S001_CONTINENTE_GENTILICO;
--
-- ----------------------------------------------------------------------------------------
-- Inser��o dos dados.
-- ----------------------------------------------------------------------------------------
--
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (1, 'F', 01, 'Africana', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (1, 'F', 02, 'Afro', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (1, 'M', 01, 'Africano', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (1, 'M', 02, 'Afro', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (2, 'F', 01, 'Americana', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (2, 'M', 01, 'Americano', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (3, 'F', 01, 'Eurasiana', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (3, 'F', 02, 'Asi�tica', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (3, 'F', 03, 'Asiana', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (3, 'F', 04, 'Asi�nica', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (3, 'F', 05, '�sia', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (3, 'M', 01, 'Eurasiano', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (3, 'M', 02, 'Asi�tico', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (3, 'M', 03, 'Asiano', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (3, 'M', 04, 'Asi�nico', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (3, 'M', 05, '�sio', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (4, 'F', 01, 'Eurasiana', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (4, 'F', 02, 'Europ�ia', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (4, 'M', 01, 'Eurasiano', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (4, 'M', 02, 'Europeu', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (5, 'F', 01, 'Oce�nica', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (5, 'M', 01, 'Oce�nico', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (6, 'F', 01, 'Ant�rtica', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (6, 'M', 01, 'Ant�rtico', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (7, 'F', 01, '�rtica', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (7, 'M', 01, '�rtico', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (8, 'F', 01, 'Fantasiosa', NULL);
Insert into dbo.FCS_TB02S001_CONTINENTE_GENTILICO values
  (8, 'M', 01, 'Fantasioso', NULL);
--
-- ----------------------------------------------------------------------------------------
-- Sele��o de todos os dados para visualiza��o do conte�do da tabela.
-- ----------------------------------------------------------------------------------------
--
Select *
 From dbo.FCS_TB02S001_CONTINENTE_GENTILICO;
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
