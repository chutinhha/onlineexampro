using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("HomeNew.aspx");
            }
            Dictionary<long, int> mar = (Dictionary<long, int>)Session["result"];
            int m = 0;
            foreach (KeyValuePair<long, int> item in mar)
            {
                m += item.Value;
            }
            long userid = Convert.ToInt64(Session["UserId"]);
            var ghhgh = ElearningHelper.Context.sp_tblResultNewInsertCommand(m, userid);
            foreach (var aa in ghhgh)
            {
                foreach (KeyValuePair<long, int> item in mar)
                {
                    Label lbl = new Label();
                    int mark = item.Value;
                    long fk_category = item.Key;
                    ElearningHelper.Context.sp_tblResultMarksNewInsertCommand(mark, aa.ResultId, fk_category);
                    lbl.Text = ElearningHelper.Context.tblQuestionTitles.Single(a => a.QuestionTitleId == item.Key).QuestionTitle + " : " + item.Value.ToString() + "<br>";
                    //Page.Controls.Add(lbl);
                    PlaceHolder1.Controls.Add(lbl);
                }
            }
        }
    }
}