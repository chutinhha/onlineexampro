using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.IO;

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
                tb.fkPlan_id = obj.Photo_SubCatagoryDetails.FirstOrDefault(a => a.SubCategory_id == Convert.ToInt64(ar.Split(',').GetValue(0))).FkPlan_id;
                obj.SubmitChanges();
            }
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
    }

    [WebMethod]
    public Array GetData()
    {
        var aa = from a in PhotoProcessingHelper.Context.Photo_OrderSummaryDetails
                 select new
                     {
                         Id = a.OrderSummary_id,
                         ImageUrl = a.ImageUrl.Remove(0, 2),
                         Plane_Name = a.Photo_PlanDetail.Plan_Name,
                         fkPlan_id = a.fkPlan_id,
                         Price = a.Photo_PlanDetail.Rate
                     };
        return aa.ToArray();
    }
    private string filePath;
    [WebMethod]
    public bool Remove(string idVal)
    {
        return false;
        try
        {
            long id = Convert.ToInt64(idVal);
            using (var obj = new PhotoProcessingDataContext())
            {
                var aa = obj.Photo_OrderSummaryDetails.Single(a => a.OrderSummary_id == id);
                if (string.IsNullOrEmpty(aa.ImageUrl))
                {
                    filePath = Server.MapPath(aa.ImageUrl);
                    if (File.Exists(filePath))
                    {
                        File.Delete(filePath);
                    }
                }
                obj.Photo_OrderSummaryDetails.DeleteOnSubmit(aa);
                if (obj.GetChangeSet().Deletes.Count > 0)
                {
                    obj.SubmitChanges();
                }
            }
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
       
    }
    [WebMethod]
    public bool CheckCoopnCode(string a)
    {
        System.Threading.Thread.Sleep(5000);
        if (a.Length == 1)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}