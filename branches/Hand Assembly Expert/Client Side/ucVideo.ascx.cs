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
    [WebMethod]
    public string GetURL(string id)
    {
        string url = string.Empty;
        string[] aa = id.Split('.');
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("~/VideoUrl.xml"));
        foreach (DataRow item in ds.Tables[0].Rows)
        {
            if (item[0].ToString() == aa[aa.Length - 2])
            {
                url = item[2].ToString();
            }
        }
        return url;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}