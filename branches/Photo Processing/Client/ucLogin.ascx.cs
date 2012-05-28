using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class ucLogin : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            var userid = "";
            var password = "";
            HttpCookie cookie1 = Request.Cookies.Get("PhotoProcessing");
            if (cookie1 != null)
            {
                userid = cookie1.Values["Userid"];
                password = cookie1.Values["Password"];
                var aa = PhotoProcessingHelper.Context.Photo_CustomerRegistrationDetails.Where(a => a.Email == Convert.ToString(userid)).Select(a => a).FirstOrDefault();
                if (userid == aa.Email && password == aa.Password)
                {
                    Response.Redirect("Home.aspx");
                }
            }
        }


    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (PhotoProcessingDataContext dataDB = new PhotoProcessingDataContext())
        {
            var counter = from a in dataDB.Photo_CustomerRegistrationDetails where a.Email == txtEmail.Text && a.Password == txtPassword.Text select a;
            if (counter.Count() == 1)
            {
                var checkAcivation = counter.FirstOrDefault();
                if (checkAcivation.ActivationStatus_Mail == 1)
                {
                    //ContentPlaceHolder ph = (ContentPlaceHolder)Page.Master.FindControl("ContentPlaceHolder1");

                    //FormView fv = (FormView)ph.FindControl("form1");
                    //UpdatePanel up = (UpdatePanel)fv.FindControl("UpdatePanel1");
                    //LinkButton lbtnLoginfind = (LinkButton)up.FindControl("lbtnLogin");
                    //LinkButton lbtnLogoutfind = (LinkButton)up.FindControl("lbtnLogout");
                    //lbtnLogoutfind.Visible = true;
                    //lbtnLoginfind.Visible = false;
                    if (this.cbRememberMe != null && this.cbRememberMe.Checked == true)
                    {
                        HttpCookie cookie = new HttpCookie("PhotoProcessing");
                        cookie.Values["Userid"] = txtEmail.Text;
                        cookie.Values["Password"] = txtPassword.Text;
                        cookie.Expires.AddDays(1);
                        Response.Cookies.Add(cookie);
                    }

                    Session["username"] = checkAcivation.Full_Name;
                    Session["email"] = checkAcivation.Email;
                    var lastlogin = (from a in dataDB.Photo_CustomerRegistrationDetails where a.Customer_id == checkAcivation.Customer_id select a).FirstOrDefault();
                    lastlogin.Last_Login = DateTime.Now;
                    dataDB.SubmitChanges();
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