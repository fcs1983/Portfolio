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
    public partial class frmNotas : Form
    {
        public frmNotas()
        {
            InitializeComponent();
        }

        private void matriculaBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.matriculaBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.scaDataSet);

        }

        private void matriculaBindingNavigatorSaveItem_Click_1(object sender, EventArgs e)
        {
            this.Validate();
            this.matriculaBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.scaDataSet);

        }

        private void frmNotas_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'scaDataSet.Matricula' table. You can move, or remove it, as needed.
            this.matriculaTableAdapter.Fill(this.scaDataSet.Matricula);

        }
    }
}
