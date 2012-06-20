using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

public partial class Services : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HasSessionValue)
        {
            Response.Redirect("Home.aspx");
        }
    }
}