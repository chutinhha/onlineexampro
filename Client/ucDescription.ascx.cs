using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

public partial class ucDiscription : System.Web.UI.UserControl
{
    private int totalItems;
    public int TotalItems
    {
        get { return totalItems; }
        set { totalItems = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string[] Query = Convert.ToString(Request.QueryString["productID"]).Split(';');
            ViewState["productID"] = Query[0];
            int colorid = Convert.ToInt32(Query[1]);
            var product = eCommerceHelper.Context.ecommerce_Productdetails.Where(a => a.Product_id == Convert.ToInt32(ViewState["productID"])).Select(a => a).FirstOrDefault();
            var source = eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.fkProduct_id == Convert.ToInt32(ViewState["productID"])).Select(a => a);
            List<int> ColorSize = new List<int>();
            foreach (var item in source)
            {
                ColorSize.Add(Convert.ToInt32(item.fkColor_id));
            }
            lbName.Text = Convert.ToString(product.Product_name);
            //lbPrice.Text = Convert.ToString(product.Price);
            lbDescription.Text = Convert.ToString(product.Description);
            Bindcolor(ColorSize);
            // Bindsize(ColorSize);

            var condition = source.Where(a => a.fkColor_id == colorid).FirstOrDefault();
            if (condition.Stock_Value == 0)
            {
                imgBuyNow.Enabled = false;
                lbPrice.Text = Convert.ToString(condition.price);
                lbactual.Text = Convert.ToString(condition.Actual_Price);
                lbStatus.ForeColor = System.Drawing.Color.Brown;
                lbStatus.Text = "Out of Sale!";
                imgProduct.Src = condition.Stock_Image;
                ddlColor.SelectedValue = colorid.ToString();
            }
            else
            {
                //for (int i = 1; i <= condition.Stock_Value; i++)
                //{
                //    ddlQuantity.Items.Add(i.ToString());
                //}
                imgBuyNow.Enabled = true;
                lbPrice.Text = Convert.ToString(condition.price);
                lbactual.Text = Convert.ToString(condition.Actual_Price);
                lbStatus.ForeColor = System.Drawing.Color.White;
                lbStatus.Text = "On Sale!";
                imgProduct.Src = condition.Stock_Image;
                ddlColor.SelectedValue = colorid.ToString();
            }
            Bindsize();
            CalculateTotal();
        }

    }

    private void Bindsize()
    {
        ddlSize.Items.Clear();
        var size = eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.fkColor_id == Convert.ToInt32(ddlColor.SelectedValue) && a.fkProduct_id == Convert.ToInt32(ViewState["productID"])).Select(a => a.fkSize_id).ToList();
        Dictionary<int, string> sizes = new Dictionary<int, string>();
        foreach (var item in size)
        {
            string source = eCommerceHelper.Context.ecommerce_Sizes.Where(a => a.Size_id == item.Value).Select(b => b.Size_values).FirstOrDefault();
            sizes.Add(item.Value, source);
        }
        ddlSize.DataSource = sizes;
        ddlSize.DataTextField = "Value";
        ddlSize.DataValueField = "Key";
        ddlSize.DataBind();
    }

    //private void Bindsize(Dictionary<int, int> ColorSize)
    //{
    //    using (eCommerceDataContext dataDB = new eCommerceDataContext())
    //    {
    //        Dictionary<int, string> local = new Dictionary<int, string>();
    //        foreach (var item in ColorSize)
    //        {
    //            string color = Convert.ToString((from a in dataDB.ecommerce_Sizes where a.Size_id == item.Value select a.Size_values).FirstOrDefault());
    //            local.Add(item.Key, color);
    //        }
    //        ddlSize.DataSource = local;
    //        ddlSize.DataTextField = "Value";
    //        ddlSize.DataValueField = "Key";
    //        ddlSize.DataBind();
    //    }
    //}

    private void Bindcolor(List<int> ColorSize)
    {
        using (eCommerceDataContext dataDB = new eCommerceDataContext())
        {
            Dictionary<int, string> local = new Dictionary<int, string>();
            foreach (var item in ColorSize)
            {
                if (!local.Keys.Contains(item))
                {
                    string color = Convert.ToString((from a in dataDB.ecommerce_Colors where a.Color_id == item select a.Color).FirstOrDefault());
                    local.Add(item, color);
                }
            }
            ddlColor.DataSource = local;
            ddlColor.DataTextField = "Value";
            ddlColor.DataValueField = "Key";
            ddlColor.DataBind();
        }
    }


    protected void imgBuyNow_Click(object sender, ImageClickEventArgs e)
    {
        int stock_id = eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.fkColor_id == Convert.ToInt32(ddlColor.SelectedValue) && a.fkSize_id == Convert.ToInt32(ddlSize.SelectedValue)).Select(a => a.Stock_id).FirstOrDefault();
        Dictionary<int, int> obj = new Dictionary<int, int>();
        if (Session["Cart"] != null)
        {
            obj = (Dictionary<int, int>)Session["Cart"];
        }
        if (obj != null)
        {
            if (!obj.Keys.Contains(stock_id))
            {
                obj.Add(Convert.ToInt32(stock_id), 1);
            }
            //else
            //{
            //    obj.Remove(Convert.ToInt32(stock_id));
            //    obj.Add(Convert.ToInt32(stock_id),1);
            //}
        }
        else
        {
            obj.Add(Convert.ToInt32(stock_id), 1);
        }
        Session["Cart"] = obj;
        CalculateTotal();
        Response.Redirect("MyCart.aspx");
    }
    private void CalculateTotal()
    {
        Dictionary<int, int> obj = new Dictionary<int, int>();
        obj = (Dictionary<int, int>)Session["Cart"];
        if (obj != null)
        {
            foreach (var item in obj.Values)
            {
                TotalItems += item;
            }
            //MasterPage mstr = this.Parent.Page.Master as MasterPage;
            //UserControl uc = (UserControl)mstr.FindControl("ucLoginandLogout1");
            //Label lb = (Label)uc.FindControl("cartdetail");
            Session["item"] = totalItems;
            //lb.Text = Convert.ToString(Session["item"]);

        }
    }
    protected void ddlColor_SelectedIndexChanged(object sender, EventArgs e)
    {
        var source = eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.fkProduct_id == Convert.ToInt32(ViewState["productID"]) && a.fkColor_id == Convert.ToInt32(ddlColor.SelectedValue)).Select(a => a).FirstOrDefault();
        Bindsize();
        imgProduct.Src = source.Stock_Image;
        getProductDetail();
    }

    protected void ddlSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        getProductDetail();
    }

    private void getProductDetail()
    {
        var source = eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.fkProduct_id == Convert.ToInt32(ViewState["productID"]) && a.fkColor_id == Convert.ToInt32(ddlColor.SelectedValue) && a.fkSize_id == Convert.ToInt32(ddlSize.SelectedValue)).Select(a => a).FirstOrDefault();
        if (source.Stock_Value == 0)
        {
            lbStatus.ForeColor = System.Drawing.Color.Brown;
            lbStatus.Text = "Out of Sale!";
            imgBuyNow.Enabled = false;
            lbPrice.Text = Convert.ToString(source.price);
            lbactual.Text = Convert.ToString(source.Actual_Price);
           // ddlQuantity.Enabled = false;
        }
        else
        {
           // ddlQuantity.Enabled = true;
            imgBuyNow.Enabled = true;
            //ddlQuantity.Items.Clear();
            //for (int i = 1; i <= source.Stock_Value; i++)
            //{
            //    ddlQuantity.Items.Add(Convert.ToString(i));
            //}
            lbPrice.Text = Convert.ToString(source.price);
            lbactual.Text = Convert.ToString(source.Actual_Price);
            lbStatus.ForeColor = System.Drawing.Color.White;
            lbStatus.Text = "On Sale!";
        }

    }
}