using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        RegistrationBL obj = new RegistrationBL(txtname.Text,Convert.ToInt64(txtmobile.Text),txtemail.Text,DateTime.Now);
        if (obj.Insert())
        {
            lbregister.Text = "register successfully";
        }

    }
}