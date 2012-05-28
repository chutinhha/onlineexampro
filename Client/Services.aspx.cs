using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Services : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        accService.DataSource = PhotoProcessingHelper.Context.Photo_PlanDetails.Select(a => a);
        accService.DataBind();
            
        
    }
    protected void accService_ItemDataBound(object sender, AjaxControlToolkit.AccordionItemEventArgs e)
    {

    }
}