using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnProfile_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(5000);
        Response.Redirect("My Profile.aspx");
    }
    protected void btnChangePwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePassword.aspx");
    }
}