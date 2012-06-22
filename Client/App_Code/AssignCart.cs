#region Name Spaces
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.IO;
#endregion

#region Class AssignCart
/// <summary>
/// Summary description for AssignCart
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class AssignCart : System.Web.Services.WebService
{

    #region Constructors
    public AssignCart()
    {
        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }
    #endregion

    #region Fields
    /// <summary>
    /// strores the saved file path's
    /// </summary>
    private string filePath;
    #endregion

    #region Insert Selected Services
    /// <summary>
    /// Save The Options from Services Page
    /// </summary>
    /// <param name="ar">
    /// Gets the list of SubCategory_id's seperated by comma
    /// </param>
    /// <returns></returns>
    
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
    #endregion

    #region Get Cart Items
    /// <summary>
    /// returns the cart items as collection
    /// </summary>
    /// <returns></returns>
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
    #endregion

    #region Removing Cart Items
    /// <summary>
    /// returns result when deleting the cart items if it deleted.
    /// </summary>
    /// <param name="idVal">
    /// OrderSummary_id
    /// </param>
    /// <returns></returns>
    [WebMethod]
    public bool Remove(string idVal)
    {
        try
        {
            using (var obj = new PhotoProcessingDataContext())
            {
                var aa = obj.Photo_OrderSummaryDetails.Single(a => a.OrderSummary_id == Convert.ToInt64(idVal));
                if (!string.IsNullOrEmpty(aa.ImageUrl))
                {
                    filePath = Server.MapPath(aa.ImageUrl);
                    if (File.Exists(filePath))
                        File.Delete(filePath);
                }
                obj.Photo_OrderSummaryDetails.DeleteOnSubmit(aa);
                obj.SubmitChanges();
            }
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
    }
    #endregion

    #region Checking Coopn Code
    /// <summary>
    /// returns the dicount amount when the coopn code is correct
    /// </summary>
    /// <param name="a">
    /// Coopn code entered by user
    /// </param>
    /// <returns></returns>

    [WebMethod]
    public string CheckCoopnCode(string a, string userId)
    {
        if (a.Length == 1)
        {
            return "30";
        }
        else
        {
            return null;
        }
    }
    #endregion

    #region Getting Price of Service
    /// <summary>
    /// returns the price when selecting service name
    /// </summary>
    /// <param name="id">
    /// radio button id from ucCate.ascx.its like rdl_(Plan_id).(example: rdl_10)
    /// </param>
    /// <returns></returns>
    [WebMethod]
    public decimal GetPrice(string id)
    {
        string[] rd = id.Split('_');
        return PhotoProcessingHelper.Context.Photo_PlanDetails.Single(a => a.Plan_id == Convert.ToInt32(rd[rd.Length - 1])).Rate.Value;
    }
    #endregion

}
#endregion