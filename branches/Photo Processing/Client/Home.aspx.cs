using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

public partial class Home : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (HasSessionValue)
            {
                var userid = "";
                var password = "";
                HttpCookie cookie1 = Request.Cookies.Get("PhotoProcessing");
                if (cookie1 != null)
                {
                    userid = cookie1.Values["Userid"];
                    password = cookie1.Values["Password"];
                    using (PhotoProcessingDataContext dataDB = new PhotoProcessingDataContext())
                    {
                        var aa = PhotoProcessingHelper.Context.Photo_CustomerRegistrationDetails.Where(a => a.Email == Convert.ToString(userid)).Select(a => a).FirstOrDefault();
                        if (userid == aa.Email && password == aa.Password)
                        {
                            Session["username"] = aa.Full_Name;
                            Session["email"] = aa.Email;
                            var lastlogin = (from a in dataDB.Photo_CustomerRegistrationDetails where a.Customer_id == aa.Customer_id select a).FirstOrDefault();
                            lastlogin.Last_Login = DateTime.Now;
                            dataDB.SubmitChanges();
                            Response.Redirect("UploadPhoto.aspx");
                        }
                    }
                }
                //ModalPopupExtender md = (ModalPopupExtender)((UserControl)Page.Master.FindControl("ucLoginandLogout")).FindControl("mdlLogin");
                //md.Show();
            }
        }
    }
    protected void btnProfile_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(5000);
        Response.Redirect("My Profile.aspx");
    }
    protected void btnChangePwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePassword.aspx");
    }
}