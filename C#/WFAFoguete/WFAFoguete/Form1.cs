using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFAFoguete
{
    public partial class frmFoguete : Form
    {
        bool choque = false;
        int speed = 2;

        public frmFoguete()
        {
            InitializeComponent();
        }

        private void btnDispara_Click(object sender, EventArgs e)
        {
            timer1.Enabled = true;
        }

        private void btnPara_Click(object sender, EventArgs e)
        {
            timer1.Enabled = false;
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (choque == true)
            {
                picExplosao.Visible = !picExplosao.Visible;
                picParaquedista.Visible = true;
            }
            else
            {
                picFoguete.Top = picFoguete.Top - 1;
                picFoguete.Left = picFoguete.Left + 2;
                if (picFoguete.Top % 7 == 0)
                {
                    picFoguete.Height = picFoguete.Height - 1;
                    picFoguete.Width = picFoguete.Width - 1;
                    picAviao.Height = picAviao.Height + 1;
                    picAviao.Width = picAviao.Width + 1;
                }
                picAviao.Top = picAviao.Top + 1;
                picAviao.Left = picAviao.Left + speed;

                if ((Math.Abs(picFoguete.Top - picAviao.Top) < 60) &&
                    (Math.Abs(picFoguete.Left - picAviao.Left) < 60))
                {
                    choque = true;
                    picFoguete.Visible = false;
                    picAviao.Visible = false;
                }
            }
            picExplosao.Height = picExplosao.Height - 1;
            picExplosao.Width = picExplosao.Width - 1;
            picParaquedista.Top = picParaquedista.Top + 1;

            if ((Math.Abs(picParaquedista.Top - picGlub1.Top) < 100) &&
                    (Math.Abs(picParaquedista.Left - picGlub1.Left) < 100))
            {
                picParaquedista.Visible = false;
                picGlub1.Visible = !picGlub1.Visible;
                picGlub2.Visible = !picGlub1.Visible;
            }
        }
        private void frmFoguete_Load(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Maximized;
            picFoguete.Top = this.ClientSize.Height - picFoguete.Height;
            picGlub1.Top = this.ClientSize.Height - picGlub1.Height;
            picGlub2.Top = this.ClientSize.Height - picGlub2.Height;
            grpBotao.Top = this.ClientSize.Height - grpBotao.Height;
            picExplosao.Height = 500;
            picExplosao.Width = 500;
        }

        private void btnFim_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void frmFoguete_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MessageBox.Show("Deseja mesmo sair?", "PERGUNTA", 
                MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            {
                e.Cancel = true;
            }
        }

        private void btnAcelera_Click(object sender, EventArgs e)
        {
            speed = speed + 1;
        }
    }
}
