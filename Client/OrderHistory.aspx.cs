using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class OrderHistory : System.Web.UI.Page
{
    private string filePath;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            if (Session["username"] == "" || Session["username"] == null)
            {
                var userid = "";
                var password = "";
                HttpCookie cookie1 = Request.Cookies.Get("PhotoProcessing");
                if (cookie1 != null)
                {
                    userid = cookie1.Values["Userid"];
                    password = cookie1.Values["Password"];
                    using (PhotoProcessingDataContext dataDB = new PhotoProcessingDataContext())
                    {
                        var aa = PhotoProcessingHelper.Context.Photo_CustomerRegistrationDetails.Where(a => a.Email == Convert.ToString(userid)).Select(a => a).FirstOrDefault();
                        if (userid == aa.Email && password == aa.Password)
                        {
                            Session["username"] = aa.Full_Name;
                            Session["email"] = aa.Email;
                            var lastlogin = (from a in dataDB.Photo_CustomerRegistrationDetails where a.Customer_id == aa.Customer_id select a).FirstOrDefault();
                            lastlogin.Last_Login = DateTime.Now;
                            dataDB.SubmitChanges();
                            //Response.Redirect("Home.aspx");
                        }
                    }
                }
            }
            BindData();
        }
    }

    private void BindData()
    {
        var subtitle = PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.Select(a => a);
        Dictionary<int, string> subtitledetail = new Dictionary<int, string>();
        foreach (var item in subtitle)
        {
            subtitledetail.Add(item.SubCategory_id, item.Category_name);
        }
        ViewState["subCatagory"] = subtitledetail;
        var cus = PhotoProcessingHelper.Context.Photo_CustomerRegistrationDetails.Where(a => a.Email == Convert.ToString(Session["email"])).Select(a => a).First();
        ListView1.DataSource = from a in PhotoProcessingHelper.Context.Photo_OrderSummaryDetails
                               where a.fkCustomer_id == Convert.ToInt32(cus.Customer_id)
                               select
                                   new
                                   {
                                       Id = a.OrderSummary_id,
                                       ImageUrl = a.ImageUrl,
                                       Plane_Name = a.Photo_PlanDetail.Plan_Name,
                                       fkPlan_id = a.fkPlan_id
                                   };
        ListView1.DataBind();

    }
    protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            long id = Convert.ToInt64(ListView1.DataKeys[e.Item.DataItemIndex].Values[0]);
            var se = PhotoProcessingHelper.Context.Photo_OrderSummaryDetails.Single(a => a.OrderSummary_id == id);
            string[] ids = se.EditOption.Split(',');
            var bb = PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.Where(a => a.FkPlan_id == se.fkPlan_id && ids.Contains(a.SubCategory_id.ToString()));
            GridView gvr = (GridView)e.Item.FindControl("GridView1");
            gvr.DataSource = bb;
            gvr.DataBind();
            //var ss = PhotoProcessingHelper.Context.Photo_OrderSummaryDetails.Where(a => a.OrderSummary_id == id).Select(a => a).FirstOrDefault();
            //Dictionary<int, string> subCatagory = (Dictionary<int, string>)ViewState["subCatagory"];
            //DataTable dt = new DataTable();
            //dt.Columns.Add("sub_title", typeof(string));
            //string Edit_Option = ss.EditOption;
            //if (Edit_Option != null)
            //{
            //    string[] array = Edit_Option.Split(',');
            //    foreach (var item in array)
            //    {
            //        if (item != "")
            //        {
            //            int key = Convert.ToInt32(item);
            //            if (subCatagory.ContainsKey(key))
            //            {
            //                DataRow dr = dt.NewRow();
            //                dr["sub_title"] = subCatagory[key];
            //                dt.Rows.Add(dr);
            //            }
            //        }
            //    }
            //    GridView gvr = (GridView)e.Item.FindControl("GridView1");
            //    gvr.DataSource = dt;
            //    gvr.DataBind();
            //    dt.Clear();
            //}
            // var bb = PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.Where(a => a.FkPlan_id == id);
        }
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Remove")
        {
            long id = Convert.ToInt64(e.CommandArgument);
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
                obj.SubmitChanges();
            }
            BindData();
        }
    }
}