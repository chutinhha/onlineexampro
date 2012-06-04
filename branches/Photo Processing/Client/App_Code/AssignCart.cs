using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for AssignCart
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
 [System.Web.Script.Services.ScriptService]
public class AssignCart : System.Web.Services.WebService {

    public AssignCart () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public bool Test(string ar)
    {
        string[] ids = ar.Split(',');
        foreach (string item in ids)
        {
            string[] idValue = item.Split('_');
            string orgId = idValue[idValue.Length - 1];
        }
        return true;
    }
    
}
