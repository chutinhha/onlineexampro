using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        if (ImgAppHelper.Context.tblUseras.Count(a => a.UserName == UserName.Text && a.Password == Password.Text) > 0)
        {
            Session["UserId"] = ImgAppHelper.Context.tblUseras.Single(a => a.UserName == UserName.Text && a.Password == Password.Text).Id;
            Response.Redirect("Test.aspx");
        }
    }
    
}