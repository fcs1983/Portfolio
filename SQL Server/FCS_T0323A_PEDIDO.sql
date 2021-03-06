USE BD_T_G01;
--
-- ----------------------------------------------------------------------------------------
-- Drop Table no SQL Server 2008
-- ----------------------------------------------------------------------------------------
--
If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_FCS_T0323A_PEDIDO') 
     and parent_object_id = OBJECT_ID(N'dbo.FCS_T0323A_PEDIDO'))
   ALTER TABLE  dbo.FCS_T0323A_PEDIDO
      DROP CONSTRAINT CK_FCS_T0323A_PEDIDO;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.FCS_T0323A_PEDIDO') 
      and type in (N'U'))
   DROP TABLE dbo.FCS_T0323A_PEDIDO;
--
-- ----------------------------------------------------------------------------------------
-- Cria��o da tabela.
-- ----------------------------------------------------------------------------------------
--
CREATE TABLE dbo.FCS_T0323A_PEDIDO (
  num_pedido   numeric  (5, 0)  NOT NULL ,
  data_pedido  date                 NULL ,
  situacao     char     (20)        NULL ,
  cod_cliente  numeric  (5, 0)      NULL ,
  cod_vendedor numeric  (5, 0)      NULL ,
  des_total    numeric  (6, 2)      NULL ,
  val_total    numeric  (6, 2)      NULL ,

  CONSTRAINT PK_FCS_T0323A_PEDIDO PRIMARY KEY CLUSTERED (num_pedido  asc),
  CONSTRAINT FK_FCS_T0323A_PEDIDO_cod_cliente FOREIGN KEY (cod_cliente)
   References dbo.FCS_T0323A_CLIENTE (cod_cliente),
  CONSTRAINT FK_FCS_T0323A_PEDIDO_cod_vendedor FOREIGN KEY (cod_vendedor)
   References dbo.FCS_T0323A_VENDEDOR (cod_vendedor),  
);
--

