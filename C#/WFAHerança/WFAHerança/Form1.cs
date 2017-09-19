using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFAHerança
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        PessoaFisica clientepf = new PessoaFisica();

        private void btnCadastrar_Click(object sender, EventArgs e)
        {
            if (txtNome.Text == "")
            {
                MessageBox.Show("Campo nome vazio.");
                txtNome.Focus();
            }
            if (mskCPF.Text == "")
            {
                MessageBox.Show("Campo CPF vazio.");
                mskCPF.Focus();
            }
            if (clientepf.valCpf(mskCPF.Text))
            {
                clientepf.setNome(txtNome.Text);
                clientepf.setCpf(mskCPF.Text);
                btnExibir.Enabled = true;
            }
            else
            {
                MessageBox.Show("CPF invalido.");
                mskCPF.Focus();
            }
        }

        private void btnExibir_Click(object sender, EventArgs e)
        {
            lblRegistro.Text = "";
            lblRegistro.Text += "Nome: ";
            lblRegistro.Text += clientepf.getNome();
            lblRegistro.Text += "\nCPF: ";
            lblRegistro.Text += clientepf.getCpf();
        }

        private void btnLimpar_Click(object sender, EventArgs e)
        {
            txtNome.Text = "";
            mskCPF.Text = "";
            lblRegistro.Text = "";
            rdbPFisica.Checked = true;
            btnExibir.Enabled = false;
            txtNome.Focus();
        }

        private void btnSair_Click(object sender, EventArgs e)
        {
            Close();
        }
    
    }

    class Pessoa
    {
        private string nome;

        public void setNome(string nome)
        {
            this.nome = nome;
        }

        public string getNome()
        {
            return (nome);
        }
    }

    class PessoaJuridica : Pessoa
    {
        private string cnpj;

        public void setCnpj(string cnpj)
        {
            this.cnpj = cnpj;
        }

        public string getCnpj()
        {
            return (cnpj);
        }
    }

    class PessoaFisica : Pessoa
    {
        private string cpf;

        public void setCpf(string cpf)
        {
            this.cpf = cpf;
        }

        public string getCpf()
        {
            return (cpf);
        }

        public bool valCpf(string cpf)
        {
            long dig1, dig2, ncpf, soma = 0,cont = 2, r;
            ncpf = long.Parse(cpf);
            dig2 = ncpf % 10;
            ncpf = ncpf / 10;
            dig1 = ncpf % 10;
            ncpf = ncpf / 10;
            while (ncpf != 0)
            {
                soma = soma + ((ncpf % 10) * cont);
                cont++;
                ncpf = ncpf / 10;
            }
            r = soma % 11;  
            if ((r != 0) || (r != 1))
                r = 11 - r;          
            if (r == dig1)
            {
                ncpf = long.Parse(cpf);
                ncpf = ncpf / 10;
                soma = 0;
                cont = 2;
                while (ncpf != 0)
                {
                    soma = soma + ((ncpf % 10) * cont);
                    cont++;
                    ncpf = ncpf / 10;
                }
                r = soma % 11;
                if ((r != 0) || (r != 1))
                    r = 11 - r;
                if (r == dig2)
                    return true;
                else
                    return false;
            }
            else
                return false;
        }
    }
}
