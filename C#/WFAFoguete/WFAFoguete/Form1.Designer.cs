namespace WFAFoguete
{
    partial class frmFoguete
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmFoguete));
            this.btnDispara = new System.Windows.Forms.Button();
            this.btnPara = new System.Windows.Forms.Button();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.btnFim = new System.Windows.Forms.Button();
            this.btnAcelera = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.picGlub2 = new System.Windows.Forms.PictureBox();
            this.picGlub1 = new System.Windows.Forms.PictureBox();
            this.picParaquedista = new System.Windows.Forms.PictureBox();
            this.picExplosao = new System.Windows.Forms.PictureBox();
            this.picAviao = new System.Windows.Forms.PictureBox();
            this.picFoguete = new System.Windows.Forms.PictureBox();
            this.grpBotao = new System.Windows.Forms.GroupBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.picGlub2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.picGlub1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.picParaquedista)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.picExplosao)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.picAviao)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.picFoguete)).BeginInit();
            this.grpBotao.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnDispara
            // 
            this.btnDispara.Location = new System.Drawing.Point(0, 9);
            this.btnDispara.Name = "btnDispara";
            this.btnDispara.Size = new System.Drawing.Size(75, 35);
            this.btnDispara.TabIndex = 0;
            this.btnDispara.Text = "Disparar";
            this.btnDispara.UseVisualStyleBackColor = true;
            this.btnDispara.Click += new System.EventHandler(this.btnDispara_Click);
            // 
            // btnPara
            // 
            this.btnPara.Location = new System.Drawing.Point(94, 9);
            this.btnPara.Name = "btnPara";
            this.btnPara.Size = new System.Drawing.Size(75, 35);
            this.btnPara.TabIndex = 1;
            this.btnPara.Text = "Parar";
            this.btnPara.UseVisualStyleBackColor = true;
            this.btnPara.Click += new System.EventHandler(this.btnPara_Click);
            // 
            // timer1
            // 
            this.timer1.Interval = 25;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // btnFim
            // 
            this.btnFim.Location = new System.Drawing.Point(0, 57);
            this.btnFim.Name = "btnFim";
            this.btnFim.Size = new System.Drawing.Size(75, 35);
            this.btnFim.TabIndex = 8;
            this.btnFim.Text = "Fim";
            this.btnFim.UseVisualStyleBackColor = true;
            this.btnFim.Click += new System.EventHandler(this.btnFim_Click);
            // 
            // btnAcelera
            // 
            this.btnAcelera.Location = new System.Drawing.Point(94, 57);
            this.btnAcelera.Name = "btnAcelera";
            this.btnAcelera.Size = new System.Drawing.Size(75, 35);
            this.btnAcelera.TabIndex = 9;
            this.btnAcelera.Text = "Acelera";
            this.btnAcelera.UseVisualStyleBackColor = true;
            this.btnAcelera.Click += new System.EventHandler(this.btnAcelera_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::WFAFoguete.Properties.Resources.sol;
            this.pictureBox1.Location = new System.Drawing.Point(192, 27);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(223, 181);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 10;
            this.pictureBox1.TabStop = false;
            // 
            // picGlub2
            // 
            this.picGlub2.Image = global::WFAFoguete.Properties.Resources.glub2;
            this.picGlub2.Location = new System.Drawing.Point(434, 436);
            this.picGlub2.Name = "picGlub2";
            this.picGlub2.Size = new System.Drawing.Size(200, 100);
            this.picGlub2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picGlub2.TabIndex = 7;
            this.picGlub2.TabStop = false;
            this.picGlub2.Visible = false;
            // 
            // picGlub1
            // 
            this.picGlub1.Image = global::WFAFoguete.Properties.Resources.glub1;
            this.picGlub1.Location = new System.Drawing.Point(434, 436);
            this.picGlub1.Name = "picGlub1";
            this.picGlub1.Size = new System.Drawing.Size(200, 100);
            this.picGlub1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picGlub1.TabIndex = 6;
            this.picGlub1.TabStop = false;
            this.picGlub1.Visible = false;
            // 
            // picParaquedista
            // 
            this.picParaquedista.Image = global::WFAFoguete.Properties.Resources.paraquedista;
            this.picParaquedista.Location = new System.Drawing.Point(472, 177);
            this.picParaquedista.Name = "picParaquedista";
            this.picParaquedista.Size = new System.Drawing.Size(66, 100);
            this.picParaquedista.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picParaquedista.TabIndex = 5;
            this.picParaquedista.TabStop = false;
            this.picParaquedista.Visible = false;
            // 
            // picExplosao
            // 
            this.picExplosao.Image = global::WFAFoguete.Properties.Resources.explosao;
            this.picExplosao.Location = new System.Drawing.Point(490, 283);
            this.picExplosao.Name = "picExplosao";
            this.picExplosao.Size = new System.Drawing.Size(166, 147);
            this.picExplosao.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picExplosao.TabIndex = 4;
            this.picExplosao.TabStop = false;
            this.picExplosao.Visible = false;
            // 
            // picAviao
            // 
            this.picAviao.Image = global::WFAFoguete.Properties.Resources.aviao;
            this.picAviao.Location = new System.Drawing.Point(12, 37);
            this.picAviao.Name = "picAviao";
            this.picAviao.Size = new System.Drawing.Size(97, 37);
            this.picAviao.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picAviao.TabIndex = 3;
            this.picAviao.TabStop = false;
            // 
            // picFoguete
            // 
            this.picFoguete.Image = global::WFAFoguete.Properties.Resources.foguete;
            this.picFoguete.Location = new System.Drawing.Point(12, 112);
            this.picFoguete.Name = "picFoguete";
            this.picFoguete.Size = new System.Drawing.Size(187, 243);
            this.picFoguete.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picFoguete.TabIndex = 2;
            this.picFoguete.TabStop = false;
            // 
            // grpBotao
            // 
            this.grpBotao.Controls.Add(this.btnDispara);
            this.grpBotao.Controls.Add(this.btnAcelera);
            this.grpBotao.Controls.Add(this.btnFim);
            this.grpBotao.Controls.Add(this.btnPara);
            this.grpBotao.Location = new System.Drawing.Point(192, 436);
            this.grpBotao.Margin = new System.Windows.Forms.Padding(1);
            this.grpBotao.Name = "grpBotao";
            this.grpBotao.Size = new System.Drawing.Size(169, 92);
            this.grpBotao.TabIndex = 11;
            this.grpBotao.TabStop = false;
            // 
            // frmFoguete
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(180)))), ((int)(((byte)(255)))));
            this.ClientSize = new System.Drawing.Size(722, 540);
            this.Controls.Add(this.grpBotao);
            this.Controls.Add(this.picGlub2);
            this.Controls.Add(this.picGlub1);
            this.Controls.Add(this.picParaquedista);
            this.Controls.Add(this.picExplosao);
            this.Controls.Add(this.picAviao);
            this.Controls.Add(this.picFoguete);
            this.Controls.Add(this.pictureBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmFoguete";
            this.Text = "Form1";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmFoguete_FormClosing);
            this.Load += new System.EventHandler(this.frmFoguete_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.picGlub2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.picGlub1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.picParaquedista)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.picExplosao)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.picAviao)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.picFoguete)).EndInit();
            this.grpBotao.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnDispara;
        private System.Windows.Forms.Button btnPara;
        private System.Windows.Forms.PictureBox picFoguete;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.PictureBox picAviao;
        private System.Windows.Forms.PictureBox picExplosao;
        private System.Windows.Forms.PictureBox picParaquedista;
        private System.Windows.Forms.PictureBox picGlub1;
        private System.Windows.Forms.PictureBox picGlub2;
        private System.Windows.Forms.Button btnFim;
        private System.Windows.Forms.Button btnAcelera;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.GroupBox grpBotao;
    }
}

