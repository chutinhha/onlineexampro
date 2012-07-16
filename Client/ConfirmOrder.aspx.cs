using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class ConfirmOrder : BasePage
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
        //var cus = PhotoProcessingHelper.Context.Photo_CustomerRegistrationDetails.Where(a => a.Email == SessionValue[0]).Select(a => a).First();
        GridView1.DataSource = from a in PhotoProcessingHelper.Context.Photo_OrderSummaryDetails
                               where a.fkCustomer_id == Convert.ToInt32(SessionValue[2])
                               select new
                                   {
                                       Id = a.OrderSummary_id,
                                       ImageUrl = a.ImageUrl,
                                       Plane_Name = a.Photo_PlanDetail.Plan_Name,
                                       fkPlan_id = a.Photo_PlanDetail.Rate
                                   };
        GridView1.DataBind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Remove")
        {
            using (var obj = new PhotoProcessingDataContext())
            {
                var aa = obj.Photo_OrderSummaryDetails.Single(a => a.OrderSummary_id == Convert.ToInt64(e.CommandArgument));
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

    protected void chkPhysicalCopy_CheckedChanged(object sender, EventArgs e)
    {
        //ContentPlaceHolder cph = (ContentPlaceHolder)Master.FindControl("ContentPlaceHolder1");
        //ListView lv = (ListView)cph.FindControl("ListView1");
        //CheckBox chk = (CheckBox)lv.FindControl("chkPhysicalCopy");
        //if (chk.Checked)
        //{
        ClientScript.RegisterStartupScript(this.Page.GetType(), "", "window.open('Address.aspx','Graph','height=400,width=500');", true);
        //}
    }
    
}