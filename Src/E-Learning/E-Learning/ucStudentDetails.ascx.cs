using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning
{
    public partial class ucStudentDetails : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var aa = from a in ElearningHelper.Context.tblForumAnswers
                     where a.tblLogin.RollNumber == TextBox1.Text
                     select
                         new
                         {
                             StudentName = a.tblLogin.Name,
                             Answer = a.Answer,
                             Date = a.Date
                         };
            GridView1.DataSource = aa;
            GridView1.DataBind();
            var bb = from a in ElearningHelper.Context.tblLogins where a.RollNumber == TextBox1.Text select a;
            foreach (var item in bb)
            {
                var d = from a in ElearningHelper.Context.tblResultMarks
                        where a.tblResult.FK_UserId == item.Id
                        select new
                        {
                            StudentName = a.tblResult.tblLogin.Name,
                            QuestionTitle = a.tblQuestionTitle.QuestionTitle,
                            Mark = a.Mark
                        };
                GridView2.DataSource = d;
                GridView2.DataBind();
                Response.ContentType = "application/ms-excel";
                Response.AddHeader("Content-Disposition", "inline;filename=ExcelRPT.xls");



            }
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                int a = 0;
                foreach (GridViewRow item in GridView2.Rows)
                {
                    a += Convert.ToInt32(item.Cells[2].Text);
                }
                e.Row.Cells[2].Text = a.ToString();
            }
        }
    }
}