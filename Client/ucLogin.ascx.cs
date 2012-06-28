using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


public partial class ucLogin : BasePageUserControl
{
    private bool? isValid;
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
        cookie = Request.Cookies.Get("Infiniti");
        if (falg)
        {
            if (cookie == null)
                return;
            CheckUser(cookie.Values["Userid"], cookie.Values["Password"], ref isValid);
        }
        else
            CheckUser(txtEmail.Text, txtPassword.Text, ref isValid);
        if (!string.IsNullOrEmpty(assignValue))
        {
            if (isValid.Value)
            {
                if (cbRememberMe.Checked && cookie != null)
                {
                    cookie = new HttpCookie("Infiniti");
                    cookie.Values["Userid"] = txtEmail.Text;
                    cookie.Values["Password"] = txtPassword.Text;
                    cookie.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(cookie);
                }
                SessionValue = assignValue;
                Response.Redirect("Home.aspx");
            }
            else
            {
                lbResponse.ForeColor = System.Drawing.ColorTranslator.FromHtml("#006600");
                lbResponse.Text = "We had sent mail to your Email Id Verify it..!";
            }
        }
        else
        {
            lbResponse.Text = "Invalid Login!";
        }
    }
    public void CheckUser(string email, string password, ref bool? isValid)
    {
        eCommerceHelper.Context.sp_check_user(email, password, ref assignValue, ref isValid);
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Call(false);
    }
}