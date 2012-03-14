using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkAdminHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }

        protected void lnkUpload_Click(object sender, EventArgs e)
        {
            Response.Redirect("fileupload.aspx");
        }

        protected void lnkEnrollmentForm_Click(object sender, EventArgs e)
        {
            Response.Redirect("enrollment.aspx");
        }

        protected void lnkTestGeneration_Click(object sender, EventArgs e)
        {
            Response.Redirect("testgen.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}