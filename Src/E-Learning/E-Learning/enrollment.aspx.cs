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
            ElearningHelper.Context.sp_tblLoginNewInsertCommand(txtRollNumber.Text, txtName.Text, password, txtYear.Text, txtDepartment.Text, txtEMailId.Text, DateTime.Now, DateTime.Now, Convert.ToInt64(ddlRoll.SelectedValue), txtAddress.Text, Convert.ToInt64(txtPostalCode.Text));
            
        }

        protected void ddlRoll_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}