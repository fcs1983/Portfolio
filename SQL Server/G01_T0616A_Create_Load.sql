
USE BD_T_G01;

--
-- ----------------------------------------------------------------------------------------
-- Drop Table
-- ----------------------------------------------------------------------------------------
--

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_dbo.G01_ITEM_VACINA') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_ITEM_VACINA'))
   ALTER TABLE  dbo.G01_ITEM_VACINA
      DROP CONSTRAINT CK_G01_ITEM_VACINA;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_ITEM_VACINA')
      and type in (N'U'))
   DROP TABLE dbo.G01_ITEM_VACINA;      

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_PACIENTES') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_PACIENTES'))
   ALTER TABLE  dbo.G01_PACIENTES
      DROP CONSTRAINT CK_G01_PACIENTES;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_PACIENTES') 
      and type in (N'U'))
   DROP TABLE dbo.G01_PACIENTES;

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.G01_VACINA') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_VACINA'))
   ALTER TABLE  dbo.G01_VACINA
      DROP CONSTRAINT CK_G01_VACINA;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_VACINA') 
      and type in (N'U'))
   DROP TABLE dbo.G01_VACINA;   

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_FUNCIONARIOS') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_FUNCIONARIOS'))
   ALTER TABLE  dbo.G01_FUNCIONARIOS
      DROP CONSTRAINT CK_G01_FUNCIONARIOS;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_FUNCIONARIOS')
      and type in (N'U'))
   DROP TABLE dbo.G01_FUNCIONARIOS;
   
--
-- ----------------------------------------------------------------------------------------
-- Criação da tabela.
-- ----------------------------------------------------------------------------------------
--

CREATE TABLE dbo.G01_PACIENTES (
  n_carteira  numeric  (5, 0)  NOT NULL ,
  nome        char     (20)        NULL ,
  e_tipo      char     (10)        NULL ,
  e_nome      char     (50)        NULL ,
  e_num       numeric  (5, 0)      NULL ,
  e_bairro    char     (20)        NULL ,
  e_cidade    char     (20)        NULL ,
  e_uf        char     (2)         NULL ,  
  tel_fixo    numeric  (10,0)      NULL ,
  tel_cel     numeric  (11,0)      NULL ,
  data_nasc   date                 NULL ,
  sexo        char     (1)         NULL ,
  rg          numeric  (11,0)      NULL ,
  
  CONSTRAINT PK_G01_PACIENTES PRIMARY KEY CLUSTERED (n_carteira asc),
);

CREATE TABLE dbo.G01_VACINA (
  codigo      numeric  (6, 0)  NOT NULL ,
  nome        varchar  (50)    NOT NULL ,
  doses       numeric  (10, 0) NOT NULL ,
  validade    date                 NULL ,
  
  CONSTRAINT PK_G01_VACINA PRIMARY KEY CLUSTERED (codigo asc)
   WITH
    FILLFACTOR = 10,
  CONSTRAINT CK_G01_VACINA_codigo CHECK
   (codigo between 0 and 9)
);

CREATE TABLE dbo.G01_FUNCIONARIOS (
  cod_func    numeric  (3,0)   NOT NULL,
  nome_func	  varchar  (25)		   NULL,
  depto		  varchar  (25)		   NULL,
  função_func varchar  (25)		   NULL,
  ramal	      numeric  (4,0)	   NULL,
  idade       numeric  (3)         NULL,
  sexo        char     (2)         NULL,
  salario     numeric  (7,2)       NULL, 

  CONSTRAINT PK_G01_CONTINENTE PRIMARY KEY CLUSTERED 
	(cod_func  asc)
);

CREATE TABLE dbo.G01_ITEM_VACINA ( 
  n_carteira  numeric  (5,0)   NOT NULL,
  cod_vacina  numeric  (6,0)   NOT NULL,
  cod_func    numeric  (3,0)   NOT NULL,
  data_hora   date                 NULL,
  local       char     (25)        NULL,

  CONSTRAINT PK_G01_ITEM_VACINA Primary Key Clustered
    (n_carteira, cod_vacina),
  CONSTRAINT FK_G01_ITEM_VACINA_n_carteira FOREIGN KEY (n_carteira)
   References dbo.G01_PACIENTES (n_carteira),
  CONSTRAINT FK_G01_ITEM_VACINA_cod_vacina FOREIGN KEY (cod_vacina)
   References dbo.G01_VACINA (codigo),
  CONSTRAINT FK_G01_ITEM_VACINA_cod_func FOREIGN KEY (cod_func)
   References dbo.G01_FUNCIONARIOS (cod_func),
);
   
--
-- ----------------------------------------------------------------------------------------
-- Limpeza prévia da tabela. Excluindo todos os dados.
-- ----------------------------------------------------------------------------------------
--

Delete From dbo.G01_PACIENTES;
Delete From dbo.G01_VACINA;
Delete From dbo.G01_FUNCIONARIOS;
Delete From dbo.G01_ITEM_VACINA;

--
-- ----------------------------------------------------------------------------------------
-- Inserção dos dados.
-- ----------------------------------------------------------------------------------------
--

Insert into dbo.G01_PACIENTES values
  (11111, 'José da Silva', 'Av.', 'Tucuruvi', 150, 'Tucuruvi', 'São Paulo', 'SP', 1133447755, 11988990011, '20000517', 'M', 5566778899);
Insert into dbo.G01_PACIENTES values
  (22222, 'João de Almeida', 'Rua', 'dos Maracujás', 150, 'Vila Mazzei', 'São Paulo', 'SP', 1155550000, 11999911111, '19900111', 'M', 5555000033);  
