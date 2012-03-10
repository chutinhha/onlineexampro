using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_loginAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (txtname.Text == "admin" && txtpassword.Text == "admin123!@#")
        {
            Session["admin"] = txtname.Text;
            Response.Redirect("adminHome.aspx");
        }
    }
}