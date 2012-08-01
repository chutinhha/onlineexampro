using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

public partial class Discription : System.Web.UI.Page
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
            int design_id = 0;
            string color_id = "", size_id = "";
            using (InfinitiClothDataContext dataDB = new InfinitiClothDataContext())
            {
                var source = (from a in dataDB.Infiniti_ProductDetails
                              join b in dataDB.Infiniti_DesignDetails
                                  on a.fkDesign_id equals b.Design_id
                              where a.Product_id == Convert.ToInt32(Session["ProductId"])
                              select new
                              {
                                  fkDesign_id = a.fkDesign_id,
                                  Design_Name = b.Design_Name,
                                  Product_Actual_Price = a.Product_Actual_Price,
                                  Product_Discount_Price = a.Product_Discount_Price,
                                  Description = a.Discription,
                                  fkColor_id = a.fkColor_id,
                                  fkSize_id = a.fkSize_id,
                                  Product_img_url_small = a.Product_img_url_small,
                                  Product_img_url_large = a.Product_img_url_large
                              }).ToList();

                foreach (var item in source)
                {
                    lbDesignName.Text = item.Design_Name;
                    lbDiscountPrice.Text = item.Product_Discount_Price.ToString();
                    lbActulPrice.Text = item.Product_Actual_Price.ToString();
                    lbDescription.Text = item.Description;
                    design_id = Convert.ToInt32(item.fkDesign_id);
                    color_id = item.fkColor_id.ToString();
                    size_id = item.fkSize_id.ToString();
                    ViewState["small"] = item.Product_img_url_small;
                    ViewState["Large"] = item.Product_img_url_large;
                }
                BindColor(design_id);
                BindSize(design_id, Convert.ToInt32(ddlcolor.SelectedValue));
                ddlcolor.SelectedValue = color_id;
                ddlSize.SelectedValue = size_id;
                ViewState["design_id"] = design_id;
                CalculateTotal();
            }

        }
    }

    private void BindSize(int design_id, int p)
    {
        var Size = InfinitiHelper.Context.GetSize(design_id, Convert.ToInt32(ddlcolor.SelectedValue));
        ddlSize.DataSource = Size;
        ddlSize.DataTextField = "Size_Name";
        ddlSize.DataValueField = "Size_id";
        ddlSize.DataBind();
    }



    private void BindColor(int design_id)
    {
        var color = InfinitiHelper.Context.GetColor(design_id);
        ddlcolor.DataSource = color;
        ddlcolor.DataTextField = "Color_Name";
        ddlcolor.DataValueField = "Color_id";
        ddlcolor.DataBind();
    }

    protected void ddlcolor_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindSize(Convert.ToInt32(ViewState["design_id"]), Convert.ToInt32(ddlcolor.SelectedValue));
        var source = InfinitiHelper.Context.Infiniti_ProductDetails.Where(a => a.fkDesign_id == Convert.ToInt32(ViewState["design_id"]) && a.fkColor_id == Convert.ToInt32(ddlcolor.SelectedValue)).Select(a => a);
        foreach (var item in source)
        {
            ViewState["small"] = item.Product_img_url_small;
            ViewState["Large"] = item.Product_img_url_large;
            lbDescription.Text = item.Discription;
        }
    }
    protected void btnAddTOCard_Click(object sender, EventArgs e)
    {
        int source = InfinitiHelper.Context.Infiniti_ProductDetails.Where(a => a.fkDesign_id == Convert.ToInt32(ViewState["design_id"]) && a.fkColor_id == Convert.ToInt32(ddlcolor.SelectedValue) && a.fkSize_id == Convert.ToInt32(ddlSize.SelectedValue)).Select(a => a.Product_id).First();
        Dictionary<int, int> obj = new Dictionary<int, int>();
        if (Session["Cart"] != null)
        {
            obj = (Dictionary<int, int>)Session["Cart"];
        }
        if (obj != null)
        {
            if (!obj.Keys.Contains(source))
            {
                obj.Add(Convert.ToInt32(source), 1);
            }

        }
        else
        {
            obj.Add(Convert.ToInt32(source), 1);
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
    protected void btnWishList_Click(object sender, EventArgs e)
    {
    //    LinkButton lnk = (LinkButton)sender;

    //    int getstock = Convert.ToInt32(eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.Stock_id == Convert.ToInt32(lnk.CommandArgument)).Select(a => a.Stock_Value).FirstOrDefault());
    //    if (getstock != 0)
    //    {
    //        Dictionary<int, int> obj = new Dictionary<int, int>();
    //        if (Session["Cart"] != null)
    //        {
    //            obj = (Dictionary<int, int>)Session["Cart"];
    //        }
    //        if (obj != null)
    //        {
    //            if (!obj.Keys.Contains(Convert.ToInt32(lnk.CommandArgument)))
    //            {
    //                obj.Add(Convert.ToInt32(lnk.CommandArgument), 1);
    //            }
    //        }
    //        else
    //        {
    //            obj.Add(Convert.ToInt32(Convert.ToInt32(lnk.CommandArgument)), 1);
    //        }
    //        Session["Cart"] = obj;
    //        CalculateTotal();
    //        Response.Redirect("Home.aspx");
    //    }
    //    else
    //    {
    //        lbStatus.ForeColor = System.Drawing.Color.Brown;
    //    }
    }
}