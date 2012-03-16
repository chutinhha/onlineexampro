using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AJAXDefaultControls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["date"] = DateTime.Now;
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        DateTime dt = Convert.ToDateTime(ViewState["date"]);
        TimeSpan ts = DateTime.Now.Subtract(dt);
        int total = 10 - ts.Seconds;
        if (total > 0)
        {
            Label1.Text = total.ToString();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
}