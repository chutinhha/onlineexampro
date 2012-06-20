using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucProfileDetail : BasePageUserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string DOB = "";
            string lastLogin = "";
            var detail = PhotoProcessingHelper.Context.Photo_CustomerRegistrationDetails.Where(a => a.Email == Email[0]);
            foreach (var item in detail)
            {
                ViewState["Name"] = item.Full_Name;
                //ViewState["DOB"] = Convert.ToString(item.DOB);
                DOB = Convert.ToString(item.DOB);
                ViewState["Mobile"] = item.Mobile;
                ViewState["Email"] = item.Email;
                //ViewState["Last login"] = item.Last_Login;
                lastLogin = Convert.ToString(item.Last_Login);
                ViewState["Country"] = item.Country;
                ViewState["Image"] = item.Profile_Image;
            }
            if (lastLogin == Convert.ToString(DateTime.MaxValue))
            {
                ViewState["Last login"] = "";
            }
            else
            {
                ViewState["Last login"] = lastLogin;
            }
            if (Convert.ToInt64(ViewState["Mobile"]) == 0)
            {
                ViewState["Mobile"] = "";
            }
            if (DOB == Convert.ToString(DateTime.MaxValue))
            {
                ViewState["DOB"] = "";
            }
            else
            {
                string[] a = DOB.Split(' ');

                ViewState["DOB"] = a[0];
            }
            Image1.ImageUrl = Convert.ToString(ViewState["Image"]);
        }

    }
    protected void ibtnUpdate_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("UpdateProfile.aspx");
    }
}