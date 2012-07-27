using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

public partial class ucProduct : System.Web.UI.UserControl
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

        }
    }
    protected void lkbBuynow_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        Session["ProductId"] = lnk.CommandArgument;
        Response.Redirect("Description.aspx?productID=" + lnk.CommandArgument);
    }
    protected void lbWishList_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;

        int getstock = Convert.ToInt32(eCommerceHelper.Context.ecommerce_Stocks.Where(a => a.Stock_id == Convert.ToInt32(lnk.CommandArgument)).Select(a => a.Stock_Value).FirstOrDefault());
        if (getstock != 0)
        {
            Dictionary<int, int> obj = new Dictionary<int, int>();
            if (Session["Cart"] != null)
            {
                obj = (Dictionary<int, int>)Session["Cart"];
            }
            if (obj != null)
            {
                if (!obj.Keys.Contains(Convert.ToInt32(lnk.CommandArgument)))
                {
                    obj.Add(Convert.ToInt32(lnk.CommandArgument), 1);
                }
            }
            else
            {
                obj.Add(Convert.ToInt32(Convert.ToInt32(lnk.CommandArgument)), 1);
            }
            Session["Cart"] = obj;
            CalculateTotal();
            Response.Redirect("Home.aspx");
        }
        else
        {
            lbStatus.ForeColor = System.Drawing.Color.Brown;
        }
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
            //Response.Redirect("Home.aspx");
        }
    }
}