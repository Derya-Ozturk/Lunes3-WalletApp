using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class EditPage : System.Web.UI.Page
{
    SqlClass con = new SqlClass();
    string id = "";
    string edit = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"];
        edit = Request.QueryString["edit"];

        if (edit == "edit")
        {
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("select * from Tbl_Categories where id=@p1 ", con.connection());
                cmd.Parameters.AddWithValue("@p1", id);

                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                }

                con.connection().Close();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cmd2 = new SqlCommand("update Tbl_Categories set CategoryName=@p1, Amount=@p2 where id=@p3", con.connection());
        cmd2.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@p2", Convert.ToDouble(TextBox2.Text));
        cmd2.Parameters.AddWithValue("@p3", id);
        cmd2.ExecuteNonQuery();
        con.connection().Close();
        Response.Redirect("MainPage.aspx");

    }
}