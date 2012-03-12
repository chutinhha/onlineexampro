using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //int aa =Convert.ToInt32(  Session["timeDuration"]);
        int aa = 3610;
        if (!IsPostBack)
        {
            BindGrid();
            Session["time"] = DateTime.Now.AddSeconds(aa);

        }


    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        TimeSpan time1 = new TimeSpan();
        time1 = (DateTime)Session["time"] - DateTime.Now;

        if (time1.Seconds <= 0)
        {
            if (time1.Minutes <= 0)
            {
                if (time1.Hours <= 0)
                {
                    Label1.Text = "TimeOut!";
                }

            }

        }
        else
        {
            Label4.Text = time1.Hours.ToString();
            Label1.Text = time1.Seconds.ToString();
            Label3.Text = time1.Minutes.ToString();
        }

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
        var vv = OnlineExamHelper.Context.OnlineQuestions.Select(a => a);
        foreach (var item in vv)
        {
            DataRow dr = obj.NewRow();
            dr["Question"] = item.Question;
            dr["QuesId"] = item.QuestionId;
            dr["Imageurl"] = item.Imageurl;
            obj.Rows.Add(dr);
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
        }
    }
}