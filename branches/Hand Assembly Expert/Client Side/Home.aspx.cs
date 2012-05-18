using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Home : System.Web.UI.Page
{
    public FileInfo[] logo
    {
        get
        {
            if (ViewState["logo"] != null)
            {
                return (FileInfo[])ViewState["logo"];
            }
            else
            {
                DirectoryInfo dr = new DirectoryInfo(Server.MapPath("~/Site Logo/"));
                FileInfo[] fil = dr.GetFiles("*.jpg");
                ViewState["logo"] = fil;
                return fil;
            }
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string path = Server.MapPath("Site Logo");
            string[] filePaths = Directory.GetFiles(path);
        }
    }

    protected void dlServiceList_Load(object sender, EventArgs e)
    {
                    

    }
}