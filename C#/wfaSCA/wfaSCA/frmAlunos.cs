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
    public partial class frmAlunos : Form
    {
        public frmAlunos()
        {
            InitializeComponent();
        }

        private void alunoBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            if (valida())
            {
                MessageBox.Show("Campos em branco");
                return;
            }
            if (ValidaCPF.IsCpf(alu_CPFTextBox.Text))
            {
                MessageBox.Show("CPF inválido.");
                alu_CPFTextBox.Focus();
                return;
            }

            this.Validate();
            this.alunoBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.scaDataSet);

        }

        private void frmAlunos_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'scaDataSet.Aluno' table. You can move, or remove it, as needed.
            this.alunoTableAdapter.Fill(this.scaDataSet.Aluno);

        }

        private bool valida()
        {
            bool bStatus = false;

            if (alu_MatTextBox.Text == "")
            {
                epAlunos.SetError(alu_MatTextBox, "Entre com a matricula.");
                bStatus = true;
            }
            else
                epAlunos.SetError(alu_MatTextBox, "");

            if (alu_NomTextBox.Text == "")
            {
                epAlunos.SetError(alu_NomTextBox, "Entre com o nome do Aluno.");
                bStatus = true;
            }
            else
                epAlunos.SetError(alu_NomTextBox, "");

            return bStatus;
        }

        private void alu_MatTextBox_Validating(object sender, CancelEventArgs e)
        {
            if (alu_MatTextBox.Text.Trim().Length == 0)
                epAlunos.SetError(alu_MatTextBox, "Entre com a matricula.");
            else
                epAlunos.SetError(alu_MatTextBox, "");
        }

        private void alu_MatTextBox_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (((e.KeyChar < '0') || (e.KeyChar > '9')) && e.KeyChar != (char)8 && e.KeyChar != (char)13 && e.KeyChar != (char)9)
            {
                MessageBox.Show("Tecla inválida.");
                e.KeyChar = (char)0;
            }
        }

        private void fillByToolStripButton_Click(object sender, EventArgs e)
        {
            try
            {
                this.alunoTableAdapter.FillBy(this.scaDataSet.Aluno, alu_MatToolStripTextBox.Text, alu_NomToolStripTextBox.Text);
            }
            catch (System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }

        }

        private void bindingNavigatorDeleteItem_Click(object sender, EventArgs e)
        {

        }
    }
}
