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
    public partial class frmDepartamentos : Form
    {
        public frmDepartamentos()
        {
            InitializeComponent();
        }

        private bool valida()
        {
            bool bStatus = false;

            if (dep_sglTextBox.Text == "")
            {
                epDepto.SetError(dep_sglTextBox, "Entre com a sigla do Departamento.");
                bStatus = true;
            }
            else
                epDepto.SetError(dep_sglTextBox, "");

            if (dep_nomTextBox.Text == "")
            {
                epDepto.SetError(dep_nomTextBox, "Entre com o nome do Departamento.");
                bStatus = true;
            }
            else
                epDepto.SetError(dep_nomTextBox, "");

            return bStatus;
        }

        private void departamentoBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            if (valida())
            {
                MessageBox.Show("Campos em branco");
                return;
            }
            this.Validate();
            this.departamentoBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.scaDataSet);

        }

        private void frmDepartamentos_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'scaDataSet.Departamento' table. You can move, or remove it, as needed.
            this.departamentoTableAdapter.Fill(this.scaDataSet.Departamento);

        }

        private void fillByNomeDepartamentoToolStripButton_Click(object sender, EventArgs e)
        {
            try
            {
                this.departamentoTableAdapter.FillByNomeDepartamento(this.scaDataSet.Departamento, dep_nomToolStripTextBox.Text);
            }
            catch (System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }

        }

        private void dep_sglTextBox_Validating(object sender, CancelEventArgs e)
        {
            if (dep_sglTextBox.Text.Trim().Length == 0)
                epDepto.SetError(dep_sglTextBox, "Entre com a sigla do Departamento.");
            else
                epDepto.SetError(dep_sglTextBox, "");
        }

        private void dep_nomTextBox_Validating(object sender, CancelEventArgs e)
        {
            if (dep_nomTextBox.Text.Trim().Length == 0)
                epDepto.SetError(dep_nomTextBox, "Entre com o nome do Departamento.");
            else
                epDepto.SetError(dep_nomTextBox, "");
        }
    }
}
