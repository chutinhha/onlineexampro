using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
            //rd.GroupName = acpa.ClientID;            
            acpa.HeaderContainer.Controls.Add(rd);
            foreach (var item1 in bb)
            {
                Table tbl = new Table();
                TableRow tr = new TableRow();
                TableCell td = new TableCell();
                CheckBox chk = new CheckBox();
                chk.ID = "chk" + j.ToString();
                chk.Text = item1.Category_name;
                acpa.ContentContainer.Controls.Add(chk);
                j++;
            }
            accService.Panes.Add(acpa);
            i++;
        }
    }
}