using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FinalProject
{
    public partial class detaylar : System.Web.UI.Page
    {
        sqlSınıf bgl = new sqlSınıf();
        string id = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
                id = Request.QueryString["id"];
            
            SqlCommand cmd = new SqlCommand("select * from filmTable where id=@filmID",bgl.baglan());
            cmd.Parameters.AddWithValue("filmID", id);
            SqlDataReader reader = cmd.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
           
                SqlCommand cmd2 = new SqlCommand("select * from filmTable LEFT JOIN yorumTable on filmTable.id = yorumTable.film_id where id =@filmID and yorumTable.onay=1 order by yorumTable.film_id  ", bgl.baglan());
                cmd2.Parameters.AddWithValue("filmID", id);
                SqlDataReader reader2 = cmd2.ExecuteReader();
                DataList2.DataSource = reader2;
                DataList2.DataBind();
            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text!="" && TextBox2.Text != "")
            {
                SqlCommand yorumEkle = new SqlCommand("insert into yorumTable(isim,yorum,film_id) values (@isim,@yorum,@film_id)",bgl.baglan());
                yorumEkle.Parameters.AddWithValue("@isim",TextBox1.Text);
                yorumEkle.Parameters.AddWithValue("@yorum", TextBox2.Text);
                yorumEkle.Parameters.AddWithValue("@film_id",id);
                yorumEkle.ExecuteNonQuery();
                bgl.baglan().Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }
    }
}