namespace WFASenha
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.lblDigite = new System.Windows.Forms.Label();
            this.grpNeS = new System.Windows.Forms.GroupBox();
            this.txtSenha = new System.Windows.Forms.TextBox();
            this.txtNome = new System.Windows.Forms.TextBox();
            this.lblSenha = new System.Windows.Forms.Label();
            this.lblNome = new System.Windows.Forms.Label();
            this.btnTesouro = new System.Windows.Forms.Button();
            this.btnSair = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.grpNeS.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // lblDigite
            // 
            this.lblDigite.AutoSize = true;
            this.lblDigite.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDigite.Location = new System.Drawing.Point(90, 12);
            this.lblDigite.Name = "lblDigite";
            this.lblDigite.Size = new System.Drawing.Size(301, 16);
            this.lblDigite.TabIndex = 1;
            this.lblDigite.Text = "Digite seu nome e senha. Finalize com <ENTER>";
            // 
            // grpNeS
            // 
            this.grpNeS.Controls.Add(this.txtSenha);
            this.grpNeS.Controls.Add(this.txtNome);
            this.grpNeS.Controls.Add(this.lblSenha);
            this.grpNeS.Controls.Add(this.lblNome);
            this.grpNeS.Location = new System.Drawing.Point(29, 91);
            this.grpNeS.Name = "grpNeS";
            this.grpNeS.Size = new System.Drawing.Size(329, 132);
            this.grpNeS.TabIndex = 2;
            this.grpNeS.TabStop = false;
            // 
            // txtSenha
            // 
            this.txtSenha.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSenha.Location = new System.Drawing.Point(119, 70);
            this.txtSenha.Name = "txtSenha";
            this.txtSenha.Size = new System.Drawing.Size(162, 26);
            this.txtSenha.TabIndex = 3;
            this.txtSenha.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtSenha_KeyPress);
            // 
            // txtNome
            // 
            this.txtNome.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNome.Location = new System.Drawing.Point(119, 26);
            this.txtNome.Name = "txtNome";
            this.txtNome.Size = new System.Drawing.Size(162, 26);
            this.txtNome.TabIndex = 2;
            this.txtNome.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtNome_KeyPress);
            // 
            // lblSenha
            // 
            this.lblSenha.AutoSize = true;
            this.lblSenha.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSenha.Location = new System.Drawing.Point(18, 78);
            this.lblSenha.Name = "lblSenha";
            this.lblSenha.Size = new System.Drawing.Size(60, 20);
            this.lblSenha.TabIndex = 1;
            this.lblSenha.Text = "Senha:";
            // 
            // lblNome
            // 
            this.lblNome.AutoSize = true;
            this.lblNome.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNome.Location = new System.Drawing.Point(19, 34);
            this.lblNome.Name = "lblNome";
            this.lblNome.Size = new System.Drawing.Size(55, 20);
            this.lblNome.TabIndex = 0;
            this.lblNome.Text = "Nome:";
            // 
            // btnTesouro
            // 
            this.btnTesouro.Location = new System.Drawing.Point(93, 255);
            this.btnTesouro.Name = "btnTesouro";
            this.btnTesouro.Size = new System.Drawing.Size(75, 23);
            this.btnTesouro.TabIndex = 3;
            this.btnTesouro.Text = "Tesouro";
            this.btnTesouro.UseVisualStyleBackColor = true;
            this.btnTesouro.Visible = false;
            this.btnTesouro.Click += new System.EventHandler(this.btnTesouro_Click);
            // 
            // btnSair
            // 
            this.btnSair.Location = new System.Drawing.Point(212, 255);
            this.btnSair.Name = "btnSair";
            this.btnSair.Size = new System.Drawing.Size(75, 23);
            this.btnSair.TabIndex = 4;
            this.btnSair.Text = "Sair";
            this.btnSair.UseVisualStyleBackColor = true;
            this.btnSair.Click += new System.EventHandler(this.btnSair_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::WFASenha.Properties.Resources.SECUR02B;
            this.pictureBox1.Location = new System.Drawing.Point(12, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(64, 62);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(403, 310);
            this.Controls.Add(this.btnSair);
            this.Controls.Add(this.btnTesouro);
            this.Controls.Add(this.grpNeS);
            this.Controls.Add(this.lblDigite);
            this.Controls.Add(this.pictureBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.Text = "VERIFICAR SENHA";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.grpNeS.ResumeLayout(false);
            this.grpNeS.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lblDigite;
        private System.Windows.Forms.GroupBox grpNeS;
        private System.Windows.Forms.TextBox txtSenha;
        private System.Windows.Forms.TextBox txtNome;
        private System.Windows.Forms.Label lblSenha;
        private System.Windows.Forms.Label lblNome;
        private System.Windows.Forms.Button btnTesouro;
        private System.Windows.Forms.Button btnSair;
    }
}

