using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

public partial class admin_registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        using (OnlineExamDataContext obj1 = new OnlineExamDataContext())
        {
            var number = from c in obj1.OnlineRegistrations where c.Mobile == Convert.ToInt64(txtmobile.Text) select c;
            if (number.Count() >= 1)
            {
                lbregister.Text = "Already exists";

            }
            else
            {
                RegistrationBL obj = new RegistrationBL(txtname.Text, Convert.ToInt64(txtmobile.Text), txtemail.Text, DateTime.Now);
                if (obj.Insert())
                {
                    lbregister.Text = "registered successfully";
                }
            }
        }
    }
}