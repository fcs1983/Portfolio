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
    public partial class frmDepto : Form
    {
        public frmDepto()
        {
            InitializeComponent();
        }

        private BindingManagerBase bmbDepto;

        private void frmDepto_Load(object sender, EventArgs e)
        {
            try
            {
                this.bmbDepto = this.BindingContext[dtsDepto, "Tabela departamentos"];
                this.txtSigla.DataBindings.Add("Text", this.dtsDepto, "Tabela departamentos.dep_sgl");
                this.txtNome.DataBindings.Add("Text", this.dtsDepto, "Tabela departamentos.dep_nom");
                this.dtaDepto.Fill(dtsDepto, "Tabela departamentos");
            }
            catch (Exception errAplicação)
            {
                MessageBox.Show(this, errAplicação.Message, "Erro...");
            }
            finally
            {
                if (cnnDepto.State == ConnectionState.Open) this.cnnDepto.Close();
            }
        }

        private void btnProx_Click(object sender, EventArgs e)
        {
            this.bmbDepto.Position++;
        }

        private void btnAnterior_Click(object sender, EventArgs e)
        {
            this.bmbDepto.Position--;
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            this.bmbDepto.AddNew();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            this.bmbDepto.EndCurrentEdit();
            this.dtaDepto.Update(this.dtsDepto);
            this.dtsDepto.AcceptChanges();
        }

        private void btnExclui_Click(object sender, EventArgs e)
        {
            this.bmbDepto.RemoveAt(bmbDepto.Position);
        }
    }
}
