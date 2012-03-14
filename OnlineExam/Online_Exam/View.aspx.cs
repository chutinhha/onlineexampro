using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;

public partial class View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //int aa =Convert.ToInt32(  Session["timeDuration"]);
        if (Session["cat"] == null | Session["timeDuration"] == null)
        {
            Response.Redirect("~/admin/loginAdmin.aspx");
        }
        int aa = 3610;
        if (!IsPostBack)
        {
            BindGrid();
            Session["time"] = DateTime.Now.AddSeconds(aa);
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        DateTime dt = (DateTime)Session["timeDuration"];
        DateTime dt1 = (DateTime)Session["TimeLeft"];
        TimeSpan sp = dt.Subtract(dt1);
        if (sp.Seconds <= 0 && sp.Minutes <= 0 && sp.Hours <= 0)
        {
            Response.Redirect("~/admin/View Result.aspx");
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
        dc = new DataColumn("Imageurl");
        obj.Columns.Add(dc);
        Dictionary<long, int> dic = (Dictionary<long, int>)Session["cat"];
        Random rd = new Random();
        List<long> CreatedIds = new List<long>();
        foreach (KeyValuePair<long, int> item in dic)
        {
            List<long> ids = OnlineExamHelper.Context.OnlineQuestions.Where(a => a.FK_Category == item.Key).Select(a => a.QuestionId).ToList();
            int coun = item.Value;
            for (int i = 0; i < coun; i++)
            {
                var vv = OnlineExamHelper.Context.OnlineQuestions.Single(a => a.FK_Category == item.Key && a.QuestionId == ids[rd.Next(0, ids.Count)]);
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
                    dr["Imageurl"] = vv.Imageurl;
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
            var ss = OnlineExamHelper.Context.OnlineOptions.Where(a => a.FK_QuestionId == aa);
            rdl.DataSource = ss;
            rdl.DataTextField = "OptionName";
            rdl.DataValueField = "OptionId";
            rdl.DataBind();
            Image img = (Image)item.FindControl("Image1");
            if (string.IsNullOrEmpty(OnlineExamHelper.Context.OnlineQuestions.Single(a => a.QuestionId == aa).Imageurl))
            {
                img.Visible = false;
            }
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
            var dd = OnlineExamHelper.Context.OnlineQuestions.Single(a => a.QuestionId == aa);
            if (Convert.ToInt64(rdl.SelectedValue) == dd.FK_Answer)
            {
                dic.Add(aa, 1);
            }
            else
            {
                dic.Add(aa, 0);
            }
        }
        int m = 0;
        Dictionary<long, int> mar = new Dictionary<long, int>();
        var qu = OnlineExamHelper.Context.OnlineCategories.Select(a => a);
        foreach (var item in qu)
        {
            if (dics.Keys.Contains(item.CategoryId))
            {
                foreach (KeyValuePair<long, int> va in dic)
                {
                    long key = OnlineExamHelper.Context.OnlineQuestions.Single(a => a.QuestionId == va.Key).FK_Category.Value;
                    if (key == item.CategoryId)
                    {
                        m += va.Value;
                    }
                }
                mar.Add(item.CategoryId, m);
                m = 0;
            }
        }
        Session["result"] = mar;
        Response.Redirect("result.aspx");
    }
}