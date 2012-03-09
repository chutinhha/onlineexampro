using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_QuestionPosting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDropDown();
        }
    }

    private void BindDropDown()
    {
        ddlCatagory.DataSource = OnlineExamHelper.Context.sp_OnlineCategoryNewSelectCommand();
        ddlCatagory.DataTextField = "Category";
        ddlCatagory.DataValueField = "CategoryId";
        ddlCatagory.DataBind();
        ddlCatagory.Items.Add("other");
        ddlCatagory.Items.Insert(0, new ListItem("-select-", "0"));
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        //OnlineExamHelper.Context.sp_OnlineQuestionNewInsertCommand(txtQuestion.Text,path,
    }
    protected void ddlCatagory_SelectedIndexChanged(object sender, EventArgs e)
    {
        addtopics();
    }

    private void addtopics()
    {
        if (ddlCatagory.SelectedItem.Text == "other")
        {
            txtAdd.Visible = true;
            btnAdd.Visible = true;
        }
        else
        {
            txtAdd.Visible = false;
            btnAdd.Visible = false;
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        OnlineExamHelper.Context.sp_OnlineCategoryNewInsertCommand(txtAdd.Text);
        BindDropDown();
        addtopics();
    }
    protected void btnAnswerAdd_Click(object sender, EventArgs e)
    {
        DataTable dt = (DataTable)ViewState["Answers"];
        if (dt == null)
        {
            dt = CreateTable();
        }
        DataRow dr = dt.NewRow();
        dr["Answer"] = txtAnswer.Text;
        dt.Rows.Add(dr);
        BindGrid(dt);
        ViewState["Answers"] = dt;
    }
    private DataTable CreateTable()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add(new DataColumn("Answer"));
        return dt;
    }

    private void BindGrid(DataTable dt)
    {
        if (dt != null)
        {
            grdAnswers.DataSource = dt;
            grdAnswers.DataBind();
        }
    }
    protected void grdAnswers_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = (DataTable)ViewState["Answers"];
        dt.Rows.RemoveAt(e.RowIndex);
        BindGrid(dt);
        ViewState["Answers"] = dt;
    }
}