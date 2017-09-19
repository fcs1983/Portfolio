USE BD_T_G01;
--
-- ----------------------------------------------------------------------------------------
-- Drop Table no SQL Server 2008
-- ----------------------------------------------------------------------------------------
--
If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_FCS_T0323A_PRODUTO') 
     and parent_object_id = OBJECT_ID(N'dbo.FCS_T0323A_PRODUTO'))
   ALTER TABLE  dbo.FCS_T0323A_PRODUTO
      DROP CONSTRAINT CK_FCS_T0323A_PRODUTO;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.FCS_T0323A_PRODUTO') 
      and type in (N'U'))
   DROP TABLE dbo.FCS_T0323A_PRODUTO;
--
-- ----------------------------------------------------------------------------------------
-- Criação da tabela.
-- ----------------------------------------------------------------------------------------
--
CREATE TABLE dbo.FCS_T0323A_PRODUTO (
  cod_produto  numeric  (5, 0)  NOT NULL ,
  descricao    char     (30)        NULL ,
  un_medida    char     (10)        NULL ,
  valor_un     numeric  (6, 0)      NULL ,

    
  CONSTRAINT PK_FCS_T0323A_PRODUTO PRIMARY KEY CLUSTERED (cod_produto  asc),
  
);
--

