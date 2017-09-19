using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFACalculaArea
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            label1.Text = "Área de um quadrado: " + area(3).ToString() + "\n" +
                          "Área de um Retangulo: " + area(3, 2).ToString() + "\n" +
                          "Volume de um Paralelepípedo: " + area(3, 2, 5).ToString();
        }

        int area(int x)
        {
            return (x * x);
        }

        int area(int x, int y)
        {
            return (x * y);
        }
        int area(int x, int y, int z)
        {
            return (x * y * z); 
        }
    }
}
