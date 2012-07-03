using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            CalculateTotal();
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
            
        }
    }
    protected void lkbBuynow_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
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
            else
            {
                int val = obj[Convert.ToInt32(lnk.CommandArgument)];
                obj.Remove(Convert.ToInt32(lnk.CommandArgument));
                obj.Add(Convert.ToInt32(lnk.CommandArgument), val + 1);
            }
        }
        else
        {
            obj.Add(Convert.ToInt32(lnk.CommandArgument), 1);
        }
        Session["Cart"] = obj;
        CalculateTotal();
    }
}