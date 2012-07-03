using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

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
                var values = eCommerceHelper.Context.ecommerce_Productdetails.Where(a => a.Product_id == item.Key).Select(a => a);
                foreach (var items in values)
                {
                    dr["Id"] = item.Key;
                    dr["ImageUrl"] = items.Image;
                    dr["ProductName"] = items.Product_name;
                    dr["Price"] = items.Price;
                    dr["Quantity"] = item.Value;
                    dr["Total"] = item.Value * items.Price;
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
        Session["item"] = obj.Count();
        BindGrid();
        calculateTotal();
    }
    protected void txtQuantity_TextChanged(object sender, EventArgs e)
    {
        TextBox txt = (TextBox)sender;
        GridViewRow gr = (GridViewRow)(txt).Parent.Parent;
        int id = Convert.ToInt32(GridView1.DataKeys[gr.RowIndex].Values[0]);
        int price = Convert.ToInt32(eCommerceHelper.Context.ecommerce_Productdetails.Where(a => a.Product_id == id).Select(a => a.Price).FirstOrDefault());
        ((Label)GridView1.Rows[gr.RowIndex].FindControl("lbTotal")).Text = Convert.ToString(Convert.ToInt32(txt.Text) * price);
        calculateTotal();
    }

    private void calculateTotal()
    {
        int total = 0;
        foreach (GridViewRow item in GridView1.Rows)
        {
            int lb = Convert.ToInt32(((Label)GridView1.Rows[item.RowIndex].FindControl("lbTotal")).Text);
            total += lb;
        }
        //if (!string.IsNullOrEmpty(Convert.ToString(Session["Email"])))
        //{
            ((Label)GridView1.FooterRow.FindControl("lbGrantTotal")).Text = Convert.ToString(total);
        //}
    }
}