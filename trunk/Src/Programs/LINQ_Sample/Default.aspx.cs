using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        using (var obj = new DataClassesDataContext())
        {
            var tbl = new tblLinqSample();
            tbl.MailId = txtMailId.Text;
            tbl.MobileNumber = Convert.ToInt64(txtMobileNumber.Text);
            tbl.Password = txtPassword.Text;
            tbl.UserName = txtUserName.Text;
            obj.tblLinqSamples.InsertOnSubmit(tbl);
            obj.SubmitChanges();
        }
    }
    protected void btnFind_Click(object sender, EventArgs e)
    {
        using (var obj = new DataClassesDataContext())
        {
            if (obj.tblLinqSamples.Count(a => a.Id == Convert.ToInt64(txtId.Text)) > 0)
            {
                var tbl = obj.tblLinqSamples.Single(a => a.Id == Convert.ToInt64(txtId.Text));
                txtMailId.Text = tbl.MailId;
                txtMobileNumber.Text = tbl.MobileNumber.Value.ToString();
                txtPassword.Text = tbl.Password;
                txtUserName.Text = tbl.UserName;
            }
            else
            {
                Response.Write("No records");
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (var obj = new DataClassesDataContext())
        {
            var tbl = obj.tblLinqSamples.Single(a => a.Id == Convert.ToInt64(txtId.Text));
            tbl.MailId = txtMailId.Text;
            tbl.MobileNumber = Convert.ToInt64(txtMobileNumber.Text);
            tbl.Password = txtPassword.Text;
            tbl.UserName = txtUserName.Text;
            obj.SubmitChanges();
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        using (var obj = new DataClassesDataContext())
        {
            var tbl = obj.tblLinqSamples.Single(a => a.Id == Convert.ToInt64(txtId.Text));
            obj.tblLinqSamples.DeleteOnSubmit(tbl);
            obj.SubmitChanges();
        }
    }
}