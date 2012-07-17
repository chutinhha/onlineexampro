using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning
{
    public partial class ucStudentAssignment : System.Web.UI.UserControl
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
            long f = ElearningHelper.Context.tblLogins.Single(a => a.RollNumber == Convert.ToString(Session["UserName"])).Id;
            var aa = from a in ElearningHelper.Context.tblAssignments where a.FK_StudentId == f select a;
            //if (aa.Count() > 0)
            {
                GridView1.DataSource = aa;
                GridView1.DataBind();
            }
        }
        private void BindDropDown()
        {
            ddlStaff.DataSource = ElearningHelper.Context.tblLogins.Where(a => a.FK_RoleId == 2);
            ddlStaff.DataTextField = "Name";
            ddlStaff.DataValueField = "Id";
            ddlStaff.DataBind();
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string path = string.Empty;
            if (flpFile.HasFile)
            {
                path = "~/StudentDocs/" + flpFile.FileName;
                flpFile.SaveAs(Server.MapPath(path));
            }
            long f = ElearningHelper.Context.tblLogins.Single(a => a.RollNumber == Convert.ToString(Session["UserName"])).Id;
            ElearningHelper.Context.sp_tblAssignmentsNewInsertCommand(path, Convert.ToInt64(ddlStaff.SelectedValue), txtTopic.Text, Convert.ToInt32(txtAssignNum.Text), DateTime.Now, f, false);
            lblregister.Text = "Assignment Posted";
            emptyfield();
        }

        private void emptyfield()
        {
            txtAssignNum.Text = string.Empty;
            txtTopic.Text = string.Empty;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "View")
            {
                System.Diagnostics.Process.Start(Server.MapPath(ElearningHelper.Context.tblAssignments.Single(a => a.Id == Convert.ToInt64(e.CommandArgument)).FilePath));
            }
        }
    }
}