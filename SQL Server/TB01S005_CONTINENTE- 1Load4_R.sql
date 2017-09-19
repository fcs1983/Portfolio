-- ----------------------------------------------------------------------------------------
-- Gabriel Issa Shammas (GIS) - 01 de janeiro de 2000 a 31 de dezembro de 2014
-- ----------------------------------------------------------------------------------------
-- Doc- INS00004- dbo.FCS_TB01S005_CONTINENTE
--
-- Efetue a eliminação do reFCStro de código 8 da tabela dbo.FCS_TB01S005_CONTINENTE.
-- Após a eliminação do reFCStro, reinsira o reFCStro de código conforme descrito abaixo.
--   (8, 'Fantasia', 'FAN', NULL, NULL, getdate());
-- Após a inserção do reFCStro, exibir os dados da tabela.
--
-- ----------------------------------------------------------------------------------------
-- Atenção. Indicação do BD a ser usado. Se for o caso, mude o nome do Banco.
-- ----------------------------------------------------------------------------------------
--
USE BD_T_G01;
--
-- ----------------------------------------------------------------------------------------
-- Eliminação dos dados.
-- ----------------------------------------------------------------------------------------
--
Delete from dbo.FCS_TB01S005_CONTINENTE
 Where codigo = 8;
--
-- ----------------------------------------------------------------------------------------
-- Inserção dos dados
-- ----------------------------------------------------------------------------------------
--
Insert into dbo.FCS_TB01S005_CONTINENTE values
 (8, 'Fantasia', 'FAN', NULL, NULL, getdate());
--
-- ----------------------------------------------------------------------------------------
-- Seleção de todos os dados para visualização do conteúdo da tabela.
-- ----------------------------------------------------------------------------------------
--
Select *
  From dbo.FCS_TB01S005_CONTINENTE;
--
-- ----------------------------------------------------------------------------------------
-- Comentários.
-- ----------------------------------------------------------------------------------------
--
-- Agora, o reFCStro de código 8 está inserido de modo correto.
-- Criamos um novo continente, denominado FANTASIA (Fantasy).
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
