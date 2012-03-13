using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Dictionary<long, int> mar = (Dictionary<long, int>)Session["result"];
        foreach (KeyValuePair<long, int> item in mar)
        {
            Label lbl = new Label();
            lbl.Text = OnlineExamHelper.Context.OnlineCategories.Single(a => a.CategoryId == item.Key).Category + " : " + item.Value.ToString() + "<br>";
            Page.Controls.Add(lbl);
        }
    }
}