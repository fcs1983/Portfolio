/*
   quinta-feira, 7 de abril de 201614:42:30
   Usuário: aluno
   Servidor: MSMANAGER\SQLSERVER2012
   Banco de Dados: BD_T_G01
   Aplicativo: 
*/

/* Para impedir possíveis problemas de perda de dados, analise este script detalhadamente antes de executá-lo fora do contexto do designer de banco de dados.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.G01_T0420F_VITIMAS SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.G01_T0420F_SEQ_VITIMA
	(
	seq_vit numeric(5, 0) NOT NULL,
	id_vitima numeric(5, 0) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.G01_T0420F_SEQ_VITIMA ADD CONSTRAINT
	PK_G01_T0420F_SEQ_VITIMA PRIMARY KEY CLUSTERED 
	(
	seq_vit
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.G01_T0420F_SEQ_VITIMA ADD CONSTRAINT
	FK_G01_T0420F_SEQ_VITIMA_id_vitima FOREIGN KEY
	(
	id_vitima
	) REFERENCES dbo.G01_T0420F_VITIMAS
	(
	id_vitima
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.G01_T0420F_SEQ_VITIMA SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
