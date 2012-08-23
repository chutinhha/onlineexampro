using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;

public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        var counter = PayrollHelper.Context.Payroll_PersonalDetails.Where(a => a.Email == txtEmailadd.Text).Select(a => a);

        if (counter.Count() == 1)
        {
            var getval = counter.FirstOrDefault();
            EncryptedQueryString args = new EncryptedQueryString();
            args["arg1"] = txtEmailadd.Text;
            string url = string.Format("http://localhost:49378/PayRoll/Reset.aspx?args={0}", args.ToString());
            String email = txtEmailadd.Text;
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("iconstechnologies@gmail.com");
            msg.To.Add(txtEmailadd.Text);
            msg.Subject = "Activation Mail From icons";
            StringBuilder sb = new StringBuilder();
            sb.Append("<table><tr><td colspan='2'>Hi,&nbsp;" + getval.First_Name + "</td></tr><tr><td colspan='2'></td></tr><tr><td colspan='2'>Thank you for registering with us! .</td></tr><tr><td colspan='2'></td></tr><tr><td colspan='2'>Click on the link below to activate your account:</td></tr><tr><td colspan='2'></td></tr><tr><td>Login URL :</td><td>" + url + "</td></tr><tr><td colspan='2'></td></tr><tr><td colspan='2'>Click is not possible means&nbsp;<a href=" + url + ">click here</a></td></tr><tr><td colspan='2'></td></tr><tr><td>Account Detail:</td></tr><tr><td colspan='2'></td></tr><tr><td colspan='2'><table><tr><td>   Email:</td><td>" + txtEmailadd.Text + "</td></tr></table></td></tr><tr><td colspan='2'></td></tr><tr><td colspan='2'>Thank you,</td></tr><tr><td colspan='2'>Edit My Photos</td></tr><tr><td colspan='2'>www.i-constech.com</td></tr></table>");
            msg.Body = sb.ToString();
            msg.IsBodyHtml = true;
            msg.Priority = MailPriority.High;
            MailSender ms = new MailSender();
            ms.SendMailUsingGmail(msg);
            lbResponse.ForeColor = System.Drawing.ColorTranslator.FromHtml("#006600");
            lbResponse.Text = "Password Link sent to your Mail Id!";
        }
        else
        {
            lbResponse.ForeColor = System.Drawing.ColorTranslator.FromHtml("#CC0000");
            lbResponse.Text = "Invalid Email Id!";
        }
    }
}