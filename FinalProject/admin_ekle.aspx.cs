using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FinalProject
{
    public partial class admin_ekle : System.Web.UI.Page
    {
        sqlSınıf bgl = new sqlSınıf();
        protected void Page_Load(object sender, EventArgs e)
        {
            object kullanici = Session["admin_id"];
            if (Session["admin_id"] == null)
            {
                Response.Redirect("admin_giris.aspx");
            }
            Label1.Text = Session["admin_id"].ToString();
            if (FileUpload1.HasFile)
            {
                Image1.ImageUrl = "/img/covers/" + FileUpload1.FileName;
            }
            
            
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("admin_giris.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/img/covers/" + FileUpload1.FileName));
              
            }


            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "")
            {
                SqlCommand ekle = new SqlCommand("insert into filmTable (ad,puan,tür,süre,aciklama,video_url,img_name) values(@ad,@puan,@tür,@süre,@aciklama,@video_url,@img_name)", bgl.baglan());
                if (Image1.ImageUrl!="")
                {
                    ekle.Parameters.AddWithValue("@img_name", Image1.ImageUrl);
                   
                }
                

                ekle.Parameters.AddWithValue("@ad", TextBox1.Text);
                ekle.Parameters.AddWithValue("@aciklama", TextBox2.Text);
                ekle.Parameters.AddWithValue("@süre", TextBox3.Text);
                ekle.Parameters.AddWithValue("@tür", TextBox4.Text);
                ekle.Parameters.AddWithValue("@puan", TextBox5.Text);
                ekle.Parameters.AddWithValue("@video_url", TextBox6.Text);
               
                ekle.ExecuteNonQuery();
                bgl.baglan().Close();
                
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                TextBox6.Text = string.Empty;
                Image1.ImageUrl = "";



            }
        }
    }

}