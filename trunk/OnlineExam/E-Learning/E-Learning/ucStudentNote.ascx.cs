using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Microsoft.Office;
using Microsoft.Office.Interop.Word;

namespace E_Learning
{
    public partial class ucStudentNote : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindSub();
              //  BindTitle();
            }
        }
        protected void ddlNotesSubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindTitle();
        } 
        private void BindSub()
        {
            ddlNotesSubject.DataSource = ElearningHelper.Context.sp_tblSubjectsNewSelectCommand();
            ddlNotesSubject.DataTextField = "SubjectName";
            ddlNotesSubject.DataValueField = "Id";
            ddlNotesSubject.DataBind();
            ddlNotesSubject.Items.Insert(0, "-Select-");
        }
             
        private void BindTitle()
        {
            ddlNotesTitle.DataSource = ElearningHelper.Context.tblTitles.Where(a => a.FK_SubjectId == Convert.ToInt64(ddlNotesSubject.SelectedValue));
            ddlNotesTitle.DataTextField = "TitleName";
            ddlNotesTitle.DataValueField = "Id";
            ddlNotesTitle.DataBind();
            ddlNotesTitle.Items.Insert(0, "-Select-");
        }
       }
}