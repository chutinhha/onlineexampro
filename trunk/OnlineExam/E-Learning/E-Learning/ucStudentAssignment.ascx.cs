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
        }
    }
}