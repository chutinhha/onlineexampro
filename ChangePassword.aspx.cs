using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtReset_Click(object sender, EventArgs e)
    {
        string[] b = Convert.ToString(Session["Email"]).Split('|');
        var source = PayrollHelper.Context.Payroll_PersonalDetails.Where(a => a.Email == b[0]).Select(a => a);
        foreach (var item in source)
        {
            if (item.Password == txtOldPassword.Text)
            {
                item.Password = txtConformPassword.Text;
                PayrollHelper.Context.SubmitChanges();
                lbResponse.Text = "Change Successfully!";
                EmptyTextBoxes(this);
            }
            else
            {
                lbResponse.Text = "Check old Password!";
            }
        }
    }

    public void EmptyTextBoxes(Control parent)
    {
        foreach (Control c in parent.Controls)
        {
            if (c is TextBox)
            {
                TextBox textBox = c as TextBox;
                //if (c != txtDiscount)
                //{
                ((TextBox)(c)).Text = "";
                //}
            }
            if (c.HasControls())
            {
                EmptyTextBoxes(c);
            }
        }
    }
    protected void lnkhome_Click(object sender, EventArgs e)
    {

    }
}