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
    public partial class frmAlunos : Form
    {
        public frmAlunos()
        {
            InitializeComponent();
        }

        private void tabela_alunoBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.tabela_alunoBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.alunosDataSet);

        }

        private void frmAlunos_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'alunosDataSet.Tabela_aluno' table. You can move, or remove it, as needed.
            this.tabela_alunoTableAdapter.Fill(this.alunosDataSet.Tabela_aluno);

        }

        private void rdbFem_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void rdbMasc_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void txtSexo_TextChanged(object sender, EventArgs e)
        {
            if (txtSexo.Text == "Masc")
            {
                rdbMasc.Checked = true;
            }
            else
            {
                rdbFem.Checked = true;
            }
        }
    }
}
