using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FinalProject
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        sqlSınıf bgl = new sqlSınıf();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from filmTable where id=2", bgl.baglan());
            SqlCommand cmd2 = new SqlCommand("select * from filmTable where id=5", bgl.baglan());
            SqlCommand cmd3 = new SqlCommand("select * from filmTable where id=6", bgl.baglan());
            SqlCommand cmd4 = new SqlCommand("select * from filmTable where id=7", bgl.baglan());
            SqlCommand cmd5 = new SqlCommand("select * from filmTable", bgl.baglan());
            SqlDataReader reader = cmd.ExecuteReader();
            SqlDataReader reader2 = cmd2.ExecuteReader();
            SqlDataReader reader3 = cmd3.ExecuteReader();
            SqlDataReader reader4 = cmd4.ExecuteReader();
            SqlDataReader reader5 = cmd5.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
            DataList2.DataSource = reader2;
            DataList2.DataBind();
            DataList3.DataSource = reader3;
            DataList3.DataBind();
            DataList4.DataSource = reader4;
            DataList4.DataBind();
            DataList5.DataSource = reader5;
            DataList5.DataBind();







        }
    }
}