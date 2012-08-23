using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Welcome : BasePageUserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (HasSessionValue)
        {

            lbtnLogout.Visible = false;
            lbwelcome.Text = "Guest";
            login4.Visible = true;
        }
        else
        {
            lbtnLogout.Visible = true;
            string[] a = Convert.ToString(Session["Email"]).Split('|');
            lbwelcome.Text = a[1];
            login4.Visible = false;
        }

    }
    protected void login4_Click(object sender, EventArgs e)
    {
        mdlLogin.Show();
    }
    protected void lnkClose_Click(object sender, ImageClickEventArgs e)
    {
        mdlLogin.Hide();
    }
    protected void lbtnLogout_Click(object sender, EventArgs e)
    {
        string[] b = Convert.ToString(Session["Email"]).Split('|');
        if (b[0] == "iconstechnologies@gmail.com")
        {

        }
        else
        {
            var employeeid = PayrollHelper.Context.Payroll_PersonalDetails.Where(a => a.Email == b[0]).Select(a => a.Employee_id).First();
            var source = PayrollHelper.Context.Payroll_Attendances.Where(a => a.Reg_Date.Value.Date == DateTime.Now.Date).Select(a => a);
            if (source.Count() == 1)
            {
                var source1 = source.First();
                source1.Out_Time = DateTime.Now;
                PayrollHelper.Context.SubmitChanges();
            }
        }
        HttpCookie cookie = Request.Cookies.Get("Payroll");
        if (cookie != null)
        {
            cookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(cookie);
        }
        Session["Email"] = "";
        Session["Email"] = null;
        Session["Admin"] = "";
        Session["Admin"] = null;
        Session.Abandon();
        Session.Clear();
        Response.Redirect("home.aspx");
    }
}