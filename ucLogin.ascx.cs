using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using AjaxControlToolkit;


public partial class ucLogin : BasePageUserControl
{
    private string assignValue;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (string.IsNullOrEmpty(Email[0]))
            {
                Call(true);
            }
        }
    }
    public void Call(bool falg)
    {
        HttpCookie cookie;
        cookie = Request.Cookies.Get("Payroll");
        if (falg)
        {
            if (cookie == null)
                return;
            CheckUser(cookie.Values["Userid"], cookie.Values["Password"]);
        }
        else
            CheckUser(txtEmail.Text, txtPassword.Text);
        if (!string.IsNullOrEmpty(assignValue))
        {
            if (cbRememberMe.Checked && cookie == null)
            {
                cookie = new HttpCookie("Payroll");
                cookie.Values["Userid"] = txtEmail.Text;
                cookie.Values["Password"] = txtPassword.Text;
                cookie.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(cookie);
            }
            SessionValue = assignValue;
            string[] b = Convert.ToString(Session["Email"]).Split('|');
            if (b[0] == "iconstechnologies@gmail.com")
            {
                Response.Redirect("Admin.aspx");
            }
            else
            {
                var employeeid = PayrollHelper.Context.Payroll_PersonalDetails.Where(a => a.Email == b[0]).Select(a => a.Employee_id).First();
                Payroll_AttendanceBL obj = new Payroll_AttendanceBL(DateTime.Now, DateTime.MaxValue, DateTime.Now, employeeid);
                if (obj.Insert())
                {
                    Response.Redirect("Empolyee.aspx");
                }
            }
        }
        else
        {
            lbResponse.Text = "Invalid Login!";
            ModalPopupExtender md = (ModalPopupExtender)((UserControl)Page.Master.FindControl("Welcome1")).FindControl("mdlLogin");
            md.Show();
        }
    }
    public void CheckUser(string email, string password)
    {
        PayrollHelper.Context.sp_check_user(email, password, ref assignValue);
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Call(false);
    }
}