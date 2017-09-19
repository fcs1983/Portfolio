using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFAEditor
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void rdbPreto_CheckedChanged(object sender, EventArgs e)
        {
            txtTexto.ForeColor = Color.Black;
        }

        private void rdbVerde_CheckedChanged(object sender, EventArgs e)
        {
            txtTexto.ForeColor = Color.Green;
        }

        private void rdbVermelho_CheckedChanged(object sender, EventArgs e)
        {
            txtTexto.ForeColor = Color.Red;
        }

        private void chkNegrito_CheckedChanged(object sender, EventArgs e)
        {
            if (chkNegrito.Checked && !chkSublinhado.Checked)
                txtTexto.Font = new Font(txtTexto.Font, FontStyle.Bold);

            if (chkNegrito.Checked && chkSublinhado.Checked)
                txtTexto.Font = new Font(txtTexto.Font, FontStyle.Bold | FontStyle.Underline);

            if (!chkNegrito.Checked && !chkSublinhado.Checked)
                txtTexto.Font = new Font(txtTexto.Font, FontStyle.Regular);

            if (!chkNegrito.Checked && chkSublinhado.Checked)
                txtTexto.Font = new Font(txtTexto.Font, FontStyle.Underline);
        }

        private void chkSublinhado_CheckedChanged(object sender, EventArgs e)
        {
            if (chkNegrito.Checked && !chkSublinhado.Checked)
                txtTexto.Font = new Font(txtTexto.Font, FontStyle.Bold);

            if (chkNegrito.Checked && chkSublinhado.Checked)
                txtTexto.Font = new Font(txtTexto.Font, FontStyle.Bold | FontStyle.Underline);

            if (!chkNegrito.Checked && !chkSublinhado.Checked)
                txtTexto.Font = new Font(txtTexto.Font, FontStyle.Regular);

            if (!chkNegrito.Checked && chkSublinhado.Checked)
                txtTexto.Font = new Font(txtTexto.Font, FontStyle.Underline);
        }

        private void btnSair_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnLimpar_Click(object sender, EventArgs e)
        {
            txtTexto.Text = "";
            rdbPreto.Checked = true;
            chkNegrito.Checked = false;
            chkSublinhado.Checked = false;
            txtTexto.Focus();
        }
    }
}
