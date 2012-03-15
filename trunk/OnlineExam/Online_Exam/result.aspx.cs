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
        string aa = Convert.ToString(Session["cadidate"]);
        if (aa == string.Empty)
        {
            Response.Redirect("~/admin/loginAdmin.aspx");
        }
        else
        {
            Dictionary<long, int> mar = (Dictionary<long, int>)Session["result"];
            int m = 0;
            foreach (KeyValuePair<long, int> item in mar)
            {
                m += item.Value;
            }
            var userid = OnlineExamHelper.Context.OnlineRegistrations.Single(a => a.Name == aa);
            OnlineExamHelper.Context.sp_OnlineResultNewInsertCommand(Convert.ToInt64( userid.UserId), m);
            foreach (KeyValuePair<long, int> item in mar)
            {
                Label lbl = new Label();
                int mark = item.Value;
                long fk_category = item.Key;
                OnlineExamHelper.Context.sp_OnlineResultMarksNewInsertCommand(mark, fk_category, userid.UserId);
                lbl.Text = OnlineExamHelper.Context.OnlineCategories.Single(a => a.CategoryId == item.Key).Category + " : " + item.Value.ToString() + "<br>";
                //Page.Controls.Add(lbl);
                PlaceHolder1.Controls.Add(lbl);
            }
        }


    }
}