using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=MAJ-056\SQLEXPRESS;Initial Catalog=Working;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tblUser where UserName='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["usertype"] = dr["UserType"];
            con.Close();
            Response.Redirect("Main.aspx");
        }
        else
        {
            Response.Write("Invalid");
        }
        con.Close();
    }
}