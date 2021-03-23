using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Security.Principal;

public partial class MainPage : System.Web.UI.Page
{
    SqlClass con = new SqlClass();
    string id = "";
    string doing = "";

    protected void Page_Load(object sender, EventArgs e)
    {

  
        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["id"];
            doing = Request.QueryString["doing"];
        }

        //Category list
        SqlCommand cmd = new SqlCommand("Select * from Tbl_Categories", con.connection());
        SqlDataReader read = cmd.ExecuteReader();
        DataList1.DataSource = read;
        DataList1.DataBind();

        //Making the total amount zero
        if (doing == "delete")
        {
            SqlCommand cmd_delete = new SqlCommand("update Tbl_Categories set Amount=0 where id=@p1", con.connection());
            cmd_delete.Parameters.AddWithValue("@p1", id);
            cmd_delete.ExecuteNonQuery();
            con.connection().Close();
        }


    }


}