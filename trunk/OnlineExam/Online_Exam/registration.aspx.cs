using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

public partial class registration : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string aa = Convert.ToString(Session["admin"]);
        if (aa == string.Empty)
        {
            Response.Redirect("loginAdmin.aspx");
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        using (OnlineExamDataContext obj1 = new OnlineExamDataContext())
        {
            var number = OnlineExamHelper.Context.OnlineRegistrations.Where(a => a.Name == Convert.ToString(txtname.Text) && a.Mobile == Convert.ToInt64(txtmobile.Text)).Select(a => a.UserId);
            if (number.Count() >= 1)
            {
                lbregister.Text = "Already exists";

            }
            else
            {
                RegistrationBL obj = new RegistrationBL(txtname.Text, Convert.ToInt64(txtmobile.Text), txtemail.Text, DateTime.Now);
                if (obj.Insert())
                {
                    Session["cadidate"] = txtname.Text;
                    Session["admin"] = string.Empty;
                    Response.Redirect("Instruction.aspx");
                }
            }
        }
    }

}