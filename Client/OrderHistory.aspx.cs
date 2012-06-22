using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class OrderHistory : BasePage
{
    private string filePath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HasSessionValue)
        {
            Response.Redirect("Home.aspx");
        }
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        //var subtitle = PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.Select(a => a);
        //Dictionary<int, string> subtitledetail = new Dictionary<int, string>();
        //foreach (var item in subtitle)
        //{
        //    subtitledetail.Add(item.SubCategory_id, item.Category_name);
        //}
        //ViewState["subCatagory"] = subtitledetail;
        ListView1.DataSource = from a in PhotoProcessingHelper.Context.Photo_OrderSummaryDetails
                               where a.fkCustomer_id == Convert.ToInt32(SessionValue[2])
                               select new
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
            if (!string.IsNullOrEmpty(se.EditOption))
            {
                string[] ids = se.EditOption.Split(',');
                var bb = PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.Where(a => a.FkPlan_id == se.fkPlan_id && ids.Contains(a.SubCategory_id.ToString()));
                GridView gvr = (GridView)e.Item.FindControl("GridView1");
                gvr.DataSource = bb;
                gvr.DataBind();
            }
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
                if (!string.IsNullOrEmpty(aa.ImageUrl))
                {
                    filePath = Server.MapPath(aa.ImageUrl);
                    if (File.Exists(filePath))
                        File.Delete(filePath);
                }
                obj.Photo_OrderSummaryDetails.DeleteOnSubmit(aa);
                obj.SubmitChanges();
            }
            BindData();
        }
    }
}