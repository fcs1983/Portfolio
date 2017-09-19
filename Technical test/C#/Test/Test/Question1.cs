using System.Text;
using System.Security.Cryptography;


namespace Test
{
    public class GetReviews
    {
        string company_url;
        int    page;
        string public_key;
        string private_key;

        public GetReviews()
        {
            company_url = "test.trustedcompany.com";
            page = 0;
            public_key = "d43d6dbe8a04eb719fe56b409543f174";
            private_key = "a68d2d878761ec390a0d91a70cc7a056";
        }

        public GetReviews(string company_url, int page, string public_key, string private_key)
        {
            this.company_url = company_url;
            this.page = page;
            this.public_key = public_key;
            this.private_key = private_key;
        }

        private string GerarHash()
        {
            var data = Encoding.UTF8.GetBytes(public_key + company_url);
            var key = Encoding.UTF8.GetBytes(private_key);
            var hmac = new HMACMD5(key);
            var hashbytes = hmac.ComputeHash(data);

            return System.BitConverter.ToString(hashbytes).Replace("-", "").ToLower();
        }

        public string GerarUrl()
        {
            string hash = GerarHash();

            string url = "https://trustedcompany.com/api/v1/company/reviews/" + company_url + "?key=" + public_key + "-" + hash + "&page=" + page;

            return url;
        }

    }
}
