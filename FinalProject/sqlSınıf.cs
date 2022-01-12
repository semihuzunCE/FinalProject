using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


namespace FinalProject
{
    public class sqlSınıf
    {
        public SqlConnection baglan()
        {
            SqlConnection baglanti = new SqlConnection(@"  Data Source =.; Initial Catalog = filmDatabase; Integrated Security = True");
            baglanti.Open();
            return baglanti;
        }
    }
}