using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;

/// <summary>
/// Summary description for AssignCart
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class AssignCart : System.Web.Services.WebService
{

    public AssignCart()
    {
        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }
    [WebMethod]
    public bool Test(string ar)
    {
        try
        {
            using (var obj = new PhotoProcessingDataContext())
            {
                var tb = obj.Photo_OrderSummaryDetails.OrderByDescending(a => a.OrderSummary_id).First();
                tb.EditOption = ar;
                tb.fkPlan_id = PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.First(a => a.FkPlan_id == Convert.ToInt64(ar.Split(',').GetValue(0))).FkPlan_id;
                obj.SubmitChanges();
            }
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
    }
}