using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFASenha
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        string senha;
        int tentativas = 1;

        private void txtNome_KeyPress(object sender, KeyPressEventArgs e)
        {
            char c;
            int i;
            i = (int)e.KeyChar;
            if (i >= 97 && i <= 122)
            {
                c = e.KeyChar;
                c = (char)((int)c - 32);
                e.KeyChar = c;
            }
            if (e.KeyChar == (Char)13)
            {
                txtNome.Text = txtNome.Text.Trim();
                if (txtNome.Text.Trim().Length == 0)
                {
                    MessageBox.Show("Preenchimento obrigatório");
                    txtNome.Focus();
                    return;
                }
                txtSenha.Focus();
            }
        }

        private void txtSenha_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar != (Char)13)
            {
                senha = senha + e.KeyChar;
                e.KeyChar = '*';
            }
            else
            {
                if (tentativas <= 3)
                {
                    if (senha == "1234")
                    {
                        btnTesouro.Visible = true;
                        txtNome.Enabled = false;
                        txtSenha.Enabled = false;
                        MessageBox.Show("Bem vindo Sr. " + txtNome.Text);
                    }
                    else
                    {
                        tentativas = tentativas + 1;
                        txtSenha.Text = "";
                        MessageBox.Show("Caia Fora!..");
                        senha = "";
                    }
                }
                else
                {
                    btnSair.PerformClick();
                }
            }
        }

        private void btnSair_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (tentativas <= 3)
            {
                if (MessageBox.Show("Deseja mesmo sair?", "PERGUNTA",
                    MessageBoxButtons.YesNo, MessageBoxIcon.Question) ==
                    DialogResult.No)
                {
                    e.Cancel = true;
                }
            }
        }

        private void btnTesouro_Click(object sender, EventArgs e)
        {
            Form tstTesouro = new Form2();
            tstTesouro.Show();
            btnTesouro.Visible = false;
        }
    }
}
