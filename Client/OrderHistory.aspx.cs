using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using PhotoLibrarylib.DAL;
//using PhotoLibrarylib;
public partial class OrderHistory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //var ss = PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.Select(a => a);
        //ComboBox1.DataBind();
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        ListView1.DataSource = from a in PhotoProcessingHelper.Context.Photo_OrderSummaryDetails
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
}