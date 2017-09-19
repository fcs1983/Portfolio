namespace WFAFolhaPagto
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
            this.lblNome = new System.Windows.Forms.Label();
            this.lblHoras = new System.Windows.Forms.Label();
            this.lblValor = new System.Windows.Forms.Label();
            this.lblDep = new System.Windows.Forms.Label();
            this.txtNome = new System.Windows.Forms.TextBox();
            this.txtHoras = new System.Windows.Forms.TextBox();
            this.txtValor = new System.Windows.Forms.TextBox();
            this.txtDependentes = new System.Windows.Forms.TextBox();
            this.btnCalcular = new System.Windows.Forms.Button();
            this.btnLimpa = new System.Windows.Forms.Button();
            this.btnFim = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lblSBruto = new System.Windows.Forms.Label();
            this.lblImposto = new System.Windows.Forms.Label();
            this.lblImpR = new System.Windows.Forms.Label();
            this.lblSall = new System.Windows.Forms.Label();
            this.lblBruto = new System.Windows.Forms.Label();
            this.lblINSS = new System.Windows.Forms.Label();
            this.lblIR = new System.Windows.Forms.Label();
            this.lblLiquido = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblNome
            // 
            this.lblNome.AutoSize = true;
            this.lblNome.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNome.Location = new System.Drawing.Point(34, 29);
            this.lblNome.Name = "lblNome";
            this.lblNome.Size = new System.Drawing.Size(160, 20);
            this.lblNome.TabIndex = 0;
            this.lblNome.Text = "Nome do Funcionario";
            // 
            // lblHoras
            // 
            this.lblHoras.AutoSize = true;
            this.lblHoras.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHoras.Location = new System.Drawing.Point(34, 61);
            this.lblHoras.Name = "lblHoras";
            this.lblHoras.Size = new System.Drawing.Size(140, 20);
            this.lblHoras.TabIndex = 1;
            this.lblHoras.Text = "Horas trabalhadas";
            // 
            // lblValor
            // 
            this.lblValor.AutoSize = true;
            this.lblValor.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblValor.Location = new System.Drawing.Point(34, 93);
            this.lblValor.Name = "lblValor";
            this.lblValor.Size = new System.Drawing.Size(107, 20);
            this.lblValor.TabIndex = 2;
            this.lblValor.Text = "Valor da Hora";
            // 
            // lblDep
            // 
            this.lblDep.AutoSize = true;
            this.lblDep.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDep.Location = new System.Drawing.Point(34, 125);
            this.lblDep.Name = "lblDep";
            this.lblDep.Size = new System.Drawing.Size(169, 20);
            this.lblDep.TabIndex = 3;
            this.lblDep.Text = "Num. de Dependentes";
            // 
            // txtNome
            // 
            this.txtNome.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNome.Location = new System.Drawing.Point(235, 30);
            this.txtNome.Name = "txtNome";
            this.txtNome.Size = new System.Drawing.Size(292, 26);
            this.txtNome.TabIndex = 4;
            this.txtNome.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtNome_KeyPress);
            // 
            // txtHoras
            // 
            this.txtHoras.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtHoras.Location = new System.Drawing.Point(235, 61);
            this.txtHoras.Name = "txtHoras";
            this.txtHoras.Size = new System.Drawing.Size(100, 26);
            this.txtHoras.TabIndex = 5;
            this.txtHoras.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtHoras_KeyPress);
            // 
            // txtValor
            // 
            this.txtValor.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtValor.Location = new System.Drawing.Point(235, 92);
            this.txtValor.Name = "txtValor";
            this.txtValor.Size = new System.Drawing.Size(100, 26);
            this.txtValor.TabIndex = 6;
            this.txtValor.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtValor_KeyPress);
            // 
            // txtDependentes
            // 
            this.txtDependentes.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDependentes.Location = new System.Drawing.Point(235, 123);
            this.txtDependentes.Name = "txtDependentes";
            this.txtDependentes.Size = new System.Drawing.Size(100, 26);
            this.txtDependentes.TabIndex = 7;
            this.txtDependentes.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDependentes_KeyPress);
            // 
            // btnCalcular
            // 
            this.btnCalcular.Location = new System.Drawing.Point(37, 214);
            this.btnCalcular.Name = "btnCalcular";
            this.btnCalcular.Size = new System.Drawing.Size(80, 30);
            this.btnCalcular.TabIndex = 8;
            this.btnCalcular.Text = "Calcular";
            this.btnCalcular.UseVisualStyleBackColor = true;
            this.btnCalcular.Click += new System.EventHandler(this.btnCalcular_Click);
            // 
            // btnLimpa
            // 
            this.btnLimpa.Location = new System.Drawing.Point(158, 214);
            this.btnLimpa.Name = "btnLimpa";
            this.btnLimpa.Size = new System.Drawing.Size(80, 30);
            this.btnLimpa.TabIndex = 9;
            this.btnLimpa.Text = "Limpa";
            this.btnLimpa.UseVisualStyleBackColor = true;
            this.btnLimpa.Click += new System.EventHandler(this.btnLimpa_Click);
            // 
            // btnFim
            // 
            this.btnFim.Location = new System.Drawing.Point(279, 214);
            this.btnFim.Name = "btnFim";
            this.btnFim.Size = new System.Drawing.Size(80, 30);
            this.btnFim.TabIndex = 10;
            this.btnFim.Text = "Fim";
            this.btnFim.UseVisualStyleBackColor = true;
            this.btnFim.Click += new System.EventHandler(this.btnFim_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(379, 71);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(100, 68);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 11;
            this.pictureBox1.TabStop = false;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.lblLiquido);
            this.groupBox1.Controls.Add(this.lblIR);
            this.groupBox1.Controls.Add(this.lblINSS);
            this.groupBox1.Controls.Add(this.lblBruto);
            this.groupBox1.Controls.Add(this.lblSall);
            this.groupBox1.Controls.Add(this.lblImpR);
            this.groupBox1.Controls.Add(this.lblImposto);
            this.groupBox1.Controls.Add(this.lblSBruto);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(37, 266);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(565, 162);
            this.groupBox1.TabIndex = 12;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "groupBox1";
            // 
            // lblSBruto
            // 
            this.lblSBruto.AutoSize = true;
            this.lblSBruto.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSBruto.Location = new System.Drawing.Point(40, 42);
            this.lblSBruto.Name = "lblSBruto";
            this.lblSBruto.Size = new System.Drawing.Size(101, 20);
            this.lblSBruto.TabIndex = 1;
            this.lblSBruto.Text = "Salário Bruto";
            // 
            // lblImposto
            // 
            this.lblImposto.AutoSize = true;
            this.lblImposto.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblImposto.Location = new System.Drawing.Point(40, 72);
            this.lblImposto.Name = "lblImposto";
            this.lblImposto.Size = new System.Drawing.Size(47, 20);
            this.lblImposto.TabIndex = 2;
            this.lblImposto.Text = "INSS";
            // 
            // lblImpR
            // 
            this.lblImpR.AutoSize = true;
            this.lblImpR.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblImpR.Location = new System.Drawing.Point(40, 102);
            this.lblImpR.Name = "lblImpR";
            this.lblImpR.Size = new System.Drawing.Size(141, 20);
            this.lblImpR.TabIndex = 3;
            this.lblImpR.Text = "Imposto de Renda";
            // 
            // lblSall
            // 
            this.lblSall.AutoSize = true;
            this.lblSall.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSall.Location = new System.Drawing.Point(40, 132);
            this.lblSall.Name = "lblSall";
            this.lblSall.Size = new System.Drawing.Size(113, 20);
            this.lblSall.TabIndex = 4;
            this.lblSall.Text = "Salário Liquido";
            // 
            // lblBruto
            // 
            this.lblBruto.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblBruto.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblBruto.Location = new System.Drawing.Point(270, 42);
            this.lblBruto.Name = "lblBruto";
            this.lblBruto.Size = new System.Drawing.Size(100, 25);
            this.lblBruto.TabIndex = 5;
            // 
            // lblINSS
            // 
            this.lblINSS.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblINSS.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblINSS.Location = new System.Drawing.Point(270, 72);
            this.lblINSS.Name = "lblINSS";
            this.lblINSS.Size = new System.Drawing.Size(100, 25);
            this.lblINSS.TabIndex = 6;
            // 
            // lblIR
            // 
            this.lblIR.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblIR.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblIR.Location = new System.Drawing.Point(270, 102);
            this.lblIR.Name = "lblIR";
            this.lblIR.Size = new System.Drawing.Size(100, 25);
            this.lblIR.TabIndex = 7;
            // 
            // lblLiquido
            // 
            this.lblLiquido.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblLiquido.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblLiquido.Location = new System.Drawing.Point(270, 132);
            this.lblLiquido.Name = "lblLiquido";
            this.lblLiquido.Size = new System.Drawing.Size(100, 25);
            this.lblLiquido.TabIndex = 8;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(634, 440);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.btnFim);
            this.Controls.Add(this.btnLimpa);
            this.Controls.Add(this.btnCalcular);
            this.Controls.Add(this.txtDependentes);
            this.Controls.Add(this.txtValor);
            this.Controls.Add(this.txtHoras);
            this.Controls.Add(this.txtNome);
            this.Controls.Add(this.lblDep);
            this.Controls.Add(this.lblValor);
            this.Controls.Add(this.lblHoras);
            this.Controls.Add(this.lblNome);
            this.Name = "Form1";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblNome;
        private System.Windows.Forms.Label lblHoras;
        private System.Windows.Forms.Label lblValor;
        private System.Windows.Forms.Label lblDep;
        private System.Windows.Forms.TextBox txtNome;
        private System.Windows.Forms.TextBox txtHoras;
        private System.Windows.Forms.TextBox txtValor;
        private System.Windows.Forms.TextBox txtDependentes;
        private System.Windows.Forms.Button btnCalcular;
        private System.Windows.Forms.Button btnLimpa;
        private System.Windows.Forms.Button btnFim;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label lblLiquido;
        private System.Windows.Forms.Label lblIR;
        private System.Windows.Forms.Label lblINSS;
        private System.Windows.Forms.Label lblBruto;
        private System.Windows.Forms.Label lblSall;
        private System.Windows.Forms.Label lblImpR;
        private System.Windows.Forms.Label lblImposto;
        private System.Windows.Forms.Label lblSBruto;
    }
}

