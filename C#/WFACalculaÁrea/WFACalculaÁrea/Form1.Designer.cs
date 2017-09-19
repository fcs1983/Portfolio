namespace WFACalculaÁrea
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
            this.grpFiguras = new System.Windows.Forms.GroupBox();
            this.rdbQuadrado = new System.Windows.Forms.RadioButton();
            this.rdbRetangulo = new System.Windows.Forms.RadioButton();
            this.rdbParalelepipedo = new System.Windows.Forms.RadioButton();
            this.lblX = new System.Windows.Forms.Label();
            this.lblY = new System.Windows.Forms.Label();
            this.lblZ = new System.Windows.Forms.Label();
            this.txtX = new System.Windows.Forms.TextBox();
            this.txtY = new System.Windows.Forms.TextBox();
            this.txtZ = new System.Windows.Forms.TextBox();
            this.lblAreaVolume = new System.Windows.Forms.Label();
            this.lblArea = new System.Windows.Forms.Label();
            this.btnCalculo = new System.Windows.Forms.Button();
            this.btnLimpa = new System.Windows.Forms.Button();
            this.tabCalculo = new System.Windows.Forms.TabControl();
            this.tabArea = new System.Windows.Forms.TabPage();
            this.tabClassificacao = new System.Windows.Forms.TabPage();
            this.tabNrosPrimos = new System.Windows.Forms.TabPage();
            this.lblEntreNro = new System.Windows.Forms.Label();
            this.lblNroCrescente = new System.Windows.Forms.Label();
            this.btnClassificar = new System.Windows.Forms.Button();
            this.btnLimpar = new System.Windows.Forms.Button();
            this.txtA = new System.Windows.Forms.TextBox();
            this.txtB = new System.Windows.Forms.TextBox();
            this.txtC = new System.Windows.Forms.TextBox();
            this.txt1 = new System.Windows.Forms.TextBox();
            this.txt2 = new System.Windows.Forms.TextBox();
            this.txt3 = new System.Windows.Forms.TextBox();
            this.lblIntervalo = new System.Windows.Forms.Label();
            this.txtDe = new System.Windows.Forms.TextBox();
            this.txtAte = new System.Windows.Forms.TextBox();
            this.btnGerar = new System.Windows.Forms.Button();
            this.btnLimp = new System.Windows.Forms.Button();
            this.grpLista = new System.Windows.Forms.GroupBox();
            this.lstNros = new System.Windows.Forms.ListBox();
            this.grpFiguras.SuspendLayout();
            this.tabCalculo.SuspendLayout();
            this.tabArea.SuspendLayout();
            this.tabClassificacao.SuspendLayout();
            this.tabNrosPrimos.SuspendLayout();
            this.grpLista.SuspendLayout();
            this.SuspendLayout();
            // 
            // grpFiguras
            // 
            this.grpFiguras.Controls.Add(this.rdbParalelepipedo);
            this.grpFiguras.Controls.Add(this.rdbRetangulo);
            this.grpFiguras.Controls.Add(this.rdbQuadrado);
            this.grpFiguras.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grpFiguras.Location = new System.Drawing.Point(6, 6);
            this.grpFiguras.Name = "grpFiguras";
            this.grpFiguras.Size = new System.Drawing.Size(200, 194);
            this.grpFiguras.TabIndex = 0;
            this.grpFiguras.TabStop = false;
            this.grpFiguras.Text = "Figura";
            // 
            // rdbQuadrado
            // 
            this.rdbQuadrado.Checked = true;
            this.rdbQuadrado.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rdbQuadrado.Location = new System.Drawing.Point(21, 38);
            this.rdbQuadrado.Name = "rdbQuadrado";
            this.rdbQuadrado.Size = new System.Drawing.Size(104, 24);
            this.rdbQuadrado.TabIndex = 0;
            this.rdbQuadrado.TabStop = true;
            this.rdbQuadrado.Text = "Quadrado";
            this.rdbQuadrado.UseVisualStyleBackColor = true;
            this.rdbQuadrado.CheckedChanged += new System.EventHandler(this.rdbQuadrado_CheckedChanged);
            // 
            // rdbRetangulo
            // 
            this.rdbRetangulo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rdbRetangulo.Location = new System.Drawing.Point(21, 94);
            this.rdbRetangulo.Name = "rdbRetangulo";
            this.rdbRetangulo.Size = new System.Drawing.Size(104, 32);
            this.rdbRetangulo.TabIndex = 1;
            this.rdbRetangulo.Text = "Retangulo";
            this.rdbRetangulo.UseVisualStyleBackColor = true;
            this.rdbRetangulo.CheckedChanged += new System.EventHandler(this.rdbRetangulo_CheckedChanged);
            // 
            // rdbParalelepipedo
            // 
            this.rdbParalelepipedo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rdbParalelepipedo.Location = new System.Drawing.Point(21, 158);
            this.rdbParalelepipedo.Name = "rdbParalelepipedo";
            this.rdbParalelepipedo.Size = new System.Drawing.Size(138, 33);
            this.rdbParalelepipedo.TabIndex = 2;
            this.rdbParalelepipedo.Text = "Paralelepípedo";
            this.rdbParalelepipedo.UseVisualStyleBackColor = true;
            this.rdbParalelepipedo.CheckedChanged += new System.EventHandler(this.rdbParalelepipedo_CheckedChanged);
            // 
            // lblX
            // 
            this.lblX.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblX.Location = new System.Drawing.Point(283, 3);
            this.lblX.Name = "lblX";
            this.lblX.Size = new System.Drawing.Size(45, 45);
            this.lblX.TabIndex = 1;
            this.lblX.Text = "X";
            this.lblX.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblY
            // 
            this.lblY.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblY.Location = new System.Drawing.Point(372, 3);
            this.lblY.Name = "lblY";
            this.lblY.Size = new System.Drawing.Size(45, 45);
            this.lblY.TabIndex = 2;
            this.lblY.Text = "Y";
            this.lblY.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblZ
            // 
            this.lblZ.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblZ.Location = new System.Drawing.Point(461, 3);
            this.lblZ.Name = "lblZ";
            this.lblZ.Size = new System.Drawing.Size(45, 45);
            this.lblZ.TabIndex = 3;
            this.lblZ.Text = "Z";
            this.lblZ.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txtX
            // 
            this.txtX.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtX.Location = new System.Drawing.Point(277, 51);
            this.txtX.Name = "txtX";
            this.txtX.Size = new System.Drawing.Size(60, 22);
            this.txtX.TabIndex = 4;
            this.txtX.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtX_KeyPress);
            // 
            // txtY
            // 
            this.txtY.Enabled = false;
            this.txtY.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtY.Location = new System.Drawing.Point(366, 51);
            this.txtY.Name = "txtY";
            this.txtY.Size = new System.Drawing.Size(60, 22);
            this.txtY.TabIndex = 5;
            this.txtY.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtY_KeyPress);
            // 
            // txtZ
            // 
            this.txtZ.Enabled = false;
            this.txtZ.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtZ.Location = new System.Drawing.Point(455, 51);
            this.txtZ.Name = "txtZ";
            this.txtZ.Size = new System.Drawing.Size(60, 22);
            this.txtZ.TabIndex = 6;
            this.txtZ.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtZ_KeyPress);
            // 
            // lblAreaVolume
            // 
            this.lblAreaVolume.AutoSize = true;
            this.lblAreaVolume.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAreaVolume.Location = new System.Drawing.Point(247, 109);
            this.lblAreaVolume.Name = "lblAreaVolume";
            this.lblAreaVolume.Size = new System.Drawing.Size(105, 20);
            this.lblAreaVolume.TabIndex = 7;
            this.lblAreaVolume.Text = "Área/Volume:";
            // 
            // lblArea
            // 
            this.lblArea.BackColor = System.Drawing.SystemColors.Info;
            this.lblArea.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblArea.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblArea.Location = new System.Drawing.Point(375, 104);
            this.lblArea.Name = "lblArea";
            this.lblArea.Size = new System.Drawing.Size(140, 30);
            this.lblArea.TabIndex = 8;
            this.lblArea.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // btnCalculo
            // 
            this.btnCalculo.Location = new System.Drawing.Point(375, 161);
            this.btnCalculo.Name = "btnCalculo";
            this.btnCalculo.Size = new System.Drawing.Size(65, 35);
            this.btnCalculo.TabIndex = 9;
            this.btnCalculo.Text = "&Calculo";
            this.btnCalculo.UseVisualStyleBackColor = true;
            this.btnCalculo.Click += new System.EventHandler(this.btnCalculo_Click);
            // 
            // btnLimpa
            // 
            this.btnLimpa.Location = new System.Drawing.Point(456, 161);
            this.btnLimpa.Name = "btnLimpa";
            this.btnLimpa.Size = new System.Drawing.Size(65, 35);
            this.btnLimpa.TabIndex = 10;
            this.btnLimpa.Text = "&Limpa";
            this.btnLimpa.UseVisualStyleBackColor = true;
            this.btnLimpa.Click += new System.EventHandler(this.btnLimpa_Click);
            // 
            // tabCalculo
            // 
            this.tabCalculo.Appearance = System.Windows.Forms.TabAppearance.Buttons;
            this.tabCalculo.Controls.Add(this.tabArea);
            this.tabCalculo.Controls.Add(this.tabClassificacao);
            this.tabCalculo.Controls.Add(this.tabNrosPrimos);
            this.tabCalculo.Location = new System.Drawing.Point(2, 2);
            this.tabCalculo.Name = "tabCalculo";
            this.tabCalculo.SelectedIndex = 0;
            this.tabCalculo.Size = new System.Drawing.Size(576, 235);
            this.tabCalculo.TabIndex = 11;
            // 
            // tabArea
            // 
            this.tabArea.Controls.Add(this.grpFiguras);
            this.tabArea.Controls.Add(this.btnLimpa);
            this.tabArea.Controls.Add(this.lblX);
            this.tabArea.Controls.Add(this.btnCalculo);
            this.tabArea.Controls.Add(this.lblY);
            this.tabArea.Controls.Add(this.lblArea);
            this.tabArea.Controls.Add(this.lblZ);
            this.tabArea.Controls.Add(this.lblAreaVolume);
            this.tabArea.Controls.Add(this.txtX);
            this.tabArea.Controls.Add(this.txtZ);
            this.tabArea.Controls.Add(this.txtY);
            this.tabArea.Location = new System.Drawing.Point(4, 25);
            this.tabArea.Name = "tabArea";
            this.tabArea.Padding = new System.Windows.Forms.Padding(3);
            this.tabArea.Size = new System.Drawing.Size(568, 206);
            this.tabArea.TabIndex = 0;
            this.tabArea.Text = "Cálculo da Área";
            this.tabArea.UseVisualStyleBackColor = true;
            // 
            // tabClassificacao
            // 
            this.tabClassificacao.AllowDrop = true;
            this.tabClassificacao.Controls.Add(this.txt3);
            this.tabClassificacao.Controls.Add(this.txt2);
            this.tabClassificacao.Controls.Add(this.txt1);
            this.tabClassificacao.Controls.Add(this.txtC);
            this.tabClassificacao.Controls.Add(this.txtB);
            this.tabClassificacao.Controls.Add(this.txtA);
            this.tabClassificacao.Controls.Add(this.btnLimpar);
            this.tabClassificacao.Controls.Add(this.btnClassificar);
            this.tabClassificacao.Controls.Add(this.lblNroCrescente);
            this.tabClassificacao.Controls.Add(this.lblEntreNro);
            this.tabClassificacao.Location = new System.Drawing.Point(4, 25);
            this.tabClassificacao.Name = "tabClassificacao";
            this.tabClassificacao.Padding = new System.Windows.Forms.Padding(3);
            this.tabClassificacao.Size = new System.Drawing.Size(568, 206);
            this.tabClassificacao.TabIndex = 1;
            this.tabClassificacao.Text = "Classificação";
            this.tabClassificacao.UseVisualStyleBackColor = true;
            // 
            // tabNrosPrimos
            // 
            this.tabNrosPrimos.Controls.Add(this.grpLista);
            this.tabNrosPrimos.Controls.Add(this.btnLimp);
            this.tabNrosPrimos.Controls.Add(this.btnGerar);
            this.tabNrosPrimos.Controls.Add(this.txtAte);
            this.tabNrosPrimos.Controls.Add(this.txtDe);
            this.tabNrosPrimos.Controls.Add(this.lblIntervalo);
            this.tabNrosPrimos.Location = new System.Drawing.Point(4, 25);
            this.tabNrosPrimos.Name = "tabNrosPrimos";
            this.tabNrosPrimos.Size = new System.Drawing.Size(568, 206);
            this.tabNrosPrimos.TabIndex = 2;
            this.tabNrosPrimos.Text = "Números Primos";
            this.tabNrosPrimos.UseVisualStyleBackColor = true;
            // 
            // lblEntreNro
            // 
            this.lblEntreNro.AutoSize = true;
            this.lblEntreNro.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEntreNro.Location = new System.Drawing.Point(65, 20);
            this.lblEntreNro.Name = "lblEntreNro";
            this.lblEntreNro.Size = new System.Drawing.Size(173, 20);
            this.lblEntreNro.TabIndex = 0;
            this.lblEntreNro.Text = "Entre com os números:";
            // 
            // lblNroCrescente
            // 
            this.lblNroCrescente.AutoSize = true;
            this.lblNroCrescente.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNroCrescente.Location = new System.Drawing.Point(65, 104);
            this.lblNroCrescente.Name = "lblNroCrescente";
            this.lblNroCrescente.Size = new System.Drawing.Size(226, 20);
            this.lblNroCrescente.TabIndex = 1;
            this.lblNroCrescente.Text = "Números em ordem crescente:";
            // 
            // btnClassificar
            // 
            this.btnClassificar.Location = new System.Drawing.Point(472, 55);
            this.btnClassificar.Name = "btnClassificar";
            this.btnClassificar.Size = new System.Drawing.Size(65, 26);
            this.btnClassificar.TabIndex = 2;
            this.btnClassificar.Text = "Classificar";
            this.btnClassificar.UseVisualStyleBackColor = true;
            this.btnClassificar.Click += new System.EventHandler(this.btnClassificar_Click);
            // 
            // btnLimpar
            // 
            this.btnLimpar.Location = new System.Drawing.Point(472, 145);
            this.btnLimpar.Name = "btnLimpar";
            this.btnLimpar.Size = new System.Drawing.Size(65, 26);
            this.btnLimpar.TabIndex = 3;
            this.btnLimpar.Text = "Limpar";
            this.btnLimpar.UseVisualStyleBackColor = true;
            this.btnLimpar.Click += new System.EventHandler(this.btnLimpar_Click);
            // 
            // txtA
            // 
            this.txtA.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtA.Location = new System.Drawing.Point(68, 55);
            this.txtA.Name = "txtA";
            this.txtA.Size = new System.Drawing.Size(65, 26);
            this.txtA.TabIndex = 4;
            this.txtA.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtA_KeyPress);
            // 
            // txtB
            // 
            this.txtB.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtB.Location = new System.Drawing.Point(192, 55);
            this.txtB.Name = "txtB";
            this.txtB.Size = new System.Drawing.Size(65, 26);
            this.txtB.TabIndex = 5;
            this.txtB.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtB_KeyPress);
            // 
            // txtC
            // 
            this.txtC.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtC.Location = new System.Drawing.Point(316, 55);
            this.txtC.Name = "txtC";
            this.txtC.Size = new System.Drawing.Size(65, 26);
            this.txtC.TabIndex = 6;
            this.txtC.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtC_KeyPress);
            // 
            // txt1
            // 
            this.txt1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt1.Location = new System.Drawing.Point(68, 148);
            this.txt1.Name = "txt1";
            this.txt1.ReadOnly = true;
            this.txt1.Size = new System.Drawing.Size(65, 26);
            this.txt1.TabIndex = 7;
            // 
            // txt2
            // 
            this.txt2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt2.Location = new System.Drawing.Point(192, 148);
            this.txt2.Name = "txt2";
            this.txt2.ReadOnly = true;
            this.txt2.Size = new System.Drawing.Size(65, 26);
            this.txt2.TabIndex = 8;
            // 
            // txt3
            // 
            this.txt3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt3.Location = new System.Drawing.Point(316, 148);
            this.txt3.Name = "txt3";
            this.txt3.ReadOnly = true;
            this.txt3.Size = new System.Drawing.Size(65, 26);
            this.txt3.TabIndex = 9;
            // 
            // lblIntervalo
            // 
            this.lblIntervalo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblIntervalo.Location = new System.Drawing.Point(16, 15);
            this.lblIntervalo.Name = "lblIntervalo";
            this.lblIntervalo.Size = new System.Drawing.Size(220, 31);
            this.lblIntervalo.TabIndex = 0;
            this.lblIntervalo.Text = "Informe o Intervalo (De - Até).";
            // 
            // txtDe
            // 
            this.txtDe.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDe.Location = new System.Drawing.Point(17, 63);
            this.txtDe.Name = "txtDe";
            this.txtDe.Size = new System.Drawing.Size(100, 22);
            this.txtDe.TabIndex = 1;
            // 
            // txtAte
            // 
            this.txtAte.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtAte.Location = new System.Drawing.Point(123, 63);
            this.txtAte.Name = "txtAte";
            this.txtAte.Size = new System.Drawing.Size(100, 22);
            this.txtAte.TabIndex = 2;
            // 
            // btnGerar
            // 
            this.btnGerar.Location = new System.Drawing.Point(30, 108);
            this.btnGerar.Name = "btnGerar";
            this.btnGerar.Size = new System.Drawing.Size(75, 23);
            this.btnGerar.TabIndex = 3;
            this.btnGerar.Text = "Gerar Nros";
            this.btnGerar.UseVisualStyleBackColor = true;
            // 
            // btnLimp
            // 
            this.btnLimp.Location = new System.Drawing.Point(136, 108);
            this.btnLimp.Name = "btnLimp";
            this.btnLimp.Size = new System.Drawing.Size(75, 23);
            this.btnLimp.TabIndex = 4;
            this.btnLimp.Text = "Limpar";
            this.btnLimp.UseVisualStyleBackColor = true;
            this.btnLimp.Click += new System.EventHandler(this.btnLimp_Click);
            // 
            // grpLista
            // 
            this.grpLista.Controls.Add(this.lstNros);
            this.grpLista.Location = new System.Drawing.Point(313, 15);
            this.grpLista.Name = "grpLista";
            this.grpLista.Size = new System.Drawing.Size(200, 187);
            this.grpLista.TabIndex = 5;
            this.grpLista.TabStop = false;
            this.grpLista.Text = "Nros Primos";
            // 
            // lstNros
            // 
            this.lstNros.FormattingEnabled = true;
            this.lstNros.Location = new System.Drawing.Point(7, 22);
            this.lstNros.Name = "lstNros";
            this.lstNros.Size = new System.Drawing.Size(187, 147);
            this.lstNros.TabIndex = 0;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(580, 241);
            this.Controls.Add(this.tabCalculo);
            this.Name = "Form1";
            this.Text = "Form1";
            this.grpFiguras.ResumeLayout(false);
            this.tabCalculo.ResumeLayout(false);
            this.tabArea.ResumeLayout(false);
            this.tabArea.PerformLayout();
            this.tabClassificacao.ResumeLayout(false);
            this.tabClassificacao.PerformLayout();
            this.tabNrosPrimos.ResumeLayout(false);
            this.tabNrosPrimos.PerformLayout();
            this.grpLista.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox grpFiguras;
        private System.Windows.Forms.RadioButton rdbParalelepipedo;
        private System.Windows.Forms.RadioButton rdbRetangulo;
        private System.Windows.Forms.RadioButton rdbQuadrado;
        private System.Windows.Forms.Label lblX;
        private System.Windows.Forms.Label lblY;
        private System.Windows.Forms.Label lblZ;
        private System.Windows.Forms.TextBox txtX;
        private System.Windows.Forms.TextBox txtY;
        private System.Windows.Forms.TextBox txtZ;
        private System.Windows.Forms.Label lblAreaVolume;
        private System.Windows.Forms.Label lblArea;
        private System.Windows.Forms.Button btnCalculo;
        private System.Windows.Forms.Button btnLimpa;
        private System.Windows.Forms.TabControl tabCalculo;
        private System.Windows.Forms.TabPage tabArea;
        private System.Windows.Forms.TabPage tabClassificacao;
        private System.Windows.Forms.TabPage tabNrosPrimos;
        private System.Windows.Forms.TextBox txt3;
        private System.Windows.Forms.TextBox txt2;
        private System.Windows.Forms.TextBox txt1;
        private System.Windows.Forms.TextBox txtC;
        private System.Windows.Forms.TextBox txtB;
        private System.Windows.Forms.TextBox txtA;
        private System.Windows.Forms.Button btnLimpar;
        private System.Windows.Forms.Button btnClassificar;
        private System.Windows.Forms.Label lblNroCrescente;
        private System.Windows.Forms.Label lblEntreNro;
        private System.Windows.Forms.GroupBox grpLista;
        private System.Windows.Forms.ListBox lstNros;
        private System.Windows.Forms.Button btnLimp;
        private System.Windows.Forms.Button btnGerar;
        private System.Windows.Forms.TextBox txtAte;
        private System.Windows.Forms.TextBox txtDe;
        private System.Windows.Forms.Label lblIntervalo;
    }
}

