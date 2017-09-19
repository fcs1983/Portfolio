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
    public partial class frmDisciplinas : Form
    {
        public frmDisciplinas()
        {
            InitializeComponent();
        }

        private void disciplinaBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            if (valida())
            {
                MessageBox.Show("Campos em branco");
                return;
            }
            
            this.Validate();
            this.disciplinaBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.scaDataSet);

        }

        private void frmDisciplinas_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'scaDataSet.Disciplina' table. You can move, or remove it, as needed.
            this.disciplinaTableAdapter.Fill(this.scaDataSet.Disciplina);

        }

        private bool valida()
        {
            bool bStatus = false;

            if (dis_CodTextBox.Text == "")
            {
                epDisciplinas.SetError(dis_CodTextBox, "Entre com o código da disciplina.");
                bStatus = true;
            }
            else
                epDisciplinas.SetError(dis_CodTextBox, "");

            if (dis_NomTextBox.Text == "")
            {
                epDisciplinas.SetError(dis_NomTextBox, "Entre com o nome da disciplina.");
                bStatus = true;
            }
            else
                epDisciplinas.SetError(dis_NomTextBox, "");

            if (dis_Crg_HorTextBox.Text == "")
            {
                epDisciplinas.SetError(dis_Crg_HorTextBox, "Entre com a Carga horária.");
                bStatus = true;
            }
            else
                epDisciplinas.SetError(dis_Crg_HorTextBox, "");
            return bStatus;
        }

        private void dis_CodTextBox_Validating(object sender, CancelEventArgs e)
        {
            if (dis_CodTextBox.Text.Trim().Length == 0)
                epDisciplinas.SetError(dis_CodTextBox, "Entre com o código da disciplina.");
            else
                epDisciplinas.SetError(dis_CodTextBox, "");
        }

        private void fillByToolStripButton_Click(object sender, EventArgs e)
        {
            try
            {
                this.disciplinaTableAdapter.FillBy(this.scaDataSet.Disciplina, dis_CodToolStripTextBox.Text, dis_NomToolStripTextBox.Text, dis_Cur_CodToolStripTextBox.Text);
            }
            catch (System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }

        }

        private void dis_NomTextBox_Validating(object sender, CancelEventArgs e)
        {
            if (dis_NomTextBox.Text.Trim().Length == 0)
                epDisciplinas.SetError(dis_NomTextBox, "Entre com o nome da disciplina.");
            else
                epDisciplinas.SetError(dis_NomTextBox, "");
        }

        private void dis_Crg_HorTextBox_Validating(object sender, CancelEventArgs e)
        {
            if (dis_Crg_HorTextBox.Text.Trim().Length == 0)
                epDisciplinas.SetError(dis_Crg_HorTextBox, "Entre com a Carga horária.");
            else
                epDisciplinas.SetError(dis_Crg_HorTextBox, "");
        }

        private void dis_Cur_CodTextBox_Validating(object sender, CancelEventArgs e)
        {
            if (dis_Cur_CodTextBox.Text.Trim().Length == 0)
                epDisciplinas.SetError(dis_Cur_CodTextBox, "Entre com a Sigla do curso.");
            else
                epDisciplinas.SetError(dis_Cur_CodTextBox, "");
        }

        private void dis_Crg_HorTextBox_KeyPress(object sender, KeyPressEventArgs e)
        {
            if ((e.KeyChar < '0') || (e.KeyChar > '9') && (e.KeyChar != ',') && (e.KeyChar != (char)8) 
                && (e.KeyChar != (char)13))
            {
                e.KeyChar = (Char)0;
                MessageBox.Show("Apenas números.");
                dis_Crg_HorTextBox.Focus();
            }
        }
    }
}
