using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFACalculadora
{
    public partial class frmCalculadora : Form
    {
        public frmCalculadora()
        {
            InitializeComponent();
        }

        void soma()
        {
            float valor1, valor2, resultado;
            valor1 = 0;
            valor2 = 0;

            try
            {
                valor1 = float.Parse(txtN1.Text);
                valor2 = float.Parse(txtN2.Text);
                resultado = valor1 + valor2;
                lblResult.Text = resultado.ToString();
            }
            catch (Exception caught)
            {
                lblResult.Text = "";
                lblResult.Text = caught.Message;
            }
            return;
        }

        void subtracao()
        {
            float valor1, valor2, resultado;
            valor1 = 0;
            valor2 = 0;

            try
            {
                valor1 = float.Parse(txtN1.Text);
                valor2 = float.Parse(txtN2.Text);
                resultado = valor1 - valor2;
                lblResult.Text = resultado.ToString();
            }
            catch (Exception caught)
            {
                lblResult.Text = "";
                lblResult.Text = caught.Message;
            }
            return;
        }

        void multiplicacao()
        {
            float valor1, valor2, resultado;
            valor1 = 0;
            valor2 = 0;

            try
            {
                valor1 = float.Parse(txtN1.Text);
                valor2 = float.Parse(txtN2.Text);
                resultado = valor1 * valor2;
                lblResult.Text = resultado.ToString();
            }
            catch (Exception caught)
            {
                lblResult.Text = "";
                lblResult.Text = caught.Message;
            }
            return;
        }

        void divisao()
        {
            float valor1, valor2, resultado;
            valor1 = 0;
            valor2 = 0;

            try
            {
                valor1 = float.Parse(txtN1.Text);
                valor2 = float.Parse(txtN2.Text);
                if (valor2 == 0)
                {
                    MessageBox.Show("Divisão por 0");
                    txtN2.Focus();
                    txtN2.SelectAll();
                }
                resultado = valor1 / valor2;
                lblResult.Text = resultado.ToString();
            }
            catch (Exception caught)
            {
                lblResult.Text = "";
                lblResult.Text = caught.Message;
            }
            return;
        }

        private void btnSoma_Click(object sender, EventArgs e)
        {
            soma();
        }

        private void txtN1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (Char)13)
                txtN2.Focus();
    /*        if ((e.KeyChar < '0' || e.KeyChar > '9') && e.KeyChar != ',' && e.KeyChar != (Char)13 && e.KeyChar != (Char)8 
                && e.KeyChar != '+' && e.KeyChar != '-' && e.KeyChar != '/' && e.KeyChar != '*')
            {
                MessageBox.Show("Tecla Inválida");
                e.KeyChar = (Char)0;
            }                                                              */
            if (e.KeyChar == ',' && txtN1.Text.IndexOf(',') >= 0)
            {
                MessageBox.Show("Já existe uma virgula.");
                e.KeyChar = (char)0;
            }
            switch(e.KeyChar)
            {
                case '+':
                    soma();
                    e.KeyChar = (Char)0;
                    break;
                
                case '-':
                    subtracao();
                    e.KeyChar = (Char)0;
                    break;

                case '*':               
                    multiplicacao();
                    e.KeyChar = (Char)0;
                    break;

                case '/':
                    divisao();
                    e.KeyChar = (Char)0;
                    break;
            }
        }

        private void btnLimpa_Click(object sender, EventArgs e)
        {
            txtN1.Text = null;
            txtN2.Text = null;
            lblResult.Text = null;
            txtN1.Focus();
        }

        private void btnSub_Click(object sender, EventArgs e)
        {
            subtracao();
        }

        private void btnMult_Click(object sender, EventArgs e)
        {
            multiplicacao();
        }

        private void btnDiv_Click(object sender, EventArgs e)
        {
            divisao();
        }

        private void txtN2_KeyPress(object sender, KeyPressEventArgs e)
        {
        /*    if ((e.KeyChar < '0' || e.KeyChar > '9') && e.KeyChar != ',' && e.KeyChar != (Char)13 && e.KeyChar != (Char)8
                && e.KeyChar != '+' && e.KeyChar != '-' && e.KeyChar != '/' && e.KeyChar != '*')
            {
                MessageBox.Show("Tecla Inválida");
                e.KeyChar = (Char)0;
            }                                                                 */
            if (e.KeyChar == ',' && txtN2.Text.IndexOf(',') >= 0)
            {
                MessageBox.Show("Já existe uma virgula.");
                e.KeyChar = (char)0;
            }
            switch (e.KeyChar)
            {
                case '+':
                    soma();
                    e.KeyChar = (Char)0;
                    break;

                case '-':
                    subtracao();
                    e.KeyChar = (Char)0;
                    break;

                case '*':
                    multiplicacao();
                    e.KeyChar = (Char)0;
                    break;

                case '/':
                    divisao();
                    e.KeyChar = (Char)0;
                    break;
            }
        }

        private void frmCalculadora_KeyPress(object sender, KeyPressEventArgs e)
        {
            if ((e.KeyChar < '0' || e.KeyChar > '9') && e.KeyChar != ',' && e.KeyChar != (Char)13 && e.KeyChar != (Char)8
               && e.KeyChar != '+' && e.KeyChar != '-' && e.KeyChar != '/' && e.KeyChar != '*')
            {
                MessageBox.Show("Tecla Inválida");
                e.KeyChar = (Char)0;
            }

            switch (e.KeyChar)
            {
                case '+':
                    soma();
                    e.KeyChar = (Char)0;
                    break;

                case '-':
                    subtracao();
                    e.KeyChar = (Char)0;
                    break;

                case '*':
                    multiplicacao();
                    e.KeyChar = (Char)0;
                    break;

                case '/':
                    divisao();
                    e.KeyChar = (Char)0;
                    break;
            }
        }

        private void lblResult_TextChanged(object sender, EventArgs e)
        {
            if (lblResult.Text == null)
                lblResult.ForeColor = System.Drawing.Color.Black;
            else
            {
                if (float.Parse(lblResult.Text) < 0)
                    lblResult.ForeColor = System.Drawing.Color.Red;
                else
                    lblResult.ForeColor = System.Drawing.Color.Black;
            }
        }
    }
}
