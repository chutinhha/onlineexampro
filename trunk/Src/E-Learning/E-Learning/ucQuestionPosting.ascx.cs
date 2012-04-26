using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace E_Learning
{
    public partial class ucQuestionPosting : System.Web.UI.UserControl
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
            ddlCatagory.DataSource = ElearningHelper.Context.sp_tblQuestionTitleNewSelectCommand();
            ddlCatagory.DataTextField = "QuestionTitle";
            ddlCatagory.DataValueField = "QuestionTitleId";
            ddlCatagory.DataBind();
            ddlCatagory.Items.Add("other");
            ddlCatagory.Items.Insert(0, new ListItem("-select-", "0"));
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            var obj = ElearningHelper.Context.sp_tblQuestionNewInsertCommand(txtQuestion.Text, Convert.ToInt64(ddlCatagory.SelectedValue), 0);
            foreach (var item in obj)
            {
                DataTable dt = (DataTable)ViewState["Answers"];
                int i = 1;
                foreach (DataRow gg in dt.Rows)
                {
                    var ans = ElearningHelper.Context.sp_tblAnswersNewInsertCommand(gg["Answer"].ToString(), item.QuestionId, i);
                    int an = Convert.ToInt32(txtAnswer.Text);
                    if (i == an)
                    {
                        using (var context = new ELearningDataContext())
                        {
                            foreach (var opt in ans)
                            {
                                var updat = context.tblQuestions.Single(a => a.QuestionId == item.QuestionId);
                                updat.FK_Answer = opt.Id;
                                context.SubmitChanges();
                            }
                        }
                    }
                    i++;
                }
                dt.Clear();
                BindGrid(dt);
            }

            lbregister.Text = "Question Posted";
            emptyfield();
        }

        private void emptyfield()
        {
            txtQuestion.Text = string.Empty;
            txtOption.Text = string.Empty;
            txtAnswer.Text = string.Empty;
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
            ElearningHelper.Context.sp_tblQuestionTitleNewInsertCommand(txtAdd.Text);
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
            dr["Answer"] = txtOption.Text;
            dt.Rows.Add(dr);
            BindGrid(dt);
            ViewState["Answers"] = dt;
            txtOption.Text = string.Empty;
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
}