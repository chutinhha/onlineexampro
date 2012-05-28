using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace E_Learning
{
    public partial class ucView : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var dd = ElearningHelper.Context.tblAssignDetails.OrderByDescending(a => a.Id).Take(1);
                foreach (var item in dd)
                {
                    var ff = ElearningHelper.Context.tblTitleCounts.Where(a => a.Fk_AssignId == item.Id);
                    Dictionary<long, int> dic = new Dictionary<long, int>();
                    foreach (var item1 in ff)
                    {
                        dic.Add(item1.Fk_TitleId.Value, item1.count.Value);
                    }
                    if (Session["cat"] == null)
                        Session["cat"] = dic;
                    if (Session["timeDuration"] == null)
                        Session["timeDuration"] = item.TimeDuration;
                    if (Session["TimeLeft"] == null)
                        Session["TimeLeft"] = item.TimeLeft;
                }
                BindGrid();
            }
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            //System.Diagnostics.Debugger.Launch();
            DateTime dt = (DateTime)Session["timeDuration"];
            DateTime dt1 = (DateTime)Session["TimeLeft"];
            TimeSpan sp = dt.Subtract(dt1);
            if (sp.Seconds <= 0 && sp.Minutes <= 0 && sp.Hours <= 0)
            {
                Complete_Click(sender, new EventArgs());
                Response.Redirect("Result.aspx");
            }
            else
            {
                lblHours.Text = sp.Hours.ToString();
                lblMin.Text = sp.Minutes.ToString();
                lblSecs.Text = sp.Seconds.ToString();
                dt1 = dt1.AddSeconds(1);
                Session["TimeLeft"] = dt1;
            }
            //TimeSpan time1 = new TimeSpan();
            //time1 = (DateTime)Session["time"] - DateTime.Now;

            //if (time1.Seconds <= 0)
            //{
            //    if (time1.Minutes <= 0)
            //    {
            //        if (time1.Hours <= 0)
            //        {
            //            Label1.Text = "TimeOut!";
            //        }
            //    }
            //}
            //else
            //{
            //    Label4.Text = time1.Hours.ToString();
            //    Label1.Text = time1.Seconds.ToString();
            //    Label3.Text = time1.Minutes.ToString();
            //}

        }

        private void BindGrid()
        {
            DataTable obj = new DataTable();
            DataColumn dc = new DataColumn();
            dc.ColumnName = "Sno";
            dc.AutoIncrement = true;
            dc.AutoIncrementSeed = 1;
            dc.AutoIncrementStep = 1;
            obj.Columns.Add(dc);
            dc = new DataColumn("QuesId");
            obj.Columns.Add(dc);
            dc = new DataColumn("Question");
            obj.Columns.Add(dc);
            Dictionary<long, int> dic = (Dictionary<long, int>)Session["cat"];
            Random rd = new Random();
            List<long> CreatedIds = new List<long>();

            //PlaceHolder pla = (PlaceHolder)GridView1.FindControl("PlaceHolder1");

            foreach (KeyValuePair<long, int> item in dic)
            {

                List<long> ids = ElearningHelper.Context.tblQuestions.Where(a => a.Fk_QuestionTitle== item.Key).Select(a => a.QuestionId).ToList();
                int coun = item.Value;
                //Label lbssd = new Label();
                //lbssd.Text = OnlineExamHelper.Context.OnlineCategories.Single(a => a.CategoryId == item.Key).Category;
                //pla.Controls.Add(lbssd);

                for (int i = 0; i < coun; i++)
                {
                    var vv = ElearningHelper.Context.tblQuestions.Single(a => a.Fk_QuestionTitle == item.Key && a.QuestionId == ids[rd.Next(0, ids.Count)]);
                    if (CreatedIds.Contains(vv.QuestionId))
                    {
                        coun = coun + 1;
                    }
                    else
                    {
                        CreatedIds.Add(vv.QuestionId);
                        DataRow dr = obj.NewRow();
                        dr["Question"] = vv.Question;
                        dr["QuesId"] = vv.QuestionId;
                        obj.Rows.Add(dr);
                    }
                }
            }
            GridView1.DataSource = obj;
            GridView1.DataBind();
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            foreach (GridViewRow item in GridView1.Rows)
            {
                RadioButtonList rdl = (RadioButtonList)item.FindControl("RadioButtonList1");
                long aa = Convert.ToInt64(GridView1.DataKeys[item.RowIndex].Values[0]);
                var ss = ElearningHelper.Context.tblAnswers.Where(a => a.FK_QuestionId == aa);
                rdl.DataSource = ss;
                rdl.DataTextField = "Answer";
                rdl.DataValueField = "Id";
                rdl.DataBind();
            }
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGrid();
        }
        protected void Complete_Click(object sender, EventArgs e)
        {
            Dictionary<long, int> dic = new Dictionary<long, int>();
            Dictionary<long, int> dics = (Dictionary<long, int>)Session["cat"];

            foreach (GridViewRow item in GridView1.Rows)
            {
                RadioButtonList rdl = (RadioButtonList)item.FindControl("RadioButtonList1");
                long aa = Convert.ToInt64(GridView1.DataKeys[item.RowIndex].Values[0]);
                var dd = ElearningHelper.Context.tblQuestions.Single(a => a.QuestionId == aa);
                if (!string.IsNullOrEmpty(Convert.ToString(rdl.SelectedValue)))
                {
                    if (Convert.ToInt64(rdl.SelectedValue) == dd.FK_Answer)
                    {
                        dic.Add(aa, 1);
                    }
                    else
                    {
                        dic.Add(aa, 0);
                    }
                }
            }
            int m = 0;
            Dictionary<long, int> mar = new Dictionary<long, int>();
            var qu = ElearningHelper.Context.tblQuestionTitles.Select(a => a);
            foreach (var item in qu)
            {
                if (dics.Keys.Contains(item.QuestionTitleId))
                {
                    foreach (KeyValuePair<long, int> va in dic)
                    {
                        long key = ElearningHelper.Context.tblQuestions.Single(a => a.QuestionId == va.Key).Fk_QuestionTitle.Value;
                        if (key == item.QuestionTitleId)
                        {
                            m += va.Value;
                        }
                    }
                    mar.Add(item.QuestionTitleId, m);
                    m = 0;
                }
            }
            Session["result"] = mar;
            Response.Redirect("Result.aspx");
        }
    }
}