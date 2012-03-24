using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

public partial class result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cadidate"] == null)
        {
            Response.Redirect("ConfirmPage.aspx");
        }
        else
        {
            Dictionary<long, int> mar = (Dictionary<long, int>)Session["result"];
            int m = 0;
            foreach (KeyValuePair<long, int> item in mar)
            {
                m += item.Value;
            }
            long userid = Convert.ToInt64(Session["cadidate"]);
            var ghhgh = OnlineExamHelper.Context.sp_OnlineResultNewInsertCommand(m, userid);
            foreach (var aa in ghhgh)
            {
                foreach (KeyValuePair<long, int> item in mar)
                {
                    Label lbl = new Label();
                    int mark = item.Value;
                    long fk_category = item.Key;
                    OnlineExamHelper.Context.sp_OnlineResultMarksNewInsertCommand(mark, aa.ResultId, fk_category);
                    lbl.Text = OnlineExamHelper.Context.OnlineCategories.Single(a => a.CategoryId == item.Key).Category + " : " + item.Value.ToString() + "<br>";
                    //Page.Controls.Add(lbl);
                    PlaceHolder1.Controls.Add(lbl);
                }
            }
            Session["accept"] = string.Empty;
        }
    }
}