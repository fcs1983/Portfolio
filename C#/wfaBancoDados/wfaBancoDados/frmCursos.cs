using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace wfaBancoDados
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

            if (cur_sglTextBox.Text == "")
            {
                epCurso.SetError(cur_sglTextBox, "Entre com a sigle do curso");
                bStatus = true;
            }
            else
                epCurso.SetError(cur_sglTextBox, "");

            if (cur_nomTextBox.Text == "")
            {
                epCurso.SetError(cur_nomTextBox, "Entre com o nome do curso");
                bStatus = true;
            }
            else
                epCurso.SetError(cur_nomTextBox, "");

            if (cur_sep_sglTextBox.Text.Trim().Length == 0)
            {
                epCurso.SetError(cur_sep_sglTextBox, "Entre com a sigla do Depto.");
            }
            else
                epCurso.SetError(cur_sep_sglTextBox, "");

            return bStatus;
        }
        
        private void tabela_cursosBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            if (valida())
            {
                MessageBox.Show("Campos em branco");
                return;
            }
            cur_sglTextBox.Focus();

            this.Validate();
            this.tabela_cursosBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.alunosDataSet);

        }

        private void frmCursos_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'alunosDataSet.Tabela_cursos' table. You can move, or remove it, as needed.
            this.tabela_cursosTableAdapter.Fill(this.alunosDataSet.Tabela_cursos);

        }

        private void cur_sglTextBox_Validating(object sender, CancelEventArgs e)
        {
            if (cur_sglTextBox.Text.Trim().Length == 0)
            {
                epCurso.SetError(cur_sglTextBox, "Entre com a sigla do curso.");
            }
            else
                epCurso.SetError(cur_sglTextBox, "");
        }

        private void cur_nomTextBox_Validating(object sender, CancelEventArgs e)
        {
            if (cur_nomTextBox.Text.Trim().Length == 0)
            {
                epCurso.SetError(cur_nomTextBox, "Entre com o nome do curso.");
            }
            else
                epCurso.SetError(cur_nomTextBox, "");
        }

        private void cur_sep_sglTextBox_Validating(object sender, CancelEventArgs e)
        {
            if (cur_sep_sglTextBox.Text.Trim().Length == 0)
            {
                epCurso.SetError(cur_sep_sglTextBox, "Entre com o departamento.");
            }
            else
                epCurso.SetError(cur_sep_sglTextBox, "");
        }

        private void fillByCursoNomeToolStripButton_Click(object sender, EventArgs e)
        {
            try
            {
                this.tabela_cursosTableAdapter.FillByCursoNome(this.alunosDataSet.Tabela_cursos, cur_nomToolStripTextBox.Text);
            }
            catch (System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }

        }
    }
}
