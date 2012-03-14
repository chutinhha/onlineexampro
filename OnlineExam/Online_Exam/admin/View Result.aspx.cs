using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_View_Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string aa = Convert.ToString(Session["admin"]);
        if (aa == String.Empty)
        {

            Response.Redirect("loginAdmin.aspx");
        }
    }
}