using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;

/// <summary>
/// Summary description for VideoService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
 [System.Web.Script.Services.ScriptService]
public class VideoService : System.Web.Services.WebService
{

    public VideoService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string GetURL1(string id)
    {
        string[] aa = id.Split('.');
        string url = string.Empty;
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("~/DB/VideoUrl.xml"));
        foreach (DataRow item in ds.Tables[0].Rows)
        {
            string va = aa[aa.Length - 2];
            if (item[0].ToString() == va.Substring(va.LastIndexOf('/') + 1))
            {
                url = item[2].ToString();
                break;
            }
        }
        return url;
    }
}