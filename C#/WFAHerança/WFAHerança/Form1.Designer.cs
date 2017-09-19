namespace WFAHerança
{
    partial class Form1
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
            this.grpTipo = new System.Windows.Forms.GroupBox();
            this.rdbPJuridica = new System.Windows.Forms.RadioButton();
            this.rdbPFisica = new System.Windows.Forms.RadioButton();
            this.lblNome = new System.Windows.Forms.Label();
            this.lblCPF = new System.Windows.Forms.Label();
            this.txtNome = new System.Windows.Forms.TextBox();
            this.grpBotoes = new System.Windows.Forms.GroupBox();
            this.btnSair = new System.Windows.Forms.Button();
            this.btnLimpar = new System.Windows.Forms.Button();
            this.btnExibir = new System.Windows.Forms.Button();
            this.btnCadastrar = new System.Windows.Forms.Button();
            this.lblRegistro = new System.Windows.Forms.Label();
            this.mskCPF = new System.Windows.Forms.TextBox();
            this.grpTipo.SuspendLayout();
            this.grpBotoes.SuspendLayout();
            this.SuspendLayout();
            // 
            // grpTipo
            // 
            this.grpTipo.Controls.Add(this.rdbPJuridica);
            this.grpTipo.Controls.Add(this.rdbPFisica);
            this.grpTipo.Location = new System.Drawing.Point(13, 13);
            this.grpTipo.Name = "grpTipo";
            this.grpTipo.Size = new System.Drawing.Size(176, 82);
            this.grpTipo.TabIndex = 0;
            this.grpTipo.TabStop = false;
            this.grpTipo.Text = "Tipo";
            // 
            // rdbPJuridica
            // 
            this.rdbPJuridica.AutoSize = true;
            this.rdbPJuridica.Location = new System.Drawing.Point(25, 43);
            this.rdbPJuridica.Name = "rdbPJuridica";
            this.rdbPJuridica.Size = new System.Drawing.Size(101, 17);
            this.rdbPJuridica.TabIndex = 1;
            this.rdbPJuridica.TabStop = true;
            this.rdbPJuridica.Text = "Pessoa Jurídica";
            this.rdbPJuridica.UseVisualStyleBackColor = true;
            // 
            // rdbPFisica
            // 
            this.rdbPFisica.AutoSize = true;
            this.rdbPFisica.Location = new System.Drawing.Point(25, 20);
            this.rdbPFisica.Name = "rdbPFisica";
            this.rdbPFisica.Size = new System.Drawing.Size(92, 17);
            this.rdbPFisica.TabIndex = 0;
            this.rdbPFisica.TabStop = true;
            this.rdbPFisica.Text = "Pessoa Fisíca";
            this.rdbPFisica.UseVisualStyleBackColor = true;
            // 
            // lblNome
            // 
            this.lblNome.AutoSize = true;
            this.lblNome.Location = new System.Drawing.Point(244, 33);
            this.lblNome.Name = "lblNome";
            this.lblNome.Size = new System.Drawing.Size(35, 13);
            this.lblNome.TabIndex = 1;
            this.lblNome.Text = "Nome";
            // 
            // lblCPF
            // 
            this.lblCPF.AutoSize = true;
            this.lblCPF.Location = new System.Drawing.Point(247, 56);
            this.lblCPF.Name = "lblCPF";
            this.lblCPF.Size = new System.Drawing.Size(27, 13);
            this.lblCPF.TabIndex = 2;
            this.lblCPF.Text = "CPF";
            // 
            // txtNome
            // 
            this.txtNome.Location = new System.Drawing.Point(339, 25);
            this.txtNome.Name = "txtNome";
            this.txtNome.Size = new System.Drawing.Size(100, 20);
            this.txtNome.TabIndex = 4;
            // 
            // grpBotoes
            // 
            this.grpBotoes.Controls.Add(this.btnSair);
            this.grpBotoes.Controls.Add(this.btnLimpar);
            this.grpBotoes.Controls.Add(this.btnExibir);
            this.grpBotoes.Controls.Add(this.btnCadastrar);
            this.grpBotoes.Location = new System.Drawing.Point(13, 111);
            this.grpBotoes.Name = "grpBotoes";
            this.grpBotoes.Size = new System.Drawing.Size(426, 51);
            this.grpBotoes.TabIndex = 5;
            this.grpBotoes.TabStop = false;
            // 
            // btnSair
            // 
            this.btnSair.Location = new System.Drawing.Point(326, 19);
            this.btnSair.Name = "btnSair";
            this.btnSair.Size = new System.Drawing.Size(75, 23);
            this.btnSair.TabIndex = 3;
            this.btnSair.Text = "Sair";
            this.btnSair.UseVisualStyleBackColor = true;
            this.btnSair.Click += new System.EventHandler(this.btnSair_Click);
            // 
            // btnLimpar
            // 
            this.btnLimpar.Location = new System.Drawing.Point(237, 19);
            this.btnLimpar.Name = "btnLimpar";
            this.btnLimpar.Size = new System.Drawing.Size(75, 23);
            this.btnLimpar.TabIndex = 2;
            this.btnLimpar.Text = "Limpar";
            this.btnLimpar.UseVisualStyleBackColor = true;
            this.btnLimpar.Click += new System.EventHandler(this.btnLimpar_Click);
            // 
            // btnExibir
            // 
            this.btnExibir.Enabled = false;
            this.btnExibir.Location = new System.Drawing.Point(132, 19);
            this.btnExibir.Name = "btnExibir";
            this.btnExibir.Size = new System.Drawing.Size(75, 23);
            this.btnExibir.TabIndex = 1;
            this.btnExibir.Text = "Exibir";
            this.btnExibir.UseVisualStyleBackColor = true;
            this.btnExibir.Click += new System.EventHandler(this.btnExibir_Click);
            // 
            // btnCadastrar
            // 
            this.btnCadastrar.Location = new System.Drawing.Point(35, 20);
            this.btnCadastrar.Name = "btnCadastrar";
            this.btnCadastrar.Size = new System.Drawing.Size(75, 23);
            this.btnCadastrar.TabIndex = 0;
            this.btnCadastrar.Text = "Cadastrar";
            this.btnCadastrar.UseVisualStyleBackColor = true;
            this.btnCadastrar.Click += new System.EventHandler(this.btnCadastrar_Click);
            // 
            // lblRegistro
            // 
            this.lblRegistro.Location = new System.Drawing.Point(13, 169);
            this.lblRegistro.Name = "lblRegistro";
            this.lblRegistro.Size = new System.Drawing.Size(433, 118);
            this.lblRegistro.TabIndex = 6;
            // 
            // mskCPF
            // 
            this.mskCPF.Location = new System.Drawing.Point(339, 56);
            this.mskCPF.Name = "mskCPF";
            this.mskCPF.Size = new System.Drawing.Size(100, 20);
            this.mskCPF.TabIndex = 7;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(458, 296);
            this.Controls.Add(this.mskCPF);
            this.Controls.Add(this.lblRegistro);
            this.Controls.Add(this.grpBotoes);
            this.Controls.Add(this.txtNome);
            this.Controls.Add(this.lblCPF);
            this.Controls.Add(this.lblNome);
            this.Controls.Add(this.grpTipo);
            this.Name = "Form1";
            this.Text = "Form1";
            this.grpTipo.ResumeLayout(false);
            this.grpTipo.PerformLayout();
            this.grpBotoes.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox grpTipo;
        private System.Windows.Forms.RadioButton rdbPJuridica;
        private System.Windows.Forms.RadioButton rdbPFisica;
        private System.Windows.Forms.Label lblNome;
        private System.Windows.Forms.Label lblCPF;
        private System.Windows.Forms.TextBox txtNome;
        private System.Windows.Forms.GroupBox grpBotoes;
        private System.Windows.Forms.Button btnSair;
        private System.Windows.Forms.Button btnLimpar;
        private System.Windows.Forms.Button btnExibir;
        private System.Windows.Forms.Button btnCadastrar;
        private System.Windows.Forms.Label lblRegistro;
        private System.Windows.Forms.TextBox mskCPF;
    }
}

