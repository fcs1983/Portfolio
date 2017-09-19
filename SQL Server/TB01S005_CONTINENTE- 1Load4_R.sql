-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- INS00004- dbo.FCS_TB01S005_CONTINENTE
--
-- Efetue a elimina��o do reFCStro de c�digo 8 da tabela dbo.FCS_TB01S005_CONTINENTE.
-- Ap�s a elimina��o do reFCStro, reinsira o reFCStro de c�digo conforme descrito abaixo.
--   (8, 'Fantasia', 'FAN', NULL, NULL, getdate());
-- Ap�s a inser��o do reFCStro, exibir os dados da tabela.
--
-- ----------------------------------------------------------------------------------------
-- Aten��o. Indica��o do BD a ser usado. Se for o caso, mude o nome do Banco.
-- ----------------------------------------------------------------------------------------
--
USE BD_T_G01;
--
-- ----------------------------------------------------------------------------------------
-- Elimina��o dos dados.
-- ----------------------------------------------------------------------------------------
--
Delete from dbo.FCS_TB01S005_CONTINENTE
 Where codigo = 8;
--
-- ----------------------------------------------------------------------------------------
-- Inser��o dos dados
-- ----------------------------------------------------------------------------------------
--
Insert into dbo.FCS_TB01S005_CONTINENTE values
 (8, 'Fantasia', 'FAN', NULL, NULL, getdate());
--
-- ----------------------------------------------------------------------------------------
-- Sele��o de todos os dados para visualiza��o do conte�do da tabela.
-- ----------------------------------------------------------------------------------------
--
Select *
  From dbo.FCS_TB01S005_CONTINENTE;
--
-- ----------------------------------------------------------------------------------------
-- Coment�rios.
-- ----------------------------------------------------------------------------------------
--
-- Agora, o reFCStro de c�digo 8 est� inserido de modo correto.
-- Criamos um novo continente, denominado FANTASIA (Fantasy).
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
