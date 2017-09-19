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
    public partial class frmCursos : Form
    {
        public frmCursos()
        {
            InitializeComponent();
        }

        private bool valida()
        {
            bool bStatus = false;

            if (cur_CodTextBox.Text == "")
            {
                epCursos.SetError(cur_CodTextBox, "Entre com a sigla do Curso.");
                bStatus = true;
            }
            else
                epCursos.SetError(cur_CodTextBox, "");

            if (cur_NomTextBox.Text == "")
            {
                epCursos.SetError(cur_NomTextBox, "Entre com o nome do Curso.");
                bStatus = true;
            }
            else
                epCursos.SetError(cur_NomTextBox, "");

            return bStatus;
        }

        private void cursoBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            if (valida())
            {
                MessageBox.Show("Campos em branco");
                return;
            }
            this.Validate();
            this.cursoBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.scaDataSet);

        }

        private void frmCursos_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'scaDataSet.Curso' table. You can move, or remove it, as needed.
            this.cursoTableAdapter.Fill(this.scaDataSet.Curso);

        }

        private void fillByNomeCursoToolStripButton_Click(object sender, EventArgs e)
        {
            try
            {
                this.cursoTableAdapter.FillByNomeCurso(this.scaDataSet.Curso, cur_NomToolStripTextBox.Text);
            }
            catch (System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }

        }

        private void cur_CodTextBox_Validating(object sender, CancelEventArgs e)
        {
            if (cur_CodTextBox.Text.Trim().Length == 0)
                epCursos.SetError(cur_CodTextBox, "Entre com a sigla do Curso.");
            else
                epCursos.SetError(cur_CodTextBox, "");
        }

        private void cur_NomTextBox_Validating(object sender, CancelEventArgs e)
        {
            if (cur_NomTextBox.Text.Trim().Length == 0)
                epCursos.SetError(cur_NomTextBox, "Entre com o nome do Curso.");
            else
                epCursos.SetError(cur_NomTextBox, "");
        }
    }
}
