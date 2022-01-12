using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FinalProject
{
    public partial class admin : System.Web.UI.Page
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
            if (Page.IsPostBack == false)
            {

            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("admin_giris.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[4].Text;
            TextBox4.Text = GridView1.SelectedRow.Cells[5].Text;
            TextBox5.Text = GridView1.SelectedRow.Cells[7].Text;
            TextBox6.Text = GridView1.SelectedRow.Cells[8].Text;
            TextBox7.Text = GridView1.SelectedRow.Cells[6].Text;
            
            
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            
                if (Label2.Text != "")
                {
                    SqlCommand guncelle = new SqlCommand("update filmTable set ad=@ad, puan=@puan, tür=@tür, süre=@süre, aciklama=@aciklama, video_url=@video_url,img_name=@img_name where id=@id" , bgl.baglan());
                    guncelle.Parameters.AddWithValue("@id",  Label2.Text);

                    guncelle.Parameters.AddWithValue("@ad", TextBox1.Text);
                    guncelle.Parameters.AddWithValue("@puan", TextBox2.Text);
                    guncelle.Parameters.AddWithValue("@tür", TextBox3.Text);
                    guncelle.Parameters.AddWithValue("@süre",  TextBox4.Text);
                    guncelle.Parameters.AddWithValue("@aciklama", TextBox7.Text);
                    guncelle.Parameters.AddWithValue("@video_url", TextBox5.Text);
                    guncelle.Parameters.AddWithValue("@img_name", TextBox6.Text);
                  
                    guncelle.ExecuteNonQuery();
                    bgl.baglan().Close();
                    GridView1.DataBind();
                    Label2.Text = string.Empty;
                    TextBox1.Text = string.Empty;
                    TextBox2.Text = string.Empty;
                    TextBox3.Text = string.Empty;
                    TextBox4.Text = string.Empty;
                    TextBox5.Text = string.Empty;
                    TextBox6.Text = string.Empty;
                    TextBox7.Text = string.Empty;
                   


                }
            }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Label2.Text != "")
            {
                SqlCommand sil = new SqlCommand("delete from filmTable where id=@id", bgl.baglan());
                sil.Parameters.AddWithValue("@id", Label2.Text);
                sil.ExecuteNonQuery();
                bgl.baglan().Close();
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                TextBox6.Text = string.Empty;
                TextBox7.Text = string.Empty;
                Label2.Text = string.Empty;
                GridView1.DataBind();
            }
        }
    }
}