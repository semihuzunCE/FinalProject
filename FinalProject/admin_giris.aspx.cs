using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FinalProject
{

    public partial class admin_giris : System.Web.UI.Page
    {
        sqlSınıf bgl = new sqlSınıf();
        protected void Page_Load(object sender, EventArgs e)
        {
            
          if(Page.IsPostBack==false)
                Label1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Timeout = 30;
            SqlCommand cmd = new SqlCommand("select * from adminTable where admin_name=@admin and admin_pass=@sifre", bgl.baglan());
            cmd.Parameters.AddWithValue("@admin", TextBox1.Text);
            cmd.Parameters.AddWithValue("@sifre", TextBox2.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["admin_id"] = TextBox1.Text;
                Response.Redirect("admin.aspx");
            }
            else
            {
                Label1.Text = "Hatalı Giriş.";
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
            

        }
    }
}