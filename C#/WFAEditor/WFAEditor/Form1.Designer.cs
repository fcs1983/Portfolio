namespace WFAEditor
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
            this.txtTexto = new System.Windows.Forms.TextBox();
            this.grpCor = new System.Windows.Forms.GroupBox();
            this.rdbVermelho = new System.Windows.Forms.RadioButton();
            this.rdbVerde = new System.Windows.Forms.RadioButton();
            this.rdbPreto = new System.Windows.Forms.RadioButton();
            this.grpFormato = new System.Windows.Forms.GroupBox();
            this.btnLimpar = new System.Windows.Forms.Button();
            this.btnSair = new System.Windows.Forms.Button();
            this.chkNegrito = new System.Windows.Forms.CheckBox();
            this.chkSublinhado = new System.Windows.Forms.CheckBox();
            this.grpCor.SuspendLayout();
            this.grpFormato.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtTexto
            // 
            this.txtTexto.Location = new System.Drawing.Point(13, 13);
            this.txtTexto.Multiline = true;
            this.txtTexto.Name = "txtTexto";
            this.txtTexto.Size = new System.Drawing.Size(278, 308);
            this.txtTexto.TabIndex = 0;
            // 
            // grpCor
            // 
            this.grpCor.Controls.Add(this.rdbVermelho);
            this.grpCor.Controls.Add(this.rdbVerde);
            this.grpCor.Controls.Add(this.rdbPreto);
            this.grpCor.Location = new System.Drawing.Point(297, 13);
            this.grpCor.Name = "grpCor";
            this.grpCor.Size = new System.Drawing.Size(200, 123);
            this.grpCor.TabIndex = 1;
            this.grpCor.TabStop = false;
            this.grpCor.Text = "Cor da Fonte";
            // 
            // rdbVermelho
            // 
            this.rdbVermelho.AutoSize = true;
            this.rdbVermelho.Location = new System.Drawing.Point(17, 78);
            this.rdbVermelho.Name = "rdbVermelho";
            this.rdbVermelho.Size = new System.Drawing.Size(69, 17);
            this.rdbVermelho.TabIndex = 2;
            this.rdbVermelho.TabStop = true;
            this.rdbVermelho.Text = "Vermelho";
            this.rdbVermelho.UseVisualStyleBackColor = true;
            this.rdbVermelho.CheckedChanged += new System.EventHandler(this.rdbVermelho_CheckedChanged);
            // 
            // rdbVerde
            // 
            this.rdbVerde.AutoSize = true;
            this.rdbVerde.Location = new System.Drawing.Point(17, 55);
            this.rdbVerde.Name = "rdbVerde";
            this.rdbVerde.Size = new System.Drawing.Size(53, 17);
            this.rdbVerde.TabIndex = 1;
            this.rdbVerde.TabStop = true;
            this.rdbVerde.Text = "Verde";
            this.rdbVerde.UseVisualStyleBackColor = true;
            this.rdbVerde.CheckedChanged += new System.EventHandler(this.rdbVerde_CheckedChanged);
            // 
            // rdbPreto
            // 
            this.rdbPreto.AutoSize = true;
            this.rdbPreto.Checked = true;
            this.rdbPreto.Location = new System.Drawing.Point(17, 32);
            this.rdbPreto.Name = "rdbPreto";
            this.rdbPreto.Size = new System.Drawing.Size(50, 17);
            this.rdbPreto.TabIndex = 0;
            this.rdbPreto.TabStop = true;
            this.rdbPreto.Text = "Preto";
            this.rdbPreto.UseVisualStyleBackColor = true;
            this.rdbPreto.CheckedChanged += new System.EventHandler(this.rdbPreto_CheckedChanged);
            // 
            // grpFormato
            // 
            this.grpFormato.Controls.Add(this.chkSublinhado);
            this.grpFormato.Controls.Add(this.chkNegrito);
            this.grpFormato.Location = new System.Drawing.Point(297, 155);
            this.grpFormato.Name = "grpFormato";
            this.grpFormato.Size = new System.Drawing.Size(200, 100);
            this.grpFormato.TabIndex = 2;
            this.grpFormato.TabStop = false;
            this.grpFormato.Text = "Formato";
            // 
            // btnLimpar
            // 
            this.btnLimpar.Location = new System.Drawing.Point(298, 280);
            this.btnLimpar.Name = "btnLimpar";
            this.btnLimpar.Size = new System.Drawing.Size(75, 23);
            this.btnLimpar.TabIndex = 3;
            this.btnLimpar.Text = "Limpar";
            this.btnLimpar.UseVisualStyleBackColor = true;
            this.btnLimpar.Click += new System.EventHandler(this.btnLimpar_Click);
            // 
            // btnSair
            // 
            this.btnSair.Location = new System.Drawing.Point(407, 280);
            this.btnSair.Name = "btnSair";
            this.btnSair.Size = new System.Drawing.Size(75, 23);
            this.btnSair.TabIndex = 4;
            this.btnSair.Text = "Sair";
            this.btnSair.UseVisualStyleBackColor = true;
            this.btnSair.Click += new System.EventHandler(this.btnSair_Click);
            // 
            // chkNegrito
            // 
            this.chkNegrito.AutoSize = true;
            this.chkNegrito.Location = new System.Drawing.Point(17, 32);
            this.chkNegrito.Name = "chkNegrito";
            this.chkNegrito.Size = new System.Drawing.Size(60, 17);
            this.chkNegrito.TabIndex = 0;
            this.chkNegrito.Text = "Negrito";
            this.chkNegrito.UseVisualStyleBackColor = true;
            this.chkNegrito.CheckedChanged += new System.EventHandler(this.chkNegrito_CheckedChanged);
            // 
            // chkSublinhado
            // 
            this.chkSublinhado.AutoSize = true;
            this.chkSublinhado.Location = new System.Drawing.Point(17, 56);
            this.chkSublinhado.Name = "chkSublinhado";
            this.chkSublinhado.Size = new System.Drawing.Size(79, 17);
            this.chkSublinhado.TabIndex = 1;
            this.chkSublinhado.Text = "Sublinhado";
            this.chkSublinhado.UseVisualStyleBackColor = true;
            this.chkSublinhado.CheckedChanged += new System.EventHandler(this.chkSublinhado_CheckedChanged);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(504, 347);
            this.Controls.Add(this.btnSair);
            this.Controls.Add(this.btnLimpar);
            this.Controls.Add(this.grpFormato);
            this.Controls.Add(this.grpCor);
            this.Controls.Add(this.txtTexto);
            this.Name = "Form1";
            this.Text = "Editor Simples";
            this.grpCor.ResumeLayout(false);
            this.grpCor.PerformLayout();
            this.grpFormato.ResumeLayout(false);
            this.grpFormato.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtTexto;
        private System.Windows.Forms.GroupBox grpCor;
        private System.Windows.Forms.RadioButton rdbVermelho;
        private System.Windows.Forms.RadioButton rdbVerde;
        private System.Windows.Forms.RadioButton rdbPreto;
        private System.Windows.Forms.GroupBox grpFormato;
        private System.Windows.Forms.Button btnLimpar;
        private System.Windows.Forms.Button btnSair;
        private System.Windows.Forms.CheckBox chkSublinhado;
        private System.Windows.Forms.CheckBox chkNegrito;
    }
}

