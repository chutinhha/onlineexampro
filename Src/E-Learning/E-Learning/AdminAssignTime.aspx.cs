using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning
{
    public partial class AdminAssignTime : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CreateControls();
            if (!IsPostBack)
            {
                for (int i = 0; i < 25; i++)
                {
                    ddlHours.Items.Add(i.ToString());
                }
                for (int i = 0; i < 61; i++)
                {
                    ddlMinitues.Items.Add(i.ToString());
                    ddlSecs.Items.Add(i.ToString());
                }
            }
        }
        private void CreateControls()
        {
            var ss = ElearningHelper.Context.tblQuestionTitles.Select(a => a);
            Table tbl = new Table();
            int i = 0;
            foreach (var item in ss)
            {
                TableRow tr = new TableRow();
                TableCell td = new TableCell();
                CheckBox chk = new CheckBox();
                chk.Text = item.QuestionTitle;
                chk.ID = "chk_" + item.QuestionTitleId;
                td.Controls.Add(chk);
                TableCell td1 = new TableCell();
                TextBox txt = new TextBox();
                txt.ID = "txt_" + item.QuestionTitleId;
                td1.Controls.Add(txt);
                tr.Controls.Add(td);
                tr.Controls.Add(td1);
                tbl.Controls.Add(tr);
                i++;
            }
            PlaceHolder1.Controls.Add(tbl);
        }
        protected void btnAssign_Click(object sender, EventArgs e)
        {

            Application["accept"] = "1";
            var ss = ElearningHelper.Context.tblQuestionTitles.Select(a => a);
            int i = 0;
            Dictionary<long, int> dic = new Dictionary<long, int>();
            foreach (var item in ss)
            {
                CheckBox chk = ((CheckBox)Page.FindControl("chk_" + item.QuestionTitleId));
                if (chk.Checked)
                {
                    TextBox txt = ((TextBox)Page.FindControl("txt_" + item.QuestionTitleId));
                    int dd = ElearningHelper.Context.tblQuestions.Count(a => a.Fk_QuestionTitle == item.QuestionTitleId);
                    if (dd >= Convert.ToInt32(txt.Text))
                    {
                        dic.Add(item.QuestionTitleId, Convert.ToInt32(txt.Text));
                    }
                    else
                    {
                        lblError.Text = "Enter less than " + dd.ToString() + " in " + item.QuestionTitle + " Category";
                        return;
                    }
                }
                i++;
            }

            DateTime dt = DateTime.Now;
            //Session["TimeLeft"] = dt;
            DateTime dt1 = dt.AddHours(Convert.ToDouble(ddlHours.SelectedItem.Text)).AddMinutes(Convert.ToDouble(ddlMinitues.SelectedItem.Text)).AddSeconds(Convert.ToDouble(ddlSecs.SelectedItem.Text));
            //Session["timeDuration"] = dt1;
            var de = ElearningHelper.Context.sp_tblAssignDetailNewInsertCommand(dt1, dt);
            foreach (var item in de)
            {
                //Session["cat"] = dic;
                foreach (KeyValuePair<long, int> item1 in dic)
                {
                    ElearningHelper.Context.sp_tblTitleCountNewInsertCommand(item1.Key, item1.Value, item.Id);
                }
            }
            //Response.Redirect("~/registration.aspx");
        }
    }
}