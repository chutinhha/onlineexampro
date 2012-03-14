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
        int m = 0;
        foreach (KeyValuePair<long, int> item in mar)
        {
            m += item.Value;
        }
        foreach (KeyValuePair<long, int> item in mar)
        {
            Label lbl = new Label();
            int mark = item.Value;
            long fk_category = item.Key;
            lbl.Text = OnlineExamHelper.Context.OnlineCategories.Single(a => a.CategoryId == item.Key).Category + " : " + item.Value.ToString() + "<br>";
            Page.Controls.Add(lbl);
        }
    }
}