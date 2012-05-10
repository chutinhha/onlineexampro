using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucProfileDetail : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ibtnUpdate_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("UpdateProfile.aspx");
    }
}