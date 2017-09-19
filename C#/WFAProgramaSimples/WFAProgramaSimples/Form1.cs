using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFAProgramaSimples
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        int contador = 0;

        private void btnClickMe_Click(object sender, EventArgs e)
        {
            //int contador = 0;
            contador = contador + 1;
            txtContaClicks.Text = contador.ToString();
        }

        private void Form1_Click(object sender, EventArgs e)
        {
            string mensagem = "Valor do contador = " + contador;
            MessageBox.Show(mensagem);
        }
    }
}
