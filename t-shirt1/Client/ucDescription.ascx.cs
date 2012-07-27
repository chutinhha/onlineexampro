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
            if (string.IsNullOrEmpty(Request.QueryString["productID"]))
            {
                Response.Redirect("Home.aspx");
            }
            string[] Query = Convert.ToString(Request.QueryString["productID"]).Split(';');
            if (Query.Count() != 4)
            {
                Response.Redirect("Home.aspx");
            }
            ViewState["productID"] = Query[0];
            int colorid = Convert.ToInt32(Query[1]);
            int sizeid = Convert.ToInt32(Query[2]);
            ViewState["fkProductSubdetail"] = Query[3];
            Getcolor();
            Bindsize();
            ddlColor.SelectedValue = colorid.ToString();
            ddlSize.SelectedValue = sizeid.ToString();
            loadpopup();
            CalculateTotal();
        }
    }

    private void Getcolor()
    {
        List<int> color = new List<int>();

        if (string.IsNullOrEmpty(Convert.ToString(ViewState["fkProductSubdetail"])))
        {
            var getcolorsize = eCommerceHelper.Context.Usp_getcolor(null);

            foreach (var item in getcolorsize)
            {
                if (!color.Contains(Convert.ToInt32(item.fkColor_id)))
                {
                    color.Add(Convert.ToInt32(item.fkColor_id));
                }

            }
        }
        else
        {
            var getcolorsize = eCommerceHelper.Context.Usp_getcolor(Convert.ToInt32(ViewState["fkProductSubdetail"]));

            foreach (var item in getcolorsize)
            {
                if (!color.Contains(Convert.ToInt32(item.fkColor_id)))
                {
                    color.Add(Convert.ToInt32(item.fkColor_id));
                }

            }
        }
        Bindcolor(color);
    }

    private void changecolorimage(int colorid)
    {
        var condition = eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.fkColor_id == colorid && a.fkProduct_id == Convert.ToInt32(ViewState["productID"])).FirstOrDefault();
        lbPrice.Text = Convert.ToString(condition.price);
        lbactual.Text = Convert.ToString(condition.Actual_Price);
        imgProduct.Src = condition.Stock_Image;
        ddlColor.SelectedValue = colorid.ToString();
        if (condition.Stock_Value == 0)
        {
            imgBuyNow.Enabled = false;

            lbStatus.ForeColor = System.Drawing.Color.Brown;
            lbStatus.Text = "Out of Sale!";

        }
        else
        {
            imgBuyNow.Enabled = true;
            lbStatus.ForeColor = System.Drawing.Color.Green;
            lbStatus.Text = "On Sale!";
        }
    }

    private void Bindsize()
    {
        ddlSize.Items.Clear();
        Dictionary<int, string> sizes = new Dictionary<int, string>();
        List<int> size = new List<int>();
        if (string.IsNullOrEmpty(Convert.ToString(ViewState["fkProductSubdetail"])))
        {
            var getcolorsize = eCommerceHelper.Context.Usp_getsize(null, Convert.ToInt32(ddlColor.SelectedValue));
            foreach (var item in getcolorsize)
            {
                if (!size.Contains(Convert.ToInt32(item.fkSize_id)))
                {
                    size.Add(Convert.ToInt32(item.fkSize_id));
                }
            }
        }
        else
        {
            var getcolorsize = eCommerceHelper.Context.Usp_getsize(Convert.ToInt32(ViewState["fkProductSubdetail"]), Convert.ToInt32(ddlColor.SelectedValue));
            foreach (var item in getcolorsize)
            {
                if (!size.Contains(Convert.ToInt32(item.fkSize_id)))
                {
                    size.Add(Convert.ToInt32(item.fkSize_id));
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

    private void Bindcolor(List<int> Color)
    {
        Dictionary<int, string> local = new Dictionary<int, string>();
        foreach (var item in Color)
        {
            if (!local.Keys.Contains(item))
            {
                string color = Convert.ToString(eCommerceHelper.Context.ecommerce_Colors.Where(a => a.Color_id == item).Select(a => a.Color).First());
                local.Add(item, color);
            }
        }
        ddlColor.DataSource = local;
        ddlColor.DataTextField = "Value";
        ddlColor.DataValueField = "Key";
        ddlColor.DataBind();
    }


    protected void imgBuyNow_Click(object sender, ImageClickEventArgs e)
    {

        //using (eCommerceDataContext Datadb = new eCommerceDataContext())
        //{
        //    var element = from a in Datadb.ecommerce_Productdetails join b in Datadb.ecommerce_Stocks on a.Product_id equals b.fkProduct_id where a.fkProductSubdetail == Convert.ToInt32(ViewState["fkProductSubdetail"]) && b.fkColor_id == Convert.ToInt32(ddlColor.SelectedValue) && b.fkSize_id == Convert.ToInt32(ddlSize.SelectedValue) select (b);
        //    Dictionary<int, int> obj = new Dictionary<int, int>();
        //    foreach (var item in element)
        //    {
        //        if (Session["Cart"] != null)
        //        {
        //            obj = (Dictionary<int, int>)Session["Cart"];
        //        }
        //        if (obj != null)
        //        {
        //            if (!obj.Keys.Contains(item.Stock_id))
        //            {
        //                obj.Add(Convert.ToInt32(item.Stock_id), 1);
        //            }

        //        }
        //        else
        //        {
        //            obj.Add(Convert.ToInt32(item.Stock_id), 1);
        //        }
        //        Session["Cart"] = obj;
        //        CalculateTotal();
        //        Response.Redirect("MyCart.aspx");
        //    }
        //}

        //using (eCommerceDataContext Datadb = new eCommerceDataContext())
        //{
        //    var element = from a in Datadb.ecommerce_Productdetails join b in Datadb.ecommerce_Stocks on a.Product_id equals b.fkProduct_id where a.fkProductSubdetail == Convert.ToInt32(ViewState["fkProductSubdetail"]) && b.fkColor_id == Convert.ToInt32(ddlColor.SelectedValue) && b.fkSize_id == Convert.ToInt32(ddlSize.SelectedValue) select (b);
        Dictionary<int, int> obj = new Dictionary<int, int>();
        //foreach (var item in element)
        //{
        if (Session["Cart"] != null)
        {
            obj = (Dictionary<int, int>)Session["Cart"];
        }
        if (obj != null)
        {
            if (!obj.Keys.Contains(Convert.ToInt32(Session["Stock_id"])))
            {
                obj.Add(Convert.ToInt32(Session["Stock_id"]), 1);
            }

        }
        else
        {
            obj.Add(Convert.ToInt32(Convert.ToInt32(Session["Stock_id"])), 1);
        }
        Session["Cart"] = obj;
        CalculateTotal();
        Response.Redirect("MyCart.aspx");
        //}
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
        Bindsize();
        loadpopup();

    }

    private void loadpopup()
    {
        if (string.IsNullOrEmpty(Convert.ToString(ViewState["fkProductSubdetail"])))
        {
            var count = from a in eCommerceHelper.Context.ecommerce_Stocks
                        join b in eCommerceHelper.Context.ecommerce_Productdetails
                        on a.fkProduct_id equals b.Product_id
                        where a.fkColor_id == Convert.ToInt32(ddlColor.SelectedValue) && b.fkProductSubdetail == null && a.fkSize_id == Convert.ToInt32(ddlSize.SelectedValue)
                        select new
                        {
                            Stock_id = a.Stock_id,
                            Stock_Image = a.Stock_Image,
                            Size = a.ecommerce_Size.Size_values
                        };
            if (count.Count() > 1)
            {
                DataList1.DataSource = count;
                DataList1.DataBind();
                sd.Show();
            }
            else
            {
                changecolorimage();
            }
        }
        else
        {
            var count = from a in eCommerceHelper.Context.ecommerce_Stocks
                        join b in eCommerceHelper.Context.ecommerce_Productdetails
                        on a.fkProduct_id equals b.Product_id
                        where a.fkColor_id == Convert.ToInt32(ddlColor.SelectedValue) && b.fkProductSubdetail == Convert.ToInt32(ViewState["fkProductSubdetail"]) && a.fkSize_id == Convert.ToInt32(ddlSize.SelectedValue)
                        select new
                        {
                            Stock_id = a.Stock_id,
                            Stock_Image = a.Stock_Image,
                            Size = a.ecommerce_Size.Size_values
                        };
            if (count.Count() > 1)
            {
                DataList1.DataSource = count;
                DataList1.DataBind();
                sd.Show();
            }
            else
            {
                changecolorimage();
            }
        }
    }

    private void changecolorimage()
    {
        if (string.IsNullOrEmpty(Convert.ToString(ViewState["fkProductSubdetail"])))
        {
            var count = from a in eCommerceHelper.Context.ecommerce_Stocks
                        join b in eCommerceHelper.Context.ecommerce_Productdetails
                        on a.fkProduct_id equals b.Product_id
                        where a.fkColor_id == Convert.ToInt32(ddlColor.SelectedValue) && b.fkProductSubdetail == null && a.fkSize_id == Convert.ToInt32(ddlSize.SelectedValue)
                        select new
                        {
                            Stock_Image = a.Stock_Image,
                            price = a.price,
                            actual_price = a.Actual_Price,
                            description = b.Description,
                            stock = a.Stock_Value,
                            stock_id = a.Stock_id,
                            Genter = b.Gender
                        };
            foreach (var item in count)
            {
                if (item.Genter == 1)
                {
                    lbName.Text = "Men";
                }
                else
                {
                    lbName.Text = "Women";
                }
                lbactual.Text = Convert.ToString(item.actual_price);
                lbDescription.Text = Convert.ToString(item.description);
                lbPrice.Text = Convert.ToString(item.price);
                imgProduct.Src = item.Stock_Image;
                Session["Stock_id"] = item.stock_id;


                if (item.stock == 0)
                {
                    lbStatus.ForeColor = System.Drawing.Color.Brown;
                    lbStatus.Text = "Out of Sale!";
                    imgBuyNow.Enabled = false;
                }
                else
                {
                    imgBuyNow.Enabled = true;
                    lbStatus.ForeColor = System.Drawing.Color.Green;
                    lbStatus.Text = "On Sale!";
                }

            }
        }
        else
        {
            var count = from a in eCommerceHelper.Context.ecommerce_Stocks
                        join b in eCommerceHelper.Context.ecommerce_Productdetails
                        on a.fkProduct_id equals b.Product_id
                        where a.fkColor_id == Convert.ToInt32(ddlColor.SelectedValue) && b.fkProductSubdetail == Convert.ToInt32(ViewState["fkProductSubdetail"]) && a.fkSize_id == Convert.ToInt32(ddlSize.SelectedValue)
                        select new
                        {
                            Stock_Image = a.Stock_Image,
                            price = a.price,
                            actual_price = a.Actual_Price,
                            description = b.Description,
                            stock = a.Stock_Value,
                            stock_id = a.Stock_id,
                            Genter = b.Gender
                        };
            foreach (var item in count)
            {
                if (item.Genter == 1)
                {
                    lbName.Text = "Men";
                }
                else
                {
                    lbName.Text = "Women";
                }
                lbactual.Text = Convert.ToString(item.actual_price);
                lbDescription.Text = Convert.ToString(item.description);
                lbPrice.Text = Convert.ToString(item.price);
                imgProduct.Src = item.Stock_Image;
                Session["Stock_id"] = item.stock_id;

                if (item.stock == 0)
                {
                    lbStatus.ForeColor = System.Drawing.Color.Brown;
                    lbStatus.Text = "Out of Sale!";
                    imgBuyNow.Enabled = false;
                }
                else
                {
                    imgBuyNow.Enabled = true;
                    lbStatus.ForeColor = System.Drawing.Color.Green;
                    lbStatus.Text = "On Sale!";
                }
            }
        }

    }

    protected void ddlSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        loadpopup();
    }


    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int c = 0, s = 0;
        var ss = eCommerceHelper.Context.ecommerce_Stocks.Single(a => a.Stock_id == Convert.ToInt32(DataList1.DataKeys[e.Item.ItemIndex]));
        imgProduct.Src = ss.Stock_Image;
        c = ss.fkColor_id.Value;
        s = ss.fkSize_id.Value;
        onclickpopup(Convert.ToInt32(DataList1.DataKeys[e.Item.ItemIndex]));
    }

    private void onclickpopup(int p)
    {
        Session["Stock_id"] = p;
        var source = eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.Stock_id == p).Select(a => a).FirstOrDefault();
        var product = eCommerceHelper.Context.ecommerce_Productdetails.Where(a => a.Product_id == source.fkProduct_id).Select(a => a).FirstOrDefault();
        lbPrice.Text = source.price.ToString();
        lbactual.Text = source.Actual_Price.ToString();
        if (source.Stock_Value == 0)
        {
            lbStatus.ForeColor = System.Drawing.Color.Brown;
            lbStatus.Text = "Out of Sale!";
            imgBuyNow.Enabled = false;
        }
        else
        {
            imgBuyNow.Enabled = true;
            lbStatus.ForeColor = System.Drawing.Color.Green;
            lbStatus.Text = "On Sale!";
        }
        ddlColor.SelectedValue = source.fkColor_id.ToString();
        ddlSize.SelectedValue = source.fkSize_id.ToString();
        lbDescription.Text = product.Description;
        if (product.Gender == 1)
        {
            lbName.Text = "Men";
        }
        else
        {
            lbName.Text = "Women";
        }
    }
}