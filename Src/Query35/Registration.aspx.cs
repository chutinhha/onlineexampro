using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        using (var obj = new QueryDataContext())
        {
            if (QueryHelper.Context.tblUsers.Count(a => a.UserName == txtUsername.Text) > 0)
            {
                lblError.Text = "User Name already exists";
            }
            else
            {
                var user = new tblUser();
                user.Date = DateTime.Now;
                user.MailId = txtMailId.Text;
                user.MobileNumber = Convert.ToInt64(txtMobileNumber.Text);
                user.Password = txtPassword.Text;
                user.UserName = txtUsername.Text;
                obj.tblUsers.InsertOnSubmit(user);
                obj.SubmitChanges();
                Session["UserName"] = txtUsername.Text;
                Response.Redirect("Default.aspx");
            }
        }
    }
}