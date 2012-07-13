using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using System.Data;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindCatagory();
            // bindBrand();
            bindcolor();
            binddatalist();

        }

    }

    private void bindcolor()
    {
        ddlBrand.DataSource = eCommerceHelper.Context.ecommerce_Colors.Select(a => a);
        ddlBrand.DataTextField = "Color";
        ddlBrand.DataValueField = "Color_id";
        ddlBrand.DataBind();
        ddlBrand.Items.Insert(0, new ListItem("-select-", "0"));

    }

    private void bindCatagory()
    {
        ddlCatagory.DataSource = eCommerceHelper.Context.ecommerce_Categories.Select(a => a);
        ddlCatagory.DataTextField = "Categories";
        ddlCatagory.DataValueField = "Category_id";
        ddlCatagory.DataBind();
        ddlCatagory.Items.Insert(0, new ListItem("-select-", "0"));
    }

    //private void bindBrand()
    //{
    //    if (ddlCatagory.SelectedValue != "0" && ddlCatagory.SelectedValue != "")
    //    {
    //        ddlBrand.DataSource = eCommerceHelper.Context.ecommerce_Productdetails.Where(a => a.fkCategory == Convert.ToInt32(ddlCatagory.SelectedValue)).Select(a => a);
    //        ddlBrand.DataTextField = "Product_name";
    //        ddlBrand.DataValueField = "Product_id";
    //        ddlBrand.DataBind();
    //        binddatalist();
    //    }
    //    else
    //    {
    //        ddlBrand.Items.Insert(0, new ListItem("-select-", "0"));
    //    }
    //}
    private void binddatalist()
    {
        using (eCommerceDataContext dataDB = new eCommerceDataContext())
        {

            if (ddlCatagory.SelectedValue == "0" && ddlBrand.SelectedValue == "0")
            {
                var source = from a in dataDB.ecommerce_Stocks join b in dataDB.ecommerce_Productdetails on a.fkProduct_id equals b.Product_id select new { Price = a.price, Pro_Discount = b.Pro_Discount, Product_id = b.Product_id + ";" + a.fkColor_id, Product_name = b.Product_name, Image = a.Stock_Image, Short_Description = b.Short_Description, Actual = a.Actual_Price, Status = a.Stock_Value };
                DataList1.DataSource = source;
                DataList1.DataBind();
            }
            else
            {
                List<int> productids = new List<int>();
                if (ddlCatagory.SelectedValue == "0")
                {
                    DataTable dt = GetTable();
                    var source = from a in dataDB.ecommerce_Stocks join b in dataDB.ecommerce_Productdetails on a.fkProduct_id equals b.Product_id where a.fkColor_id == Convert.ToInt32(ddlBrand.SelectedValue) select new { Price = a.price, Pro_Discount = b.Pro_Discount, Product_id = b.Product_id + ";" + a.fkColor_id, Product_name = b.Product_name, Image = a.Stock_Image, Short_Description = b.Short_Description, Actual = a.Actual_Price, Status = a.Stock_Value };
                    if (source.Count() != 0)
                    {
                        foreach (var items in source)
                        {
                            DataRow dr = dt.NewRow();
                            dr["Price"] = items.Price;
                            dr["Pro_Discount"] = items.Pro_Discount;
                            dr["Product_id"] = items.Product_id;
                            dr["Product_name"] = items.Product_name;
                            dr["Image"] = items.Image;
                            dr["Short_Description"] = items.Short_Description;
                            dr["Actual"] = items.Actual;
                            dr["Status"] = items.Status;
                            dt.Rows.Add(dr);
                        }
                        DataList1.DataSource = dt;
                        DataList1.DataBind();

                    }
                }
                else
                {
                    productids = eCommerceHelper.Context.ecommerce_Productdetails.Where(a => a.fkCategory == Convert.ToInt32(ddlCatagory.SelectedValue)).Select(a => a.Product_id).ToList();
                    DataTable dt = GetTable();
                    foreach (var item in productids)
                    {
                        DataRow dr = dt.NewRow();
                        if (ddlCatagory.SelectedValue != "0" && ddlBrand.SelectedValue == "0")
                        {
                            var source = from a in dataDB.ecommerce_Stocks join b in dataDB.ecommerce_Productdetails on a.fkProduct_id equals b.Product_id where a.fkProduct_id == Convert.ToInt32(item) select new { Price = a.price, Pro_Discount = b.Pro_Discount, Product_id = b.Product_id + ";" + a.fkColor_id, Product_name = b.Product_name, Image = a.Stock_Image, Short_Description = b.Short_Description, Actual = a.Actual_Price, Status = a.Stock_Value };
                            foreach (var items in source)
                            {
                                dr["Price"] = items.Price;
                                dr["Pro_Discount"] = items.Pro_Discount;
                                dr["Product_id"] = items.Product_id;
                                dr["Product_name"] = items.Product_name;
                                dr["Image"] = items.Image;
                                dr["Short_Description"] = items.Short_Description;
                                dr["Actual"] = items.Actual;
                                dr["Status"] = items.Status;
                            }
                            dt.Rows.Add(dr);

                        }
                        else
                        {
                            if (ddlCatagory.SelectedValue != "0" && ddlBrand.SelectedValue != "0")
                            {
                                var source = from a in dataDB.ecommerce_Stocks join b in dataDB.ecommerce_Productdetails on a.fkProduct_id equals b.Product_id where a.fkProduct_id == Convert.ToInt32(item) && a.fkColor_id == Convert.ToInt32(ddlBrand.SelectedValue) select new { Price = a.price, Pro_Discount = b.Pro_Discount, Product_id = b.Product_id + ";" + a.fkColor_id, Product_name = b.Product_name, Image = a.Stock_Image, Short_Description = b.Short_Description, Actual = a.Actual_Price, Status = a.Stock_Value };
                                if (source.Count() != 0)
                                {
                                    foreach (var items in source)
                                    {
                                        dr["Price"] = items.Price;
                                        dr["Pro_Discount"] = items.Pro_Discount;
                                        dr["Product_id"] = items.Product_id;
                                        dr["Product_name"] = items.Product_name;
                                        dr["Image"] = items.Image;
                                        dr["Short_Description"] = items.Short_Description;
                                        dr["Actual"] = items.Actual;
                                        dr["Status"] = items.Status;
                                    }
                                    dt.Rows.Add(dr);
                                }
                            }


                        }

                    }
                    DataList1.DataSource = dt;
                    DataList1.DataBind();

                }

            }


        }
    }

    private DataTable GetTable()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add(new DataColumn("Price"));
        dt.Columns.Add(new DataColumn("Pro_Discount"));
        dt.Columns.Add(new DataColumn("Product_id"));
        dt.Columns.Add(new DataColumn("Product_name"));
        dt.Columns.Add(new DataColumn("Image"));
        dt.Columns.Add(new DataColumn("Short_Description"));
        dt.Columns.Add(new DataColumn("Actual"));
        dt.Columns.Add(new DataColumn("Status"));
        return dt;
    }
    protected void ddlBrand_SelectedIndexChanged(object sender, EventArgs e)
    {
        binddatalist();
    }
    protected void ddlCatagory_SelectedIndexChanged(object sender, EventArgs e)
    {
        binddatalist();
    }
}