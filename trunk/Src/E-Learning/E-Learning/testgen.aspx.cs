using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning
{
    public partial class testgen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("HomeNew.aspx");
            }
            if (!IsPostBack)
            {
                BindQuestionTitleDDL();
            }
        }
        private void BindQuestionTitleDDL()
        {
            ddlTitleTest.DataSource = ElearningHelper.Context.sp_tblQuestionTitleNewSelectCommand();
            ddlTitleTest.DataTextField = "QuestionTitle";
            ddlTitleTest.DataValueField = "Id";
            ddlTitleTest.DataBind();
            ddlTitleTest.Items.Insert(0, "-Select-");
        }
        protected void btnAddTitle_Click(object sender, EventArgs e)
        {
            var tt=ElearningHelper.Context.tblQuestionTitles.Where(a=>a.QuestionTitle==txtTitleTest.Text);
            if (tt.Count() > 0)
            {
                Response.Write("<script>alert('Item already exists')</script>");
            }
            else
            {
                ElearningHelper.Context.sp_tblQuestionTitleNewInsertCommand(txtTitleTest.Text);
                BindQuestionTitleDDL();
            }
        }
        protected void btnQuestionSubmit_Click(object sender, EventArgs e)
        {
            ElearningHelper.Context.sp_tblQuestionNewInsertCommand(Convert.ToInt32(ddlTitleTest.SelectedValue), Convert.ToInt32(txtQuestionNo.Text), txtQuestion.Text, txtOptionA.Text, txtOptionB.Text, txtOptionC.Text, txtOptionD.Text, txtActualAnswer.Text);
        }

    }
}
