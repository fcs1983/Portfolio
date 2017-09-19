using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFACalculaÁrea
{
    public class Testes
    {
        public static char consistNum(char c)
        {
            if (((c < '0') || (c > '9')) && c != ',' && c != (char)8)
            {
                MessageBox.Show("Tecla inválida.");
                c = (char)0;
            }
            return (c);
        }

        public static char soUmaVirgula(string texto)
        {
            int i;
            i = texto.IndexOf(',');
            if (i >= 0)
            {
                MessageBox.Show("Vírgula já existente.");
                return ((char)0);
            }
            else
                return (',');
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

