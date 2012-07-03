using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            ViewState["productID"] = Convert.ToInt32(Request.QueryString["productID"]);
            var product = eCommerceHelper.Context.ecommerce_Productdetails.Where(a => a.Product_id == Convert.ToInt32(ViewState["productID"])).Select(a => a).FirstOrDefault();
            lbName.Text = Convert.ToString(product.Product_name);
            lbPrice.Text = Convert.ToString(product.Price);
            imgProduct.ImageUrl = product.Image;
            lbDescription.Text = Convert.ToString(product.Description);
            Bindcolor(product.OptionTitle);
            Bindsize(product.OptionContent);
            CalculateTotal();
        }

    }

    private void Bindsize(string p)
    {
        List<string> size = new List<string>();
        size = p.Split(',').ToList();
        ddlSize.DataSource = size;
        ddlSize.DataBind();
    }

    private void Bindcolor(string p)
    {
        List<string> color = new List<string>();
        color = p.Split(',').ToList();
        ddlColor.DataSource = color;
        ddlColor.DataBind();
    }
    protected void imgBuyNow_Click(object sender, ImageClickEventArgs e)
    {
        Dictionary<int, int> obj = new Dictionary<int, int>();
        if (Session["Cart"] != null)
        {
            obj = (Dictionary<int, int>)Session["Cart"];
        }
        if (obj != null)
        {
            if (!obj.Keys.Contains(Convert.ToInt32(ViewState["productID"])))
            {
                obj.Add(Convert.ToInt32(ViewState["productID"]), 1);
            }
            else
            {
                int val = obj[Convert.ToInt32(ViewState["productID"])];
                obj.Remove(Convert.ToInt32(ViewState["productID"]));
                obj.Add(Convert.ToInt32(ViewState["productID"]), val + 1);
            }
        }
        else
        {
            obj.Add(Convert.ToInt32(ViewState["productID"]), 1);
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
}