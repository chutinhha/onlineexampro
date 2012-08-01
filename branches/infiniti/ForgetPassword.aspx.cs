using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using DAL;


public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnforget_Click(object sender, EventArgs e)
    {
        using (InfinitiClothDataContext dataDB = new InfinitiClothDataContext())
        {
            var counter = from a in dataDB.Infiniti_CustomerRegistrations where a.Email == txtEmail.Text select a;

            if (counter.Count() == 1)
            {
                var getval = counter.FirstOrDefault();
                EncryptedQueryString args = new EncryptedQueryString();
                args["arg1"] = txtEmail.Text;
                string url = string.Format("http://www.infiniticlothing.com/ResetPassword.aspx?args={0}", args.ToString());
                String email = txtEmail.Text;
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("iconstechnologies@gmail.com");
                msg.To.Add(txtEmail.Text);
                msg.Subject = "Activation Mail From icons";
                StringBuilder sb = new StringBuilder();
                sb.Append("<table><tr><td colspan='2'>Hi,&nbsp;" + getval.First_name + "</td></tr><tr><td colspan='2'></td></tr><tr><td colspan='2'>Thank you for registering with us! .</td></tr><tr><td colspan='2'></td></tr><tr><td colspan='2'>Click on the link below to activate your account:</td></tr><tr><td colspan='2'></td></tr><tr><td>Login URL :</td><td>" + url + "</td></tr><tr><td colspan='2'></td></tr><tr><td colspan='2'>Click is not possible means&nbsp;<a href=" + url + ">click here</a></td></tr><tr><td colspan='2'></td></tr><tr><td>Account Detail:</td></tr><tr><td colspan='2'></td></tr><tr><td colspan='2'><table><tr><td>   Email:</td><td>" + txtEmail.Text + "</td></tr></table></td></tr><tr><td colspan='2'></td></tr><tr><td colspan='2'>Thank you,</td></tr><tr><td colspan='2'>Edit My Photos</td></tr><tr><td colspan='2'>www.i-constech.com</td></tr></table>");
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
}