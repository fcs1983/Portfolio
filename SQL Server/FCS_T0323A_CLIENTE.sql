USE BD_T_G01;
--
-- ----------------------------------------------------------------------------------------
-- Drop Table no SQL Server 2008
-- ----------------------------------------------------------------------------------------
--
If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_FCS_T0323A_CLIENTE') 
     and parent_object_id = OBJECT_ID(N'dbo.FCS_T0323A_CLIENTE'))
   ALTER TABLE  dbo.FCS_T0323A_CLIENTE
      DROP CONSTRAINT CK_FCS_T0323A_CLIENTE;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.FCS_T0323A_CLIENTE') 
      and type in (N'U'))
   DROP TABLE dbo.FCS_T0323A_CLIENTE;
--
-- ----------------------------------------------------------------------------------------
-- Criação da tabela.
-- ----------------------------------------------------------------------------------------
--
CREATE TABLE dbo.FCS_T0323A_CLIENTE (
  cod_cliente  numeric  (5, 0)  NOT NULL ,
  nome_cliente char     (30)        NULL ,
  cpf_cliente  numeric  (12, 0)     NULL ,
  rg_cliente   numeric  (10, 0)     NULL ,
  sexo_cliente char     (1)         NULL ,
  end_cliente  char     (30)        NULL ,
  tel1_cliente numeric  (11)        NULL ,
  tel2_cliente numeric  (11)        NULL ,
  cel_cliente  numeric  (11)        NULL ,
  com_cliente  numeric  (11)        NULL ,
  fax_cliente  numeric  (11)        NULL ,
  em1_cliente  char     (15)        NULL ,
  em2_cliente  char     (15)        NULL ,
  nasc_cliente date                 NULL ,
  ade_cliente  date                 NULL ,
  est_cliente  char     (10)        NULL ,            
  
  CONSTRAINT PK_FCS_T0323A_CLIENTE PRIMARY KEY CLUSTERED (cod_cliente asc),

);
--

