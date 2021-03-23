using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for SqlClass
/// </summary>
public class SqlClass
{
    public SqlConnection connection()
    {
        SqlConnection con = new SqlConnection(@"Data Source = LAPTOP-CELPGIDF\SQLEXPRESS; Initial Catalog = BudgetTracking; Integrated Security = True");
        con.Open();
        return con;
    }
}