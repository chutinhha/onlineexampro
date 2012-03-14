using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning
{
    public partial class Forums : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("HomeNew.aspx");
            }
            if (!IsPostBack)
            {
                BindDropDown();
                BindGrid();
            }
        }

        private void BindGrid()
        {
            var obj = from a in ElearningHelper.Context.tblForumQuestions
                      select new
                          {
                              Question = a.Question,
                              Name = a.tblLogin.Name,
                              RollNumber = a.tblLogin.RollNumber,
                              Date = a.Date,
                              Id = a.Id
                          };
            GridView1.DataSource = obj;
            GridView1.DataBind();
            BindSecGrid();
        }

        private void BindDropDown()
        {
            ddlCategory.DataSource = ElearningHelper.Context.tblCategories.Select(a => a);
            ddlCategory.DataTextField = "CategoryName";
            ddlCategory.DataValueField = "Id";
            ddlCategory.DataBind();
        }

        protected void btnPost_Click(object sender, EventArgs e)
        {
            using (var Context = new ELearningDataContext())
            {
                var obj = new tblForumQuestion();
                obj.Question = txtForumQuestion.Text;
                obj.FK_CategoryId = Convert.ToInt64(ddlCategory.SelectedValue);
                obj.FK_UserId = Context.tblLogins.Single(a => a.RollNumber == Convert.ToString(Session["UserName"])).Id;
                obj.Date = DateTime.Now;
                Context.tblForumQuestions.InsertOnSubmit(obj);
                if (Context.GetChangeSet().Inserts.Count > 0)
                {
                    Context.SubmitChanges();
                }
            }
            BindGrid();
        }
        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            var cate = ElearningHelper.Context.tblCategories.Where(a => a.CategoryName == txtCategoryName.Text);
            if (cate.Count() > 0)
            {
                Response.Write("<script>alert('Item already exists')</script>");
            }
            else
            {

                using (var Context = new ELearningDataContext())
                {
                    var obj = new tblCategory();
                    obj.CategoryName = txtCategoryName.Text;
                    Context.tblCategories.InsertOnSubmit(obj);
                    if (Context.GetChangeSet().Inserts.Count > 0)
                    {
                        Context.SubmitChanges();
                    }
                }
                BindDropDown();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Reply")
            {
                GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                Panel pnl = (Panel)row.FindControl("Panel1");
                pnl.Visible = true;
            }
            if (e.CommandName == "AnsReply")
            {
                GridViewRow row = (GridViewRow)(((Button)e.CommandSource).NamingContainer);
                TextBox txt = (TextBox)row.FindControl("txtForumAnswer");
                using (var Context = new ELearningDataContext())
                {
                    var obj = new tblForumAnswer();
                    obj.Answer = txt.Text;
                    obj.Date = DateTime.Now;
                    obj.FK_QuestionId = Convert.ToInt64(e.CommandArgument);
                    obj.FK_UserId = Context.tblLogins.Single(a => a.RollNumber == Convert.ToString(Session["UserName"])).Id;                    
                    Context.tblForumAnswers.InsertOnSubmit(obj);
                    if (Context.GetChangeSet().Inserts.Count > 0)
                    {
                        Context.SubmitChanges();
                    }
                }
                Panel pnl = (Panel)row.FindControl("Panel1");
                pnl.Visible = false;
                BindSecGrid();
            }
        }

        private void BindSecGrid()
        {
            foreach (GridViewRow item in GridView1.Rows)
            {
                GridView gvr = (GridView)item.FindControl("GridView2");
                long id = Convert.ToInt64(GridView1.DataKeys[item.RowIndex].Values[0]);
                var obj = from a in ElearningHelper.Context.tblForumAnswers
                          where a.FK_QuestionId == id
                          select new
                          {
                              Answer = a.Answer,
                              Name = a.tblLogin.Name,
                              RollNumber = a.tblLogin.RollNumber,
                              Date = a.Date,
                              Id = a.Id
                          };
                gvr.DataSource = obj;
                gvr.DataBind();
            }
        }       
    }
}