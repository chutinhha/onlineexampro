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
                ModalPopupExtender md = (ModalPopupExtender)((UserControl)Page.Master.FindControl("ucLoginandLogout")).FindControl("mdlLogin");
                md.Show();
            }
        }
    }
    protected void btnProfile_Click(object sender, EventArgs e)
    {
        Response.Redirect("My Profile.aspx");
    }
    protected void btnChangePwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePassword.aspx");
    }
}