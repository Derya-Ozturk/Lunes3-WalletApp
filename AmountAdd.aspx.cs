using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CategoryEdit : System.Web.UI.Page
{
    SqlClass con = new SqlClass();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"];


        SqlCommand cmd = new SqlCommand("select * from Tbl_Categories where id=@p1 ", con.connection());
        cmd.Parameters.AddWithValue("@p1", id);

        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Label1.Text = dr[1].ToString();
            TextBox2.Text = dr[2].ToString();
            Image1.ImageUrl = dr[4].ToString();
        }
        con.connection().Close();
    }


    //Validation in 3.2, adding earning and spending in 3.3 and saving them
    //in the database (at Microsoft Sql Server) in 3.4 were all written at the same place.”
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Update Tbl_Categories set Amount=@p1 where id=@p2", con.connection());
        
        cmd.Parameters.AddWithValue("@p2", id);

        try
        {
            if (RadioButton1.Checked)
            {
                cmd.Parameters.AddWithValue("@p1", Convert.ToDouble(TextBox2.Text) + Convert.ToDouble(TextBox3.Text));
                cmd.ExecuteNonQuery();
            }
            else
            {
                cmd.Parameters.AddWithValue("@p1", Convert.ToDouble(TextBox2.Text) - Convert.ToDouble(TextBox3.Text));
                cmd.ExecuteNonQuery();
            }
        }
        catch (System.FormatException)
        {
            Response.Write("<script>alert('Please insert a number');</script>");
        }

        con.connection().Close();

        //Here, because of the update command, it performs the update in the database and
        //automatically loads it into the mainpage (load in 3.4).
        Response.Redirect("MainPage.aspx");
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}