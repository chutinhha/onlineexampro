using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Net;
using System.IO;
//using System.Web.Mobile;
//using System.Web.UI.MobileControls;
//System.Web.UI.MobileControls.MobileUserControl
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGetLoc_Click(object sender, EventArgs e)
    {
        WebClient wc = new WebClient();
        Stream data = wc.OpenRead(String.Format("http://iplocationtools.com/ip_query2.php?ip={0}", txtIP.Text.Trim()));
        String str;
        using (StreamReader sr = new StreamReader(data))
        {
            str = sr.ReadToEnd();
            data.Close();
        }
        //String url = String.Empty;

        //if (txtIP.Text.Trim() != String.Empty)
        //{
        //    url = String.Format("http://iplocationtools.com/ip_query2.php?ip={0}", txtIP.Text.Trim());
        //    XDocument xDoc = XDocument.Load(url);
        //    if (xDoc == null | xDoc.Root == null)
        //    {
        //        throw new ApplicationException("Data is not Valid");
        //    }

        //    Xml1.TransformSource = "IP.xslt";
        //    Xml1.DocumentContent = xDoc.ToString();
        //}
    }
}