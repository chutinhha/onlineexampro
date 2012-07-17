using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning
{
    public partial class enrollement : System.Web.UI.Page
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
                DropDownList1.Items.Add("-Select-");
                for (int i = DateTime.Now.Year; i < DateTime.Now.Year + 4; i++)
                {
                    DropDownList1.Items.Add(i.ToString());
                }
                DropDownList2.DataSource = from a in ElearningHelper.Context.tblCourses select a;
                DropDownList2.DataTextField = "CourseName";
                DropDownList2.DataValueField = "Id";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0,"-Select-");
            }
        }

        private void BindDropDown()
        {
            long role = Convert.ToInt64(Session["Role"]);
            if (role == 2)
            {
                ddlRoll.DataSource = ElearningHelper.Context.tblRoles.Where(a => a.Id != 1 && a.Id != 2);
            }
            else
            {
                ddlRoll.DataSource = ElearningHelper.Context.tblRoles.Select(a => a);
            }
            ddlRoll.DataTextField = "RoleName";
            ddlRoll.DataValueField = "Id";
            ddlRoll.DataBind();
            ddlRoll.Items.Insert(0, "-Select-");            
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string[] pas = new string[] { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" };
            Random rd = new Random();
            string password = string.Empty;
            for (int i = 0; i < 6; i++)
            {
                password += pas[rd.Next(10)];
            }
            var st = ElearningHelper.Context.sp_tblLoginNewInsertCommand(txtRollNumber.Text, txtName.Text, password, DropDownList2.SelectedValue, txtDepartment.Text, txtEMailId.Text, DateTime.Now, DateTime.Now, Convert.ToInt64(ddlRoll.SelectedValue), txtAddress.Text, Convert.ToInt64(txtPostalCode.Text),Convert.ToInt64(DropDownList1.SelectedValue));
            foreach (var item in st)
            {
                using (var obj = new ELearningDataContext())
                {
                    var aa = new tblStuCourse();
                    aa.FK_Course = Convert.ToInt64(DropDownList2.SelectedValue);
                    aa.FK_StudentId = item.Id;
                    aa.Year = Convert.ToInt32(DropDownList1.SelectedItem.Text);
                    obj.tblStuCourses.InsertOnSubmit(aa);
                    obj.SubmitChanges();
                }
            }
            lblRegister.Text = "Registered Successfully";
            emptyfield();
        }

        private void emptyfield()
        {
            txtAddress.Text = string.Empty;
            txtDepartment.Text = string.Empty;
            txtEMailId.Text = string.Empty;
            txtMobileNumber.Text = string.Empty;
            txtName.Text = string.Empty;
            txtPostalCode.Text = string.Empty;
            txtRollNumber.Text = string.Empty;
            
        }
        protected void ddlRoll_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}