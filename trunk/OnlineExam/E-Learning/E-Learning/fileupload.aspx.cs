using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning
{
    public partial class fileupload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("HomeNew.aspx");
            }
            if (!IsPostBack)
            {
                BindSubjectDDL();
            }
        }

        private void BindSubjectDDL()
        {
            ddlSubject.DataSource = ElearningHelper.Context.sp_tblSubjectsNewSelectCommand();
            ddlSubject.DataTextField = "SubjectName";
            ddlSubject.DataValueField = "Id";
            ddlSubject.DataBind();
            ddlSubject.Items.Insert(0, "-Select-");
        }

        protected void ddlSubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindTitleDDL();
        }
        private void BindTitleDDL()
        {
            ddlTitle.DataSource = ElearningHelper.Context.tblTitles.Where(a => a.FK_SubjectId == Convert.ToInt64(ddlSubject.SelectedValue));
            ddlTitle.DataTextField = "TitleName";
            ddlTitle.DataValueField = "Id";
            ddlTitle.DataBind();
            ddlTitle.Items.Insert(0, "-Select-");
        }

        protected void btnAddSubject_Click(object sender, EventArgs e)
        {
            var sub = ElearningHelper.Context.tblSubjects.Where(a => a.SubjectName == txtSubject.Text);
            if (sub.Count() > 0)
            {
                Response.Write("<script>alert('Item Already Exists')</script>");
            }
            else
            {

                ElearningHelper.Context.sp_tblSubjectsNewInsertCommand(txtSubject.Text);
                BindSubjectDDL();
            }
        }

        protected void btnAddTitle_Click(object sender, EventArgs e)
        {
            var tit = ElearningHelper.Context.tblTitles.Where(a => a.TitleName == txtTitle.Text && a.tblSubject.Id==Convert.ToInt64(ddlSubject.SelectedValue));
            if (tit.Count() > 0)
            {
                Response.Write("<script>alert('Item Already Exists')</script>");
            }
            else
            {

                ElearningHelper.Context.sp_tblTitlesNewInsertCommand(txtTitle.Text, Convert.ToInt64(ddlSubject.SelectedValue));
                BindTitleDDL();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string path = string.Empty;
            if (flpDoc.HasFile)
            {
                path = "~/UploadedFiles/" + flpDoc.FileName;
                flpDoc.SaveAs(Server.MapPath(path));
                ElearningHelper.Context.sp_tblFilesNewInsertCommand(Convert.ToInt64(ddlSubject.SelectedValue), path);
            }
        }
    }
}