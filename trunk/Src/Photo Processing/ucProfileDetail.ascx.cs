using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucProfileDetail : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var detail = PhotoProcessingHelper.Context.Photo_CustomerRegistrationDetails.Where(a => a.Email == Convert.ToString(Session["email"]));
            foreach (var item in detail)
            {
                ViewState["Name"] = item.Full_Name;
                ViewState["DOB"] = item.DOB;
                ViewState["Mobile"] = item.Mobile;
                ViewState["Email"] = item.Email;
                ViewState["Last login"] = item.Last_Login;
                ViewState["Country"] = item.Country;
                ViewState["Image"] = item.Profile_Image;
            }
            if (Convert.ToDateTime(ViewState["DOB"]) == DateTime.MaxValue)
            {
                ViewState["DOB"] = "";
            }
            Image1.ImageUrl = Convert.ToString(ViewState["Image"]);
        }

    }
    protected void ibtnUpdate_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("UpdateProfile.aspx");
    }
}