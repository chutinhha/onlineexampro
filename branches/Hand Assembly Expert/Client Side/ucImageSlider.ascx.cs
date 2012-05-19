using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class ucImageSlider : System.Web.UI.UserControl
{
    public FileInfo[] Files
    {
        get
        {
            if (ViewState["Files"] != null)
            {
                return (FileInfo[])ViewState["Files"];
            }
            else
            {
                DirectoryInfo dr = new DirectoryInfo(Server.MapPath("~/Uploads/"));
                FileInfo[] fil = dr.GetFiles("*.jpg");
                ViewState["Files"] = fil;
                return fil;
            }
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}