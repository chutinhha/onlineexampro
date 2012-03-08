using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Example : System.Web.UI.Page
{
   // SqlConnection con = new SqlConnection(@"Data Source=ICONSTECH\SQLEXPRESS;Initial Catalog=example;Integrated Security=True");
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from online_ExamRegistration", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Columns.Contains(TextBox1.Text) == false)
        {
            string altersql = string.Format("Alter table online_ExamRegistration Add {0} nvarchar(100)", TextBox1.Text);
            SqlCommand cmd = new SqlCommand(altersql, con);
            cmd.ExecuteNonQuery();
        }
        else
        {
            Response.Write("already exist");
        }
        con.Close();
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {   int mydate = 3;
        var mydate1 = DateTime.Now;
        var mydate2 = string.Empty;
        try
        {
            mydate2 =Convert.ToInt32( mydate1)-Convert.ToInt32(mydate);

        }
        catch (Exception)
        {
            
            throw;
        }
    }
}