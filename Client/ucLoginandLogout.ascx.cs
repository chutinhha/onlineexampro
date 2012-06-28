using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucLoginandLogout : BasePageUserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HasSessionValue)
        {
            lbuser.Text = "Guest";
            login4.Visible = true;
            regis.Visible = true;
            lbtnLogout.Visible = false;
        }
        else
        {
            login4.Visible = false;
            regis.Visible = false;
            lbtnLogout.Visible = true;
            lbuser.Text = Convert.ToString(Email[1]);
        }
    }
    protected void lbtnLogout_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies.Get("Infiniti");
        if (cookie != null)
        {
            cookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(cookie);
        }
        Session["Email"] = "";
        Session["Email"] = null;
        Session.Abandon();
        Session.Clear();
        Response.Redirect("");
    }
    protected void regis_Click(object sender, EventArgs e)
    {
        mdlRegistration.Show();
    }
    protected void login4_Click(object sender, EventArgs e)
    {
        mdlLogin.Show();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        mdlLogin.Hide();
    }
    protected void lnkClose_Click(object sender, ImageClickEventArgs e)
    {
        mdlRegistration.Hide();
    }
}