Insert into dbo.G01_PACIENTES values
  (33333, 'Maria Esperança', 'Rua', 'Calandra', 1290, 'Jaçana', 'São Paulo', 'SP', 1144778899, 11544339903, '19801021', 'F', 0099887766);
Insert into dbo.G01_PACIENTES values
  (44444, 'Bruno Senna', 'Av.', 'Dr. Cesar', 35, 'Santana', 'São Paulo', 'SP', 1156789563, 11954357846, '19791212', 'M', 8653685467);
Insert into dbo.G01_PACIENTES values
  (55555, 'Ingrid Guimarães', 'Rua', 'Dr. Jorge Miranda', 200, 'Luz', 'São Paulo', 'SP', 1115484531, 11945885678, '20100613', 'F', 4798640754);
Insert into dbo.G01_PACIENTES values
  (66666, 'Beatriz Vichessi', 'Av.', 'Sanatório', 450, 'Jardim Modelo', 'São Paulo', 'SP', 1175547873, 11375373423, '20051116', 'F', 5468451354);  
 Insert into dbo.G01_PACIENTES values
  (77777, 'Flávio Ricco', 'Rua', 'Caviana', 180, 'Vila Guarani', 'São Paulo', 'SP', 1160987346, 11548545454, '20020202', 'M', 6789375629);
Insert into dbo.G01_PACIENTES values
  (88888, 'José Carlos Nery', 'Rua', 'São Manoel', 172, 'Vila Cidade Jardim', 'Avaré', 'SP', 1467478578, 14575678456, '19831116', 'M', 4784567356);  
Insert into dbo.G01_PACIENTES values
  (99999, 'Thaís Nicoleti', 'Rua', 'Pedro Velho', 551, 'Partenon', 'Porto Alegre', 'RS', 5149876389, 51688473456, '19600917', 'F', 3745862345);
Insert into dbo.G01_PACIENTES values
  (00000, 'Márcia Pereira', 'Av.', 'Europa', 149, 'Pinheiros', 'São Paulo', 'SP', 1156274444, 11456356356, '20010911', 'F', 4769384263);  
  
Insert into dbo.G01_VACINA values
  (1, 'BCG-ID', 1, NULL);
Insert into dbo.G01_VACINA values
  (2, 'Hepatite B ', 3, NULL);
Insert into dbo.G01_VACINA values
  (3, 'Contra a Pólio', 3, NULL);
Insert into dbo.G01_VACINA values
  (4, 'Tríplice Viral',3, NULL);
Insert into dbo.G01_VACINA values
  (5, 'Febre Amarela', 3, NULL);
Insert into dbo.G01_VACINA values
  (6, 'Dupla Adulto', 3, NULL);
Insert into dbo.G01_VACINA values
  (7, 'Influenza', 100, NULL);
Insert into dbo.G01_VACINA values
  (8, ' Meningococo C', 3, NULL);
Insert into dbo.G01_VACINA values
  (9, 'H1N1', 100, NULL);
Insert into dbo.G01_VACINA values
  (0, 'Tríplice Bacteriana', 6, NULL);

Insert into dbo.G01_FUNCIONARIOS values
  (1, 'Raymond', 'medico', 'medico', 4586, 40, 'M', 5000.00);
Insert into dbo.G01_FUNCIONARIOS values
  (2, 'Valentine', 'enfermaria', 'enfermeira', 9347, 29, 'F', 2500.75);
Insert into dbo.G01_FUNCIONARIOS values
  (3, 'Felicia', 'enfermaria', 'enfermeira', 9347, 58, 'F', 3000.00);
Insert into dbo.G01_FUNCIONARIOS values
  (4, 'Zack', 'atendimento', 'atendente', 7584, 18, 'M', 1500.89);
Insert into dbo.G01_FUNCIONARIOS values
  (5, 'Rogers', 'atendimento', 'atendente', 8744, 32, 'M', 1615.00);

Insert into dbo.G01_ITEM_VACINA values
  (11111, 1, 1, '20160615', 'Posto');
Insert into dbo.G01_ITEM_VACINA values
  (22222, 2, 2, '20160615', 'Clinica');
Insert into dbo.G01_ITEM_VACINA values
  (33333, 3, 3, '20160615', 'Posto');
Insert into dbo.G01_ITEM_VACINA values
  (44444, 4, 4, '20160615', 'Clinica');
Insert into dbo.G01_ITEM_VACINA values
  (55555, 5, 5, '20160615', 'Posto');
Insert into dbo.G01_ITEM_VACINA values
  (66666, 6, 1, '20160615', 'Clinica');
Insert into dbo.G01_ITEM_VACINA values
  (77777, 7, 2, '20160615', 'Posto');
Insert into dbo.G01_ITEM_VACINA values
  (88888, 8, 3, '20160615', 'Clinica');
Insert into dbo.G01_ITEM_VACINA values
  (99999, 9, 4, '20160615', 'Posto');
Insert into dbo.G01_ITEM_VACINA values
  (00000,0, 5, '20160615', 'Clinica');  
  
--
-- ----------------------------------------------------------------------------------------
-- Seleção de todos os dados para visualização do conteúdo da tabela.
-- ----------------------------------------------------------------------------------------
--

Select *
 From dbo.G01_PACIENTES;
Select *
 From dbo.G01_VACINA; 
Select *
 From dbo.G01_FUNCIONARIOS; 
Select *
 From dbo.G01_ITEM_VACINA; 
 
--
-- ----------------------------------------------------------------------------------------
-- Fim das Queries
-- ----------------------------------------------------------------------------------------
--
 
  
  
  
  
  
  
  
  
  