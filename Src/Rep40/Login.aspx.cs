using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (var obj = new OntologyDataContext())
        {
            if (OntologyHelper.Context.tblUsers.Count(a => a.UserName == txtUsername.Text && a.Password == txtPassword.Text) > 0)
            {
                Session["UserName"] = txtUsername.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Label1.Text = "Incorrect username or password";
            }
        }
    }
}