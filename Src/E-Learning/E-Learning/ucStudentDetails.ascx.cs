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
                //    var cc = from a in ElearningHelper.Context.tblLogins where a.RollNumber == TextBox1.Text select a;
                //    foreach (var c in cc)
                //    {
                //        var x = from a in ElearningHelper.Context.tblAssignments
                //                where a.FK_StudentId == c.Id
                //                select new
                //                {
                //                    AssignmentNumber = a.AssignNum,
                //                    SubmittedDate = a.Date
                //                };
                //    }
                //    GridView3.DataSource = cc;
                //    GridView3.DataBind();
                //}
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

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename=FileName.xls");
            Response.Charset = "";
            // Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.xls";
            System.IO.StringWriter stringWrite = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
            switch (MultiView1.ActiveViewIndex)
            {
                case 0:
                    GridView1.RenderControl(htmlWrite);
                    break;
                case 1:
                    GridView2.RenderControl(htmlWrite);
                    break;
                //case 2:
                //    GridView3.RenderControl(htmlWrite);
                //    break;
                default:
                    break; 
            }            
            Response.Write(stringWrite.ToString());
            Response.End();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }
        //protected void LinkButton3_Click1(object sender, EventArgs e)
        //{
        //    MultiView1.ActiveViewIndex = 2;
        //}
    }
}