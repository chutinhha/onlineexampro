using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using System.Data;
using System.Data.SqlClient;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindCatagory();
            bindSize();
            bindcolor();
            bindSubCatagory();
            binddatalist();
        }
    }

    private void bindSize()
    {
        ddlSize.DataSource = eCommerceHelper.Context.ecommerce_Sizes.Select(a => a);
        ddlSize.DataTextField = "Size_values";
        ddlSize.DataValueField = "Size_id";
        ddlSize.DataBind();
        ddlSize.Items.Insert(0, new ListItem("-select-", "0"));
    }

    private void bindcolor()
    {
        if (ddlCatagory.SelectedValue == "0")
        {
            ddlBrand.DataSource = eCommerceHelper.Context.ecommerce_Colors.Select(a => a);
            ddlBrand.DataTextField = "Color";
            ddlBrand.DataValueField = "Color_id";
            ddlBrand.DataBind();
            ddlBrand.Items.Insert(0, new ListItem("-select-", "0"));
        }
        else
        {
            List<int> productids = new List<int>();
            productids = eCommerceHelper.Context.ecommerce_Productdetails.Where(a => a.Gender == Convert.ToInt32(ddlCatagory.SelectedValue)).Select(a => a.Product_id).ToList();
            Dictionary<int, string> color = new Dictionary<int, string>();
            foreach (var item in productids)
            {
                var colorid = eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.fkProduct_id == item).Select(a => a.fkColor_id).First();
                var colorname = eCommerceHelper.Context.ecommerce_Colors.Where(a => a.Color_id == Convert.ToInt32(colorid)).Select(a => a.Color).First();
                if (!color.Keys.Contains(Convert.ToInt32(colorid)))
                {
                    color.Add(Convert.ToInt32(colorid), Convert.ToString(colorname));
                }
            }
            ddlBrand.DataSource = color;
            ddlBrand.DataTextField = "Value";
            ddlBrand.DataValueField = "Key";
            ddlBrand.DataBind();
            ddlBrand.Items.Insert(0, new ListItem("-select-", "0"));
        }
    }

    private void bindCatagory()
    {
        ddlCatagory.DataSource = eCommerceHelper.Context.ecommerce_Categories.Select(a => a);
        ddlCatagory.DataTextField = "Categories";
        ddlCatagory.DataValueField = "Category_id";
        ddlCatagory.DataBind();
        ddlCatagory.Items.Insert(0, new ListItem("-select-", "0"));
    }


    private void binddatalist()
    {
        SqlConnection con = new SqlConnection("Data Source=(local)\\SQLEXPRESS;Initial Catalog=Tshirt;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Usp_Stock", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Gender", Convert.ToInt32(ddlCatagory.SelectedValue));
        cmd.Parameters.AddWithValue("@Size", Convert.ToInt32(ddlSize.SelectedValue));
        cmd.Parameters.AddWithValue("@Color", Convert.ToInt32(ddlBrand.SelectedValue));
        cmd.Parameters.AddWithValue("@SubCatagory", Convert.ToInt32(ddlsubcatagory.SelectedValue));
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        DataTable dt = Gettable();
        foreach (DataRow item in ds.Tables[0].Rows)
        {
            DataRow dr = dt.NewRow();
            dr[0] = item["Stock_Image"];
            dr[1] = item["Short_Description"];
            dr[2] = item["Price"];
            dr[3] = item["Actual_Price"];
            dr[4] = item["Stock_Value"];
            dr[5] = item["Pro_Discount"];
            dr[6] = item["Product_id"] + ";" + item["fkColor_id"] + ";" + item["fkSize_id"] +";"+ item["fkProductSubdetail"];
            if (Convert.ToInt32(item["Gender"]) == 1)
            {
                dr[7] = "Men's";
            }
            else
            {
                dr[7] = "Women's";
            }
            dt.Rows.Add(dr);
        }
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }

    private DataTable Gettable()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("Stock_Image");
        dt.Columns.Add("Short_Description");
        dt.Columns.Add("Price");
        dt.Columns.Add("Actual_Price");
        dt.Columns.Add("Stock_Value");
        dt.Columns.Add("Pro_Discount");
        dt.Columns.Add("Product_id"); 
        dt.Columns.Add("Gender");
        return (dt);
    }

    protected void ddlBrand_SelectedIndexChanged(object sender, EventArgs e)
    {
        binddatalist();
    }

    protected void ddlCatagory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCatagory.SelectedValue == "1")
        {
            subproduct.Visible = true;
        }
        else
        {
            subproduct.Visible = false;
            ddlsubcatagory.SelectedValue = "0";
        }
        bindcolor();
        binddatalist();
    }

    private void bindSubCatagory()
    {
        ddlsubcatagory.DataSource = eCommerceHelper.Context.ecommerce_ProductSubdetails.Select(a => a);
        ddlsubcatagory.DataTextField = "Productsub_name";
        ddlsubcatagory.DataValueField = "ProductSub_id";
        ddlsubcatagory.DataBind();
        ddlsubcatagory.Items.Insert(0, new ListItem("-select-", "0"));
    }
    protected void ddlsubcatagory_SelectedIndexChanged(object sender, EventArgs e)
    {
        binddatalist();
    }
    protected void ddlSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        binddatalist();
    }
}