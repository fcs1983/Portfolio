using System;
using System.Text;
using System.Security.Cryptography;
using System.Web;

namespace Test
{
    public class UniqueLink
    {
        int    company_id;
        string company_secret;
        string customer_email;
        string customer_name;
        string order_id;

        public UniqueLink()
        {
            company_id = 564869;
            company_secret = "a907f5ed930d7d6a6778e60f7fb7acc78f5dc9e2";
            customer_email = "fcs1983@gmail.com";
            customer_name = "Fabio";
            order_id = "xxxx";
        }

        public UniqueLink(int company_id, string company_secret, string customer_email, string customer_name, string order_id)
        {
            this.company_id = company_id;
            this.company_secret = company_secret;
            this.customer_email = customer_email;
            this.customer_name = customer_name;
            this.order_id = order_id;
        }

        private string GerarHash()
        {
            string encode = company_id + company_secret + customer_email + order_id;
            ASCIIEncoding AE = new ASCIIEncoding();
            byte[] HashValue, MessageBytes = AE.GetBytes(encode);
            SHA1Managed SHhash = new SHA1Managed();
            string strHex = "";
            HashValue = SHhash.ComputeHash(MessageBytes);
            strHex = BitConverter.ToString(HashValue);
            return strHex;
        }

        private string GerarUrl()
        {
            string hash = GerarHash();

            ASCIIEncoding AE = new ASCIIEncoding();
            byte[] email_bytes = AE.GetBytes(customer_email);
            string email_base64 = Convert.ToBase64String(email_bytes);

            string url = "http://trustedcompany.com/review-invite/" + company_id + "/ul/" + hash + "?a=" + email_base64 + "&b=" + customer_name + "&c=" + order_id;

            return HttpUtility.UrlPathEncode(url);
        }
    }
}
