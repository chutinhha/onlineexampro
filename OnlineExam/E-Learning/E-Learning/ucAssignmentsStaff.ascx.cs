using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning
{
    public partial class ucAssignmentsStaff : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("HomeNew.aspx");
            }
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            //where a.Status == false && a.FK_StaffId == st
            long st = ElearningHelper.Context.tblLogins.Single(a => a.RollNumber == Convert.ToString(Session["UserName"])).Id;
            //GridView1.DataSource = from a in ElearningHelper.Context.tblAssignments
            //                       select new
            //                           {
            //                               AssignNum = a.AssignNum,
            //                               Date = a.Date,
            //                               FilePath = a.FilePath,
            //                               FK_StaffId = a.FK_StaffId,
            //                               FK_StudentId = a.FK_StudentId,
            //                               Id = a.Id,
            //                               Status = a.Status,
            //                               Topic = a.Topic,
            //                               Name = ElearningHelper.Context.tblLogins.Single(b => b.Id == a.FK_StudentId).Name,
            //                               RollNumber = a.tblLogin.RollNumber
            //                           };
            var aa = ElearningHelper.Context.tblAssignments.Join(ElearningHelper.Context.tblLogins, a => a.FK_StudentId, b => b.Id, (a, b) => new { a = a, b = b });
            GridView1.DataSource = ElearningHelper.Context.sp_select(st, false);
                //aa.Where(a => a.a.Status == false && a.a.FK_StaffId == st);
            GridView1.DataBind();
            GridView2.DataSource = from a in ElearningHelper.Context.tblAssignments where a.Status == true && a.FK_StaffId == st select a;
            GridView2.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Verify")
            {
                using (var Context = new ELearningDataContext())
                {
                    var dd = Context.tblAssignments.Single(a => a.Id == Convert.ToInt64(e.CommandArgument));
                    dd.Status = true;
                    Context.SubmitChanges();
                }
                BindGrid();
            }
            if (e.CommandName == "View")
            {
                System.Diagnostics.Process.Start(Server.MapPath(ElearningHelper.Context.tblAssignments.Single(a => a.Id == Convert.ToInt64(e.CommandArgument)).FilePath));
            }
        }

        
    }
}