using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFACalculaÁrea
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        float area (float x)
        {
            return (x * x);
        }

        float area (float x, float y)
        {
            return (x * y);
        }

        float area (float x, float y, float z)
        {
            return (x * y * z);
        }

        private void btnCalculo_Click(object sender, EventArgs e)
        {
            float x, y, z;
            if (rdbQuadrado.Checked)
                if (txtX.Text.Trim() != "")
                {
                    x = float.Parse(txtX.Text);
                    lblArea.Text = area(x).ToString();
                }
                else
                {
                    MessageBox.Show("Preenchimento Obrigatório X");
                    txtX.Focus();
                    return;
                }

            if (rdbRetangulo.Checked)
                if ((txtX.Text.Trim() != "") && (txtY.Text.Trim() != ""))
                {
                    x = float.Parse(txtX.Text);
                    y = float.Parse(txtY.Text);
                    lblArea.Text = area(x, y).ToString();
                }
                else
                {
                    MessageBox.Show("Preenchimento Obrigatório X e Y.");
                    txtX.Focus();
                    return;
                }

            if (rdbParalelepipedo.Checked)
                if ((txtX.Text.Trim() != "") && (txtY.Text.Trim() != "") && (txtZ.Text.Trim() != ""))
                {
                    x = float.Parse(txtX.Text);
                    y = float.Parse(txtY.Text);
                    z = float.Parse(txtZ.Text);
                    lblArea.Text = area(x, y, z).ToString(); 
                }
                else
                {
                    MessageBox.Show("Preenchimento Obrigatório X, Y e Z.");
                    txtX.Focus();
                    return;
                }
        }

        private void txtX_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.KeyChar = Testes.consistNumReal(e.KeyChar, txtX.Text);
        }

        private void txtY_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.KeyChar = Testes.consistNumReal(e.KeyChar, txtY.Text);
        }

        private void txtZ_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.KeyChar = Testes.consistNumReal(e.KeyChar, txtZ.Text);
        }

        private void btnLimpa_Click(object sender, EventArgs e)
        {
            txtX.Text = null;
            txtY.Text = null;
            txtZ.Text = null;
            lblArea.Text = null;
            rdbQuadrado.Checked = true;
            txtX.Focus();   
        }

        private void rdbQuadrado_CheckedChanged(object sender, EventArgs e)
        {
            txtY.Enabled = false;
            txtZ.Enabled = false;
        }

        private void rdbRetangulo_CheckedChanged(object sender, EventArgs e)
        {
            txtY.Enabled = true;
            txtZ.Enabled = false;
        }

        private void rdbParalelepipedo_CheckedChanged(object sender, EventArgs e)
        {
            txtY.Enabled = true;
            txtZ.Enabled = true;
        }

        private void txtA_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.KeyChar = Testes.consistNumReal(e.KeyChar, txtA.Text);
        }

        private void txtB_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.KeyChar = Testes.consistNumReal(e.KeyChar, txtB.Text);
        }

        private void txtC_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.KeyChar = Testes.consistNumReal(e.KeyChar, txtC.Text);
        }

        private void btnClassificar_Click(object sender, EventArgs e)
        {
            float A, B, C, aux;
            if ((txtA.Text.Trim() == "") || (txtB.Text.Trim() == "") || (txtC.Text.Trim() == ""))
            {
                MessageBox.Show("Preencha os três campos.");
                return;
            }
            else
            {
                A = float.Parse(txtA.Text);
                B = float.Parse(txtB.Text);
                C = float.Parse(txtC.Text);
                if (A >= B)
                {
                    aux = A;
                    A = B;
                    B = aux;
                }
                else if (B >= C)
                {
                    aux = B;
                    B = C;
                    C = aux;
                }
                else if (A >= C)
                {
                    aux = A;
                    A = C;
                    C = aux; 
                }
                txt1.Text = A.ToString();
                txt2.Text = B.ToString();
                txt3.Text = C.ToString();
            }
        }

        private void btnLimpar_Click(object sender, EventArgs e)
        {
            txtA.Text = null;
            txtB.Text = null;
            txtC.Text = null;
            txt1.Text = null;
            txt2.Text = null;
            txt3.Text = null;
            txtA.Focus();
        }

        private void btnLimp_Click(object sender, EventArgs e)
        {
            txtDe.Text = null;
            txtAte.Text = null;
            lstNros.Items.Clear();
            txtDe.Focus();
        }
    }
}
