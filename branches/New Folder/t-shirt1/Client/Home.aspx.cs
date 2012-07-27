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
            if (Session["MenuClick"] == "M")
            {
                ddlCatagory.SelectedValue = "1";
                subproduct.Visible = true;
            }
            if (Session["MenuClick"] == "W")
            {
                ddlCatagory.SelectedValue = "2";
            }
            binddatalist(Convert.ToInt32(ddlCatagory.SelectedValue), Convert.ToInt32(ddlSize.SelectedValue), Convert.ToInt32(ddlBrand.SelectedValue), Convert.ToInt32(ddlsubcatagory.SelectedValue));
            BindSideMenu();
        }
    }

    private void BindSideMenu()
    {
        ListView1.DataSource = eCommerceHelper.Context.ecommerce_Categories.Select(a => a);
        ListView1.DataBind();
        foreach (ListViewItem item in ListView1.Items)
        {
            ListView li = (ListView)item.FindControl("ListView2");
            int a = Convert.ToInt32(ListView1.DataKeys[item.DataItemIndex].Values[0]);
            li.DataSource = eCommerceHelper.Context.ecommerce_ProductSubdetails.Where(b => b.fkCatagoryId == a);
            li.DataBind();
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


    private void binddatalist(int gender, int size, int color, int subCategory)
    {
        SqlConnection con = new SqlConnection("Server=infiniticlothing.com;Database=Infiniticlothing;User ID=infinusr;Password=P@ss4!nf0;Trusted_Connection=False;");
        con.Open();
        SqlCommand cmd = new SqlCommand("Usp_Stock", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Gender", gender);
        cmd.Parameters.AddWithValue("@Size", size);
        cmd.Parameters.AddWithValue("@Color", color);
        cmd.Parameters.AddWithValue("@SubCatagory", subCategory);
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
            dr[6] = item["Product_id"] + ";" + item["fkColor_id"] + ";" + item["fkSize_id"] + ";" + item["fkProductSubdetail"];
            if (Convert.ToInt32(item["Gender"]) == 1)
            {
                dr[7] = "Men";
            }
            else
            {
                dr[7] = "Women";
            }
            dr[8] = item["Stock_id"];
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
        dt.Columns.Add("stock_id");
        return (dt);
    }

    protected void ddlBrand_SelectedIndexChanged(object sender, EventArgs e)
    {
        binddatalist(Convert.ToInt32(ddlCatagory.SelectedValue), Convert.ToInt32(ddlSize.SelectedValue), Convert.ToInt32(ddlBrand.SelectedValue), Convert.ToInt32(ddlsubcatagory.SelectedValue));
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
        binddatalist(Convert.ToInt32(ddlCatagory.SelectedValue), Convert.ToInt32(ddlSize.SelectedValue), Convert.ToInt32(ddlBrand.SelectedValue), Convert.ToInt32(ddlsubcatagory.SelectedValue));
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
        binddatalist(Convert.ToInt32(ddlCatagory.SelectedValue), Convert.ToInt32(ddlSize.SelectedValue), Convert.ToInt32(ddlBrand.SelectedValue), Convert.ToInt32(ddlsubcatagory.SelectedValue));
    }
    protected void ddlSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        binddatalist(Convert.ToInt32(ddlCatagory.SelectedValue), Convert.ToInt32(ddlSize.SelectedValue), Convert.ToInt32(ddlBrand.SelectedValue), Convert.ToInt32(ddlsubcatagory.SelectedValue));
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Main")
        {
            //ListViewItem li = (ListViewItem)((LinkButton)(e.CommandSource)).NamingContainer;
            int a = Convert.ToInt32(ListView1.DataKeys[e.Item.DataItemIndex].Values[0]);
            binddatalist(a, 0, 0, 0);
        }
    }
    protected void ListView2_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Sub")
        {
            ListView ListView2 = (ListView)sender;
            ListViewItem li1 = (ListViewItem)e.Item.Parent.Parent;
            int a = Convert.ToInt32(ListView2.DataKeys[e.Item.DataItemIndex].Values[0]);
            int b = Convert.ToInt32(ListView1.DataKeys[li1.DataItemIndex].Values[0]);
            binddatalist(b, 0, 0, a);
        }
    }
}