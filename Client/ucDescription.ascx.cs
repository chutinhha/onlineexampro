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
            int sizeid = Convert.ToInt32(Query[2]);
            ViewState["fkProductSubdetail"] = Query[3];
            var product = eCommerceHelper.Context.ecommerce_Productdetails.Where(a => a.Product_id == Convert.ToInt32(ViewState["productID"])).Select(a => a).FirstOrDefault();
            var source = eCommerceHelper.Context.ecommerce_Productdetails.Where(a => a.fkProductSubdetail == Convert.ToInt32(product.fkProductSubdetail)).Select(a => a.Product_id);
            List<int> ColorSize = new List<int>();
            foreach (var item in source)
            {
                var color = eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.fkProduct_id == Convert.ToInt32(item)).Select(a => a.fkColor_id).First();
                if (!ColorSize.Contains(Convert.ToInt32(color)))
                {
                    ColorSize.Add(Convert.ToInt32(color));
                }
            }
            //lbPrice.Text = Convert.ToString(product.Price);
            lbDescription.Text = Convert.ToString(product.Description);
            Bindcolor(ColorSize);
            // Bindsize(ColorSize);
            changecolorimage(colorid);
            Bindsize();
            CalculateTotal();
        }

    }

    private void changecolorimage(int colorid)
    {
        var condition = eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.fkColor_id == colorid).FirstOrDefault();
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
            imgBuyNow.Enabled = true;
            lbPrice.Text = Convert.ToString(condition.price);
            lbactual.Text = Convert.ToString(condition.Actual_Price);
            lbStatus.ForeColor = System.Drawing.Color.White;
            lbStatus.Text = "On Sale!";
            imgProduct.Src = condition.Stock_Image;
            ddlColor.SelectedValue = colorid.ToString();
        }
    }



    private void Bindsize()
    {
        ddlSize.Items.Clear();
        var product = eCommerceHelper.Context.ecommerce_Productdetails.Where(a => a.Product_id == Convert.ToInt32(ViewState["productID"])).Select(a => a).FirstOrDefault();
        var source = eCommerceHelper.Context.ecommerce_Productdetails.Where(a => a.fkProductSubdetail == Convert.ToInt32(product.fkProductSubdetail)).Select(a => a.Product_id);

        List<int> size = new List<int>();
        Dictionary<int, string> sizes = new Dictionary<int, string>();
        foreach (var item in source)
        {
            var size1 = eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.fkColor_id == Convert.ToInt32(ddlColor.SelectedValue) && a.fkProduct_id == Convert.ToInt32(item)).Select(a => a.fkSize_id);
            if (size1.Count() != 0)
            {
                if (!size.Contains(Convert.ToInt32(size1.First())))
                {
                    size.Add(Convert.ToInt32(size1.First()));
                }
            }
        }
        foreach (var item in size)
        {
            string source1 = eCommerceHelper.Context.ecommerce_Sizes.Where(a => a.Size_id == item).Select(b => b.Size_values).FirstOrDefault();
            sizes.Add(item, source1);
        }
        ddlSize.DataSource = sizes;
        ddlSize.DataTextField = "Value";
        ddlSize.DataValueField = "Key";
        ddlSize.DataBind();
    }

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
        using (eCommerceDataContext Datadb = new eCommerceDataContext())
        {
            var element = from a in Datadb.ecommerce_Productdetails join b in Datadb.ecommerce_Stocks on a.Product_id equals b.fkProduct_id where a.fkProductSubdetail == Convert.ToInt32(ViewState["fkProductSubdetail"]) && b.fkColor_id == Convert.ToInt32(ddlColor.SelectedValue) && b.fkSize_id == Convert.ToInt32(ddlSize.SelectedValue) select (b);
            Dictionary<int, int> obj = new Dictionary<int, int>();
            foreach (var item in element)
            {


                if (Session["Cart"] != null)
                {
                    obj = (Dictionary<int, int>)Session["Cart"];
                }
                if (obj != null)
                {
                    if (!obj.Keys.Contains(item.Stock_id))
                    {
                        obj.Add(Convert.ToInt32(item.Stock_id), 1);
                    }
                    //else
                    //{
                    //    obj.Remove(Convert.ToInt32(stock_id));
                    //    obj.Add(Convert.ToInt32(stock_id),1);
                    //}
                }
                else
                {
                    obj.Add(Convert.ToInt32(item.Stock_id), 1);
                }
                Session["Cart"] = obj;
                CalculateTotal();
                Response.Redirect("MyCart.aspx");
            }
        }



        //    int stock_id = eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.fkProduct_id == Convert.ToInt32(ViewState["productID"]) && a.fkSize_id == Convert.ToInt32(ddlSize.SelectedValue)).Select(a => a.Stock_id).FirstOrDefault();
        //    Dictionary<int, int> obj = new Dictionary<int, int>();
        //    if (Session["Cart"] != null)
        //    {
        //        obj = (Dictionary<int, int>)Session["Cart"];
        //    }
        //    if (obj != null)
        //    {
        //        if (!obj.Keys.Contains(stock_id))
        //        {
        //            obj.Add(Convert.ToInt32(stock_id), 1);
        //        }
        //        //else
        //        //{
        //        //    obj.Remove(Convert.ToInt32(stock_id));
        //        //    obj.Add(Convert.ToInt32(stock_id),1);
        //        //}
        //    }
        //    else
        //    {
        //        obj.Add(Convert.ToInt32(stock_id), 1);
        //    }
        //    Session["Cart"] = obj;
        //    CalculateTotal();
        //    Response.Redirect("MyCart.aspx");
        //}

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
        var source = eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.fkColor_id == Convert.ToInt32(ddlColor.SelectedValue)).Select(a => a).FirstOrDefault();
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
        using (eCommerceDataContext Datadb = new eCommerceDataContext())
        {
            var element = from a in Datadb.ecommerce_Productdetails join b in Datadb.ecommerce_Stocks on a.Product_id equals b.fkProduct_id where a.fkProductSubdetail == Convert.ToInt32(ViewState["fkProductSubdetail"]) && b.fkColor_id == Convert.ToInt32(ddlColor.SelectedValue) && b.fkSize_id == Convert.ToInt32(ddlSize.SelectedValue) select (b);
            foreach (var item in element)
            {
                lbPrice.Text = Convert.ToString(item.price);
                lbactual.Text = Convert.ToString(item.Actual_Price);
                if (item.Stock_Value == 0)
                {
                    lbStatus.ForeColor = System.Drawing.Color.Brown;
                    lbStatus.Text = "Out of Sale!";
                    imgBuyNow.Enabled = false;
                }
                else
                {
                    imgBuyNow.Enabled = true;
                    lbStatus.ForeColor = System.Drawing.Color.White;
                    lbStatus.Text = "On Sale!";
                }
            }

        }
        //var source = eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.fkColor_id == Convert.ToInt32(ddlColor.SelectedValue) && a.fkSize_id == Convert.ToInt32(ddlSize.SelectedValue)).Select(a => a).FirstOrDefault();
        //lbPrice.Text = Convert.ToString(source.price);
        //lbactual.Text = Convert.ToString(source.Actual_Price);
        //if (source.Stock_Value == 0)
        //{
        //    lbStatus.ForeColor = System.Drawing.Color.Brown;
        //    lbStatus.Text = "Out of Sale!";
        //    imgBuyNow.Enabled = false;
        //}
        //else
        //{
        //    imgBuyNow.Enabled = true;
        //    lbStatus.ForeColor = System.Drawing.Color.White;
        //    lbStatus.Text = "On Sale!";
        //}

    }
}