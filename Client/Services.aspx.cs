﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

public partial class Services : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //accService.DataSource = PhotoProcessingHelper.Context.Photo_PlanDetails.Select(a => a);
        //accService.DataBind();
        var aa = PhotoProcessingHelper.Context.Photo_PlanDetails.Select(a => a);
        int i = 0, j = 0;
        foreach (var item in aa)
        {
            var bb = PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.Where(a => a.FkPlan_id == item.Plan_id);
            AccordionPane acpa = new AccordionPane();
            acpa.ID = "accPane" + i.ToString();
            RadioButton rd = new RadioButton();
            rd.ID = "rd" + i.ToString();
            rd.Text = item.Plan_Name;
            rd.GroupName = "a";
            acpa.HeaderContainer.Controls.Add(rd);
            foreach (var item1 in bb)
            {
                Table tbl = new Table();
                TableRow tr = new TableRow();
                TableCell td = new TableCell();
                CheckBox chk = new CheckBox();
                chk.ID = "chk" + j.ToString();
                chk.Text = item1.Category_name;
                td.Controls.Add(chk);
                tr.Controls.Add(td);
                tbl.Controls.Add(tr);
                acpa.ContentContainer.Controls.Add(tbl);
                j++;
            }
            accService.Panes.Add(acpa);
            i++;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        var aa = PhotoProcessingHelper.Context.Photo_PlanDetails.Select(a => a).ToList();
        for (int i = 0; i < aa.Count(); i++)
        {
            RadioButton rd = (RadioButton)accService.FindControl("rd" + i.ToString());
            rd.GroupName = "gh";
            var bb = PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.Where(a => a.FkPlan_id == aa[i].Plan_id);
            for (int j = 0; j < bb.Count(); j++)
            {
                CheckBox chk = (CheckBox)accService.FindControl("chk" + j.ToString());
            }
        }
    }
}