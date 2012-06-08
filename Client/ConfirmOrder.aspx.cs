﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class ConfirmOrder : System.Web.UI.Page
{
    private string filePath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //BindData();
        }
    }

    private void BindData()
    {
        //ListView1.DataSource = from a in PhotoProcessingHelper.Context.Photo_OrderSummaryDetails
        //                       select
        //                           new
        //                           {
        //                               Id = a.OrderSummary_id,
        //                               ImageUrl = a.ImageUrl,
        //                               Plane_Name = a.Photo_PlanDetail.Plan_Name,
        //                               fkPlan_id = a.fkPlan_id
        //                           };
        //ListView1.DataBind();
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
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}