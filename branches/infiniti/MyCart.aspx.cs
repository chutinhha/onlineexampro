using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using AjaxControlToolkit;

public partial class MyCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.ShowFooter = true;
            BindGrid();
            calculateTotal();
        }
    }
    private void BindGrid()
    {
        Dictionary<int, int> obj = new Dictionary<int, int>();
        obj = (Dictionary<int, int>)Session["Cart"];
        DataTable dt = GetTable();
        if (obj != null)
        {
            foreach (var item in obj)
            {
                DataRow dr = dt.NewRow();
                var values = InfinitiHelper.Context.Infiniti_ProductDetails.Where(a => a.Product_id == item.Key).Select(a => a);
                foreach (var items in values)
                {
                    dr["Id"] = item.Key;
                    dr["ImageUrl"] = items.Product_img_url_small;
                    dr["ProductName"] = items.Infiniti_DesignDetail.Design_Name;
                    dr["Price"] = items.Product_Discount_Price;
                    dr["Quantity"] = item.Value;
                    dr["Total"] = item.Value * items.Product_Discount_Price;
                }
                dt.Rows.Add(dr);
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
    private DataTable GetTable()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add(new DataColumn("Id"));
        dt.Columns.Add(new DataColumn("ImageUrl"));
        dt.Columns.Add(new DataColumn("ProductName"));
        dt.Columns.Add(new DataColumn("Price"));
        dt.Columns.Add(new DataColumn("Quantity"));
        dt.Columns.Add(new DataColumn("Total"));
        return dt;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        Dictionary<int, int> obj = new Dictionary<int, int>();
        obj = (Dictionary<int, int>)Session["Cart"];
        obj.Remove(Convert.ToInt32(lnk.CommandArgument));
        Session["Cart"] = obj;
        var count = 0;
        foreach (var item in obj)
        {
            count = item.Value + count;
        }
        Session["item"] = count;
        BindGrid();
        calculateTotal();
    }
    private void calculateTotal()
    {
        decimal total = 0;
        foreach (GridViewRow item in GridView1.Rows)
        {
            decimal lb = Convert.ToDecimal(((Label)GridView1.Rows[item.RowIndex].FindControl("lbTotal")).Text);
            total += lb;
        }
        if (Session["Cart"] != null && Session["Cart"] != "" && Convert.ToInt32(Session["item"]) != 0)
        {
            ((Label)GridView1.FooterRow.FindControl("lbGrantTotal")).Text = Convert.ToString(total);
        }
    }
    protected void ibtnCheckOut_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["Email"] == "" || Session["Email"] == null)
        {
            ModalPopupExtender md = (ModalPopupExtender)((UserControl)Page.Master.FindControl("ucLoginandLogout1")).FindControl("mdlLogin");
            md.Show();
        }
        else
        {
            if (string.IsNullOrEmpty(Convert.ToString(Session["Cart"])) || Convert.ToInt32(Session["item"]) == 0)
            {
                hfCartValidation.Text = "Add Tee's to cart!";
            }
            else
            {
                Response.Redirect("Address.aspx");
            }

        }
    }
    protected void txtQuantity_TextChanged(object sender, EventArgs e)
    {
        TextBox txt = (TextBox)sender;
        GridViewRow gr = (GridViewRow)(txt).Parent.Parent;
        ((Label)GridView1.Rows[gr.RowIndex].FindControl("lbavailable")).Text = "";
        int id = Convert.ToInt32(GridView1.DataKeys[gr.RowIndex].Values[0]);
        var getStock = InfinitiHelper.Context.Infiniti_ProductDetails.Where(a => a.Product_id == id).Select(a => a).FirstOrDefault();
        // int price = Convert.ToInt32(eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.Stock_id == id).Select(a => a.price).FirstOrDefault());
        if (Convert.ToInt32(txt.Text) > Convert.ToInt32(getStock.Stock_Value))
        {
            Dictionary<int, int> obj = new Dictionary<int, int>();
            if (Session["Cart"] != null)
            {
                obj = (Dictionary<int, int>)Session["Cart"];
            }
            if (obj != null)
            {
                obj.Remove(Convert.ToInt32(id));
                obj.Add(Convert.ToInt32(id), Convert.ToInt32(getStock.Stock_Value));
            }
            var count = 0;
            foreach (var item in obj)
            {
                count = item.Value + count;
            }

            Session["item"] = count;
            txt.Text = Convert.ToString(getStock.Stock_Value);
            ((Label)GridView1.Rows[gr.RowIndex].FindControl("lbavailable")).Text = "only " + getStock.Stock_Value + " pieces available";
            ((Label)GridView1.Rows[gr.RowIndex].FindControl("lbTotal")).Text = Convert.ToString(Convert.ToInt32(getStock.Stock_Value) * getStock.Product_Discount_Price);
            calculateTotal();
        }
        else
        {
            Dictionary<int, int> obj = new Dictionary<int, int>();
            if (Session["Cart"] != null)
            {
                obj = (Dictionary<int, int>)Session["Cart"];
            }
            if (obj != null)
            {
                obj.Remove(Convert.ToInt32(id));
                obj.Add(Convert.ToInt32(id), Convert.ToInt32(txt.Text));
            }
            var count = 0;
            foreach (var item in obj)
            {
                count = item.Value + count;
            }
            Session["item"] = count;
            ((Label)GridView1.Rows[gr.RowIndex].FindControl("lbTotal")).Text = Convert.ToString(Convert.ToInt32(txt.Text) * getStock.Product_Discount_Price);
            calculateTotal();
        }
    }
}