using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            binddatalist();
        }
    }
    private void binddatalist()
    {
        DataList1.DataSource = eCommerceHelper.Context.sp_ecommerce_ProductdetailNewSelectCommand();
        DataList1.DataBind();
    }
}