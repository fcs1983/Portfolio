namespace wfaBancoDados
{
    partial class frmDepto
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblSigla = new System.Windows.Forms.Label();
            this.lblNome = new System.Windows.Forms.Label();
            this.txtSigla = new System.Windows.Forms.TextBox();
            this.txtNome = new System.Windows.Forms.TextBox();
            this.btnAnterior = new System.Windows.Forms.Button();
            this.btnProx = new System.Windows.Forms.Button();
            this.btnNovo = new System.Windows.Forms.Button();
            this.btnSalvar = new System.Windows.Forms.Button();
            this.btnExclui = new System.Windows.Forms.Button();
            this.cnnDepto = new System.Data.OleDb.OleDbConnection();
            this.oleDbSelectCommand1 = new System.Data.OleDb.OleDbCommand();
            this.oleDbInsertCommand1 = new System.Data.OleDb.OleDbCommand();
            this.oleDbUpdateCommand1 = new System.Data.OleDb.OleDbCommand();
            this.oleDbDeleteCommand1 = new System.Data.OleDb.OleDbCommand();
            this.dtaDepto = new System.Data.OleDb.OleDbDataAdapter();
            this.dtsDepto = new wfaBancoDados.dtsDepto();
            this.panel1 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.dtsDepto)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblSigla
            // 
            this.lblSigla.AutoSize = true;
            this.lblSigla.Location = new System.Drawing.Point(36, 27);
            this.lblSigla.Name = "lblSigla";
            this.lblSigla.Size = new System.Drawing.Size(30, 13);
            this.lblSigla.TabIndex = 0;
            this.lblSigla.Text = "Sigla";
            // 
            // lblNome
            // 
            this.lblNome.AutoSize = true;
            this.lblNome.Location = new System.Drawing.Point(39, 77);
            this.lblNome.Name = "lblNome";
            this.lblNome.Size = new System.Drawing.Size(35, 13);
            this.lblNome.TabIndex = 1;
            this.lblNome.Text = "Nome";
            // 
            // txtSigla
            // 
            this.txtSigla.Location = new System.Drawing.Point(120, 27);
            this.txtSigla.Name = "txtSigla";
            this.txtSigla.Size = new System.Drawing.Size(100, 20);
            this.txtSigla.TabIndex = 2;
            // 
            // txtNome
            // 
            this.txtNome.Location = new System.Drawing.Point(120, 69);
            this.txtNome.Name = "txtNome";
            this.txtNome.Size = new System.Drawing.Size(285, 20);
            this.txtNome.TabIndex = 3;
            // 
            // btnAnterior
            // 
            this.btnAnterior.Location = new System.Drawing.Point(3, 13);
            this.btnAnterior.Name = "btnAnterior";
            this.btnAnterior.Size = new System.Drawing.Size(75, 23);
            this.btnAnterior.TabIndex = 4;
            this.btnAnterior.Text = "Anterior";
            this.btnAnterior.UseVisualStyleBackColor = true;
            this.btnAnterior.Click += new System.EventHandler(this.btnAnterior_Click);
            // 
            // btnProx
            // 
            this.btnProx.Location = new System.Drawing.Point(93, 13);
            this.btnProx.Name = "btnProx";
            this.btnProx.Size = new System.Drawing.Size(75, 23);
            this.btnProx.TabIndex = 5;
            this.btnProx.Text = "Próximo";
            this.btnProx.UseVisualStyleBackColor = true;
            this.btnProx.Click += new System.EventHandler(this.btnProx_Click);
            // 
            // btnNovo
            // 
            this.btnNovo.Location = new System.Drawing.Point(190, 13);
            this.btnNovo.Name = "btnNovo";
            this.btnNovo.Size = new System.Drawing.Size(75, 23);
            this.btnNovo.TabIndex = 6;
            this.btnNovo.Text = "Novo";
            this.btnNovo.UseVisualStyleBackColor = true;
            this.btnNovo.Click += new System.EventHandler(this.btnNovo_Click);
            // 
            // btnSalvar
            // 
            this.btnSalvar.Location = new System.Drawing.Point(287, 13);
            this.btnSalvar.Name = "btnSalvar";
            this.btnSalvar.Size = new System.Drawing.Size(75, 23);
            this.btnSalvar.TabIndex = 7;
            this.btnSalvar.Text = "Salvar";
            this.btnSalvar.UseVisualStyleBackColor = true;
            this.btnSalvar.Click += new System.EventHandler(this.btnSalvar_Click);
            // 
            // btnExclui
            // 
            this.btnExclui.Location = new System.Drawing.Point(381, 13);
            this.btnExclui.Name = "btnExclui";
            this.btnExclui.Size = new System.Drawing.Size(75, 23);
            this.btnExclui.TabIndex = 8;
            this.btnExclui.Text = "Remover";
            this.btnExclui.UseVisualStyleBackColor = true;
            this.btnExclui.Click += new System.EventHandler(this.btnExclui_Click);
            // 
            // cnnDepto
            // 
            this.cnnDepto.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=\"E:\\C#\\Data Bases\\Alunos.accdb\"";
            // 
            // oleDbSelectCommand1
            // 
            this.oleDbSelectCommand1.CommandText = "SELECT        [Tabela departamentos].*\r\nFROM            [Tabela departamentos]";
            this.oleDbSelectCommand1.Connection = this.cnnDepto;
            // 
            // oleDbInsertCommand1
            // 
            this.oleDbInsertCommand1.CommandText = "INSERT INTO `Tabela departamentos` (`dep_sgl`, `dep_nom`) VALUES (?, ?)";
            this.oleDbInsertCommand1.Connection = this.cnnDepto;
            this.oleDbInsertCommand1.Parameters.AddRange(new System.Data.OleDb.OleDbParameter[] {
            new System.Data.OleDb.OleDbParameter("dep_sgl", System.Data.OleDb.OleDbType.VarWChar, 0, "dep_sgl"),
            new System.Data.OleDb.OleDbParameter("dep_nom", System.Data.OleDb.OleDbType.VarWChar, 0, "dep_nom")});
            // 
            // oleDbUpdateCommand1
            // 
            this.oleDbUpdateCommand1.CommandText = "UPDATE `Tabela departamentos` SET `dep_sgl` = ?, `dep_nom` = ? WHERE ((`dep_sgl` " +
    "= ?) AND ((? = 1 AND `dep_nom` IS NULL) OR (`dep_nom` = ?)))";
            this.oleDbUpdateCommand1.Connection = this.cnnDepto;
            this.oleDbUpdateCommand1.Parameters.AddRange(new System.Data.OleDb.OleDbParameter[] {
            new System.Data.OleDb.OleDbParameter("dep_sgl", System.Data.OleDb.OleDbType.VarWChar, 0, "dep_sgl"),
            new System.Data.OleDb.OleDbParameter("dep_nom", System.Data.OleDb.OleDbType.VarWChar, 0, "dep_nom"),
            new System.Data.OleDb.OleDbParameter("Original_dep_sgl", System.Data.OleDb.OleDbType.VarWChar, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "dep_sgl", System.Data.DataRowVersion.Original, null),
            new System.Data.OleDb.OleDbParameter("IsNull_dep_nom", System.Data.OleDb.OleDbType.Integer, 0, System.Data.ParameterDirection.Input, ((byte)(0)), ((byte)(0)), "dep_nom", System.Data.DataRowVersion.Original, true, null),
            new System.Data.OleDb.OleDbParameter("Original_dep_nom", System.Data.OleDb.OleDbType.VarWChar, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "dep_nom", System.Data.DataRowVersion.Original, null)});
            // 
            // oleDbDeleteCommand1
            // 
            this.oleDbDeleteCommand1.CommandText = "DELETE FROM `Tabela departamentos` WHERE ((`dep_sgl` = ?) AND ((? = 1 AND `dep_no" +
    "m` IS NULL) OR (`dep_nom` = ?)))";
            this.oleDbDeleteCommand1.Connection = this.cnnDepto;
            this.oleDbDeleteCommand1.Parameters.AddRange(new System.Data.OleDb.OleDbParameter[] {
            new System.Data.OleDb.OleDbParameter("Original_dep_sgl", System.Data.OleDb.OleDbType.VarWChar, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "dep_sgl", System.Data.DataRowVersion.Original, null),
            new System.Data.OleDb.OleDbParameter("IsNull_dep_nom", System.Data.OleDb.OleDbType.Integer, 0, System.Data.ParameterDirection.Input, ((byte)(0)), ((byte)(0)), "dep_nom", System.Data.DataRowVersion.Original, true, null),
            new System.Data.OleDb.OleDbParameter("Original_dep_nom", System.Data.OleDb.OleDbType.VarWChar, 0, System.Data.ParameterDirection.Input, false, ((byte)(0)), ((byte)(0)), "dep_nom", System.Data.DataRowVersion.Original, null)});
            // 
            // dtaDepto
            // 
            this.dtaDepto.DeleteCommand = this.oleDbDeleteCommand1;
            this.dtaDepto.InsertCommand = this.oleDbInsertCommand1;
            this.dtaDepto.SelectCommand = this.oleDbSelectCommand1;
            this.dtaDepto.TableMappings.AddRange(new System.Data.Common.DataTableMapping[] {
            new System.Data.Common.DataTableMapping("Table", "Tabela departamentos", new System.Data.Common.DataColumnMapping[] {
                        new System.Data.Common.DataColumnMapping("dep_sgl", "dep_sgl"),
                        new System.Data.Common.DataColumnMapping("dep_nom", "dep_nom")})});
            this.dtaDepto.UpdateCommand = this.oleDbUpdateCommand1;
            // 
            // dtsDepto
            // 
            this.dtsDepto.DataSetName = "dtsDepto";
            this.dtsDepto.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // panel1
            // 
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panel1.Controls.Add(this.btnAnterior);
            this.panel1.Controls.Add(this.btnExclui);
            this.panel1.Controls.Add(this.btnProx);
            this.panel1.Controls.Add(this.btnSalvar);
            this.panel1.Controls.Add(this.btnNovo);
            this.panel1.Location = new System.Drawing.Point(12, 108);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(474, 50);
            this.panel1.TabIndex = 9;
            // 
            // frmDepto
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(498, 189);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.txtNome);
            this.Controls.Add(this.txtSigla);
            this.Controls.Add(this.lblNome);
            this.Controls.Add(this.lblSigla);
            this.Name = "frmDepto";
            this.Text = "frmDepto";
            this.Load += new System.EventHandler(this.frmDepto_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dtsDepto)).EndInit();
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblSigla;
        private System.Windows.Forms.Label lblNome;
        private System.Windows.Forms.TextBox txtSigla;
        private System.Windows.Forms.TextBox txtNome;
        private System.Windows.Forms.Button btnAnterior;
        private System.Windows.Forms.Button btnProx;
        private System.Windows.Forms.Button btnNovo;
        private System.Windows.Forms.Button btnSalvar;
        private System.Windows.Forms.Button btnExclui;
        private System.Data.OleDb.OleDbConnection cnnDepto;
        private System.Data.OleDb.OleDbCommand oleDbSelectCommand1;
        private System.Data.OleDb.OleDbCommand oleDbInsertCommand1;
        private System.Data.OleDb.OleDbCommand oleDbUpdateCommand1;
        private System.Data.OleDb.OleDbCommand oleDbDeleteCommand1;
        private System.Data.OleDb.OleDbDataAdapter dtaDepto;
        private dtsDepto dtsDepto;
        private System.Windows.Forms.Panel panel1;
    }
}