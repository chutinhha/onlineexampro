using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.UI.HtmlControls;
using System.Web.Services;
using System.Data;

public partial class ucVideo : System.Web.UI.UserControl
{
    public FileInfo[] Videos
    {
        get
        {
            if (ViewState["Videos"] != null)
            {
                return (FileInfo[])ViewState["Videos"];
            }
            else
            {
                DirectoryInfo dr = new DirectoryInfo(Server.MapPath("~/VideoThumbnails/"));
                FileInfo[] fil = dr.GetFiles("*.jpg");
                ViewState["Videos"] = fil;
                return fil;
            }
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}