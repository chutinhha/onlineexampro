using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning
{
    public partial class HomeNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var aa = ElearningHelper.Context.tblLogins.Where(a => a.RollNumber == txtUserName.Text && a.Password == txtPassword.Text);
            if (aa.Count() > 0)
            {
                foreach (var item in aa)
                {
                    Session["Role"] = item.FK_RoleId;
                    Session["UserId"] = item.Id;
                }
                Session["UserName"] = txtUserName.Text;
                if (Convert.ToInt32(Session["Role"]) == 3)
                {
                    Response.Redirect("StudentHome.aspx");
                }
                else
                {
                    Response.Redirect("AdminHome.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid User Id/Password')</script>");
            }
        }
    }
}