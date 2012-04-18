using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning
{
    public partial class ucfilesview : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ss = Convert.ToString(Session["filepath"]);
            string ff = "<object type='video/x-ms-wmv' data='" + ss + "' width='420' height='340'><param name='url' value='" + ss + "'/><param name='src' value='" + ss + "'/><param name='autostart' value='true' /><param name='sound' value='false' /> <param name='controller' value='true' /></object>";
            gg.InnerHtml = ff;
        }
    }
}