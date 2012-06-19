using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


public partial class ucLogin : System.Web.UI.UserControl
{
    private bool? isValid;
    private string assignValue;
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie1 = Request.Cookies.Get("PhotoProcessing");
        if (cookie1 != null)
        {
            CheckUser(cookie1.Values["Userid"], cookie1.Values["Password"], ref isValid);
            if (!string.IsNullOrEmpty(assignValue))
            {
                if (isValid.Value)
                {
                    SessionValue = assignValue;
                    Response.Redirect("UploadPhoto.aspx");
                }
            }
        }
    }

    public bool IsValid(string va)
    {
        if (string.IsNullOrEmpty(va))
        {
            return false;
        }
        else
        {
            SessionValue = va;
            return true;
        }
    }

    public string SessionValue
    {
        set
        {
            Session["Email"] = value;
        }
    }

    public void CheckUser(string email, string password, ref bool? isValid)
    {
        PhotoProcessingHelper.Context.sp_check_user(email, password, ref assignValue, ref isValid);
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        System.Diagnostics.Debugger.Launch();
        CheckUser(txtEmail.Text, txtPassword.Text, ref isValid);
        if (!string.IsNullOrEmpty(assignValue))
        {
            if (isValid.Value)
            {
                SessionValue = assignValue;
                Response.Redirect("UploadPhoto.aspx");
            }
        }
        using (PhotoProcessingDataContext dataDB = new PhotoProcessingDataContext())
        {
            var counter = from a in dataDB.Photo_CustomerRegistrationDetails where a.Email == txtEmail.Text && a.Password == txtPassword.Text select a;
            if (counter.Count() == 1)
            {
                var checkAcivation = counter.FirstOrDefault();
                if (checkAcivation.ActivationStatus_Mail == 1)
                {
                    if (cbRememberMe.Checked)
                    {
                        HttpCookie cookie = new HttpCookie("PhotoProcessing");
                        cookie.Values["Email"] = txtEmail.Text;
                        cookie.Values["Password"] = txtPassword.Text;
                        cookie.Expires = DateTime.Now.AddDays(1);
                        Response.Cookies.Add(cookie);
                    }

                    Response.Redirect("UploadPhoto.aspx");
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
    }
}