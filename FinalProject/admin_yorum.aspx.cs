using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FinalProject
{
    public partial class admin_yorum : System.Web.UI.Page
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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("admin_giris.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox4.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox5.Text = GridView1.SelectedRow.Cells[4].Text;
            TextBox7.Text = GridView1.SelectedRow.Cells[5].Text;
            if (GridView1.SelectedRow.Cells[2].Text == "True")
            {
                DropDownList1.SelectedValue = "Görünür";
            }
            else if(GridView1.SelectedRow.Cells[2].Text == "False")
            {
                DropDownList1.SelectedValue = "Görünmez";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Label2.Text != "")
            {
                SqlCommand guncelle = new SqlCommand("update yorumTable set onay=@onay where yorum_id=@yorum_id", bgl.baglan());
                guncelle.Parameters.AddWithValue("@yorum_id", Label2.Text);
                if (DropDownList1.SelectedValue == "Görünür")
                {
                    guncelle.Parameters.AddWithValue("@onay", "True");
                }
                else
                {
                    guncelle.Parameters.AddWithValue("@onay", "False");
                }

                guncelle.ExecuteNonQuery();
                bgl.baglan().Close();
                GridView1.DataBind();
                



            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Label2.Text != "")
            {
                SqlCommand sil = new SqlCommand("delete from yorumTable where yorum_id=@yorum_id", bgl.baglan());
                sil.Parameters.AddWithValue("@yorum_id", Label2.Text);
                sil.ExecuteNonQuery();
                bgl.baglan().Close();
                
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                
                TextBox7.Text = string.Empty;
                Label2.Text = string.Empty;
                GridView1.DataBind();
            }

        }
    }
}