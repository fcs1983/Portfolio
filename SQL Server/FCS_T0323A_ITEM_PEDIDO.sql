USE BD_T_G01;
--
-- ----------------------------------------------------------------------------------------
-- Drop Table no SQL Server 2008
-- ----------------------------------------------------------------------------------------
--
If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_FCS_T0323A_ITEM_PEDIDO') 
     and parent_object_id = OBJECT_ID(N'dbo.FCS_T0323A_ITEM_PEDIDO'))
   ALTER TABLE  dbo.FCS_T0323A_ITEM_PEDIDO
      DROP CONSTRAINT CK_FCS_T0323A_ITEM_PEDIDO;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.FCS_T0323A_ITEM_PEDIDO') 
      and type in (N'U'))
   DROP TABLE dbo.FCS_T0323A_ITEM_PEDIDO;
--
-- ----------------------------------------------------------------------------------------
-- Criação da tabela.
-- ----------------------------------------------------------------------------------------
--
CREATE TABLE dbo.FCS_T0323A_ITEM_PEDIDO (
  num_pedido   numeric  (5, 0)  NOT NULL ,
  cod_produto  numeric  (5, 0)  NOT NULL ,
  qtde_vedida  numeric  (5, 0)      NULL ,
  
  CONSTRAINT PK_FCS_T0323A_ITEM_PEDIDO PRIMARY KEY CLUSTERED (num_pedido  asc, cod_produto asc),
  CONSTRAINT FK_FCS_T0323A_ITEM_PEDIDO_num_pedido FOREIGN KEY (num_pedido)
   References dbo.FCS_T0323A_PEDIDO (num_pedido),
  CONSTRAINT FK_FCS_T0323A_ITEM_PEDIDO_cod_produto FOREIGN KEY (cod_produto)
   References dbo.FCS_T0323A_PRODUTO (cod_produto),  
);
--

