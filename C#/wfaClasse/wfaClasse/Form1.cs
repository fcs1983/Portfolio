using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace wfaClasse
{
    public partial class frmMercadoria : Form
    {
        public frmMercadoria()
        {
            InitializeComponent();
        }

        Mercadoria produto1 = new Mercadoria();
        Mercadoria produto2 = new Mercadoria();
        Mercadoria produto3 = new Mercadoria();

        private void btnAtribuir_Click(object sender, EventArgs e)
        {
            if ((txtProd1.Text == "") || (txtProd2.Text == "") || (txtProd3.Text == ""))
            {
                MessageBox.Show("Os nomes devem ser preenchidos.");
                txtProd1.Focus();
            }
            else
            {
                lblSaida.Text = null;
                lblSaida.Text += ("Nome inicial do Produto1: " + produto1.nome + "\n" +
                    "Preço inicial do Produto1: " + produto1.preco.ToString("R$ #,##0.00") + "\n\n");

                produto1.nome = txtProd1.Text;
                produto1.preco = double.Parse(txtVal1.Text);
                lblSaida.Text += ("Nome do produto1: " + produto1.nome + "\n" +
                    "Preço do Produto1: " + produto1.preco.ToString("R$ #,##0.00") + "\n\n");

                lblSaida.Text += ("Nome inicial do Produto2: " + produto2.nome + "\n" +
                    "Preço inicial do Produto2: " + produto2.preco.ToString("R$ #,##0.00") + "\n\n");

                produto2.nome = txtProd2.Text;
                produto2.preco = double.Parse(txtVal2.Text);
                lblSaida.Text += ("Nome do produto2: " + produto2.nome + "\n" +
                    "Preço do Produto2: " + produto2.preco.ToString("R$ #,##0.00") + "\n\n");

                lblSaida.Text += ("Nome inicial do Produto3: " + produto3.nome + "\n" +
                    "Preço inicial do Produto3: " + produto3.preco.ToString("R$ #,##0.00") + "\n\n");

                produto3.nome = txtProd3.Text;
                produto3.preco = double.Parse(txtVal3.Text);
                lblSaida.Text += ("Nome do produto3: " + produto3.nome + "\n" +
                    "Preço do Produto3: " + produto3.preco.ToString("R$ #,##0.00") + "\n\n");
            }
        }

        private void btnReajuste_Click(object sender, EventArgs e)
        {
            if ((txtProd1.Text == null) && (txtProd2.Text == null) && (txtProd3.Text == null))
            {
                MessageBox.Show("Os Nomes devem ser preenchidos.");
                txtProd1.Focus();
            }
            else
            {
                produto1.atualizaPreco(double.Parse(txtReajuste.Text));
                produto2.atualizaPreco(double.Parse(txtReajuste.Text));
                produto3.atualizaPreco(double.Parse(txtReajuste.Text));

                txtVal1.Text = produto1.preco.ToString();
                txtVal2.Text = produto2.preco.ToString();
                txtVal3.Text = produto3.preco.ToString();
            }
        }

        private void txtVal1_KeyPress(object sender, KeyPressEventArgs e)
        {
            int i;
            if ((e.KeyChar < '0' || e.KeyChar > '9') && e.KeyChar != ',')
            {
                e.KeyChar = (Char)0;
            }
            if (e.KeyChar == ',')
            {
                i = txtVal1.Text.IndexOf(',');
                if (i >= 0)
                {
                    MessageBox.Show("Use somente uma virgula.");
                    e.KeyChar = (Char)0;
                }
            }
        }


        private void txtVal2_KeyPress(object sender, KeyPressEventArgs e)
        {
            int i;
            if ((e.KeyChar < '0' || e.KeyChar > '9') && e.KeyChar != ',')
            {
                e.KeyChar = (Char)0;
            }
            if (e.KeyChar == ',')
            {
                i = txtVal2.Text.IndexOf(',');
                if (i >= 0)
                {
                    MessageBox.Show("Use somente uma virgula.");
                    e.KeyChar = (Char)0;
                }
            }
        }

        private void txtVal3_KeyPress(object sender, KeyPressEventArgs e)
        {
            int i;
            if ((e.KeyChar < '0' || e.KeyChar > '9') && e.KeyChar != ',')
            {
                e.KeyChar = (Char)0;
            }
            if (e.KeyChar == ',')
            {
                i = txtVal3.Text.IndexOf(',');
                if (i >= 0)
                {
                    MessageBox.Show("Use somente uma virgula.");
                    e.KeyChar = (Char)0;
                }
            }
        }

        private void txtReajuste_KeyPress(object sender, KeyPressEventArgs e)
        {
            int i;
            if ((e.KeyChar < '0' || e.KeyChar > '9') && e.KeyChar != ',')
            {
                e.KeyChar = (Char)0;
            }
            if (e.KeyChar == ',')
            {
                i = txtReajuste.Text.IndexOf(',');
                if (i >= 0)
                {
                    MessageBox.Show("Use somente uma virgula.");
                    e.KeyChar = (Char)0;
                }
            }
        }

        private void btnSair_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnLimpa_Click(object sender, EventArgs e)
        {
            txtProd1.Text = null;
            txtProd2.Text = null;
            txtProd3.Text = null;
            txtVal1.Text = null;
            txtVal2.Text = null;
            txtVal3.Text = null;
            lblSaida.Text = null;
            txtReajuste.Text = null;
            txtProd1.Focus();
        }
    }
}
