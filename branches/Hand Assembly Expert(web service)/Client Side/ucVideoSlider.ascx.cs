using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Services;
using System.Data;

public partial class ucVideoSlider : System.Web.UI.UserControl
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
    [WebMethod]
    public string GetURL(string id)
    {
        string url = string.Empty;
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("~/VideoUrl.xml"));
        foreach (DataRow item in ds.Tables[0].Rows)
        {
            if (item[0].ToString() == id)
            {
                url = item[2].ToString();
            }
        }
        return url;
    }
}