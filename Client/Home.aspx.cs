using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

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
        using (eCommerceDataContext dataDB = new eCommerceDataContext())
        {
            var source = from a in dataDB.ecommerce_Stocks join b in dataDB.ecommerce_Productdetails on a.fkProduct_id equals b.Product_id select new { Price = a.price, Pro_Discount = b.Pro_Discount, Product_id = b.Product_id + ";" + a.fkColor_id, Product_name = b.Product_name, Image = a.Stock_Image, Short_Description = b.Short_Description, Actual = a.Actual_Price };
            DataList1.DataSource = source;
            DataList1.DataBind();
        }


    }
}