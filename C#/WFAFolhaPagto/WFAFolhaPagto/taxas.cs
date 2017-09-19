using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace WFAFolhaPagto
{
    public static class taxas
    {
        public static double CalculaINSS (double salBruto)
        {
            if (salBruto <= 965.67)
                return (salBruto * 0.08);
            else if (salBruto <= 1609.45)
                return (salBruto * 0.09);
            else if (salBruto <= 3218.90)
                return (salBruto * 0.11);
            else
                return (354.08);
        }

        public static double CalculaIR (double salDeduzido)
        {
            if (salDeduzido <= 1434.59)
                return (0);
            else if (salDeduzido <= 2150.00)
                return (salDeduzido * 0.075 - 107.59);
            else if (salDeduzido <= 2866.70)
                return (salDeduzido * 0.15 - 268.84);
            else if (salDeduzido <= 3582.00)
                return (salDeduzido * 0.225 - 483.84);
            else
                return (salDeduzido * 0.275 - 662.94);
        }

        public static char consistNumReal(char c, string texto)
        {
            int i;
            if (((c < '0') || (c > '9')) && c != ',' && c != (char)8)
            {
                MessageBox.Show("Tecla inválida.");
                return ((char)0);
            }
            else
                if (c == ',')
                {
                    i = texto.IndexOf(',');
                    if (i >= 0)
                    {
                        MessageBox.Show("Vírgula já existente.");
                        return ((char)0);
                    }
                    else
                        return (',');
                }
                else
                    return (c);
        }
    }
}
