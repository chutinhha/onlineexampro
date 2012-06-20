using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucChangePassword : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnChangePassword_Click(object sender, EventArgs e)
    {
        try
        {
            Int64 customerID;
            var PasswordChange = PhotoProcessingHelper.Context.Photo_CustomerRegistrationDetails.Where(a => a.Email == Convert.ToString(Session["Email"]).Split('|').GetValue(0).ToString()).Select(a => a).FirstOrDefault();
            if (PasswordChange.Password != txtOldPassword.Text)
            {
                txtOldPassword.Focus();
                throw new Exception("check old Password!");
            }
            customerID = PasswordChange.Customer_id;
            PasswordChange.Password = txtNewPassword.Text;
            PhotoProcessingHelper.Context.SubmitChanges();
            var passwordlog = PhotoProcessingHelper.Context.Photo_Change_Password_logs.Where(a => a.FkCustomer_id == customerID).Select(a => a);
            if (passwordlog.Count() == 0)
            {
                PhotoProcessingHelper.Context.sp_Photo_Change_Password_logNewInsertCommand(txtNewPassword.Text, txtOldPassword.Text, DateTime.Now, customerID);
            }
            else
            {
                var Updateinlog = passwordlog.Select(a => a).FirstOrDefault();
                Updateinlog.New_Password = txtNewPassword.Text;
                Updateinlog.Old_Password = txtOldPassword.Text;
                Updateinlog.Date_of_change = DateTime.Now;
                PhotoProcessingHelper.Context.SubmitChanges();
                lbResponse.ForeColor = System.Drawing.ColorTranslator.FromHtml("#006600");
                lbResponse.Text = "Change Successfully!";
            }
        }
        catch (Exception ex)
        {
            lbResponse.ForeColor = System.Drawing.ColorTranslator.FromHtml("#CC0000");
            lbResponse.Text = ex.Message;
        }
    }
}