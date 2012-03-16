using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.Page
{
    public string UserType
    {
        get
        {
            return Convert.ToString(Session["usertype"]);
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 0; i < 10; i++)
        {
            TextBox txt = (TextBox)Page.FindControl("txt" + i.ToString() + "0");
        }

    }
}