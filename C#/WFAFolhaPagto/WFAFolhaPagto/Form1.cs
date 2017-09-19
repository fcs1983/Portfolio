using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFAFolhaPagto
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnCalcular_Click(object sender, EventArgs e)
        {
            double horas, valor, bruto, inss, ir, liquido;
            int ndep;
            if ((txtHoras.Text == null) || (txtValor.Text == null))
            {
                MessageBox.Show("Preencha todos os campos.");
            }
            horas = double.Parse(txtHoras.Text);
            valor = double.Parse(txtValor.Text);
            ndep = int.Parse(txtDependentes.Text);

            bruto = horas * valor;
            lblBruto.Text = bruto.ToString("###,###,##0.00");

            inss = taxas.CalculaINSS(bruto);
            lblINSS.Text = inss.ToString("###,###,##0.00");

            ir = taxas.CalculaIR((bruto - inss - (ndep * 144.20)));
            lblIR.Text = ir.ToString("###,###,##0.00");

            liquido = bruto - inss - ir;
            lblLiquido.Text = liquido.ToString("###,###,##0.00");
        }

        private void btnLimpa_Click(object sender, EventArgs e)
        {
            txtNome.Text = null;
            txtHoras.Text = null;
            txtValor.Text = null;
            txtDependentes.Text = null;
            lblBruto.Text = null;
            lblINSS.Text = null;
            lblIR.Text = null;
            lblLiquido.Text = null;
            txtNome.Focus();
        }

        private void txtNome_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (Char)13)
                txtHoras.Focus();
            if ((e.KeyChar < 'a' || e.KeyChar > 'z') && (e.KeyChar < 'A' || e.KeyChar > 'Z') && ((e.KeyChar < 'Ç') || (e.KeyChar > 'Ñ')) &&
                e.KeyChar != (char)8 && e.KeyChar != (char)32 && e.KeyChar != (char)13)
            {
                MessageBox.Show("Tecla inválida");
                e.KeyChar = (Char)0;
            }
        }
        private void txtHoras_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (Char)13)
                txtValor.Focus();
            e.KeyChar = taxas.consistNumReal(e.KeyChar, txtHoras.Text);
        }

        private void txtValor_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (Char)13)
                txtDependentes.Focus();
            e.KeyChar = taxas.consistNumReal(e.KeyChar, txtValor.Text);
        }

        private void txtDependentes_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (Char)13)
                btnCalcular.PerformClick();
            if ((e.KeyChar == '-') || (e.KeyChar == ','))
            {
                MessageBox.Show("Não permitido '-' ou ','.");
                e.KeyChar = (Char)0;
            }
        }

        private void btnFim_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja mesmo Sair?", "Pergunta", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Application.Exit();
            }
        }
    }
}
