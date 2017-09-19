using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace wfaSCA
{
    public partial class frmEstados : Form
    {
        public frmEstados()
        {
            InitializeComponent();
        }

        private bool valida()
        {
            bool bStatus = false;

            if (uFe_SigTextBox.Text == "")
            {
                epEstados.SetError(uFe_SigTextBox, "Entre com a sigla do estado");
                bStatus = true;
            }
            else
                epEstados.SetError(uFe_SigTextBox, "");

            if (ufe_NomeTextBox.Text == "")
            {
                epEstados.SetError(ufe_NomeTextBox, "Entre com o nome do Estado.");
                bStatus = true;
            }
            else
                epEstados.SetError(ufe_NomeTextBox, "");

            return bStatus;
        }
        
        private void estadoBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.estadoBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.scaDataSet);

        }

        private void estadoBindingNavigatorSaveItem_Click_1(object sender, EventArgs e)
        {
            if (valida())
            {
                MessageBox.Show("Campos em branco");
                return;
            }
            this.Validate();
            this.estadoBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.scaDataSet);

        }

        private void frmEstados_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'scaDataSet.Estado' table. You can move, or remove it, as needed.
            this.estadoTableAdapter.Fill(this.scaDataSet.Estado);

        }

        private void uFe_SigTextBox_Validating(object sender, CancelEventArgs e)
        {
            if (uFe_SigTextBox.Text.Trim().Length == 0)
                epEstados.SetError(uFe_SigTextBox, "Entre com a sigla do Estado.");
            else
                epEstados.SetError(uFe_SigTextBox, "");
        }

        private void ufe_NomeTextBox_Validating(object sender, CancelEventArgs e)
        {
            if (ufe_NomeTextBox.Text.Trim().Length == 0)
                epEstados.SetError(ufe_NomeTextBox, "Entre com o nome do Estado.");
            else
                epEstados.SetError(ufe_NomeTextBox, "");
        }

        private void fillByNomeEstadoToolStripButton_Click(object sender, EventArgs e)
        {
            try
            {
                this.estadoTableAdapter.FillByNomeEstado(this.scaDataSet.Estado, ufe_NomeToolStripTextBox.Text);
            }
            catch (System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }

        }
    }
}
