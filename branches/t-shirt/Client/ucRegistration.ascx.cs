using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;

public partial class ucRegistration : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtEmail.Focus();
            cbsubscription.Checked = true;
        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        lbResponse.Text = string.Empty;
        //System.Threading.Thread.Sleep(100000000);
        if (cbterms.Checked)
        {
            int a = 0;
            if (cbsubscription.Checked)
            {
                a = 1;
            }
            using (PhotoProcessingDataContext dataDB = new PhotoProcessingDataContext())
            {
                string path = "~/Images/Profile/default_person.jpg";
                var counter = from b in dataDB.Photo_CustomerRegistrationDetails where b.Email == txtEmail.Text select b;
                if (counter.Count() == 0)
                {
                    Photo_CustomerRegistrationDetailBL obj = new Photo_CustomerRegistrationDetailBL(0, txtEmail.Text, txtPassword.Text, 0, path, txtFullName.Text, 1, 0, a, a, DateTime.Now, DateTime.MaxValue, DateTime.MaxValue, 0, 0);
                    if (obj.Insert())
                    {
                        EncryptedQueryString args = new EncryptedQueryString();
                        args["arg1"] = txtEmail.Text;
                        string url = string.Format("http://localhost:50275/Client/MailActivation.aspx?args={0}", args.ToString());
                        String email = txtEmail.Text;
                        MailMessage msg = new MailMessage();
                        msg.From = new MailAddress("iconstechnologies@gmail.com");
                        msg.To.Add(txtEmail.Text);
                        msg.Subject = "Activation Mail From icons";
                        StringBuilder sb = new StringBuilder();
                        sb.Append("<table><tr><td colspan='2'>Hi,&nbsp;" + txtFullName.Text + "</td></tr><tr><td colspan='2'></td></tr><tr><td colspan='2'>Thank you for registering with us! .</td></tr><tr><td colspan='2'></td></tr><tr><td colspan='2'>Click on the link below to activate your account:</td></tr><tr><td colspan='2'></td></tr><tr><td>Login URL :</td><td>" + url + "</td></tr><tr><td colspan='2'></td></tr><tr><td colspan='2'>Click is not possible means&nbsp;<a href=" + url + ">click here</a></td></tr><tr><td colspan='2'></td></tr><tr><td>Account Detail:</td></tr><tr><td colspan='2'></td></tr><tr><td colspan='2'><table><tr><td>   Email:</td><td>" + txtEmail.Text + "</td></tr><tr><td>Password:</td><td>" + txtPassword.Text + "</td></tr></table></td></tr><tr><td colspan='2'></td></tr><tr><td colspan='2'>Thank you,</td></tr><tr><td colspan='2'>Edit My Photos</td></tr><tr><td colspan='2'>www.i-constech.com</td></tr></table>");
                        msg.Body = sb.ToString();
                        msg.IsBodyHtml = true;
                        msg.Priority = MailPriority.High;
                        MailSender ms = new MailSender();
                        ms.SendMailUsingGmail(msg);
                        lbResponse.Text = "Validation mail send to your Id. Please, Check to activate your account...!";
                        emptyfield();
                    }
                }
                else
                {
                    lbResponse.ForeColor = System.Drawing.ColorTranslator.FromHtml("#ff6230");
                    lbResponse.Text = "Email Id Already exist!";
                }
            }
        }
        else
        {
            lbResponse.ForeColor = System.Drawing.ColorTranslator.FromHtml("#ff6230");
            lbResponse.Text = "Check the terms & conditions";
        }
    }

    private void emptyfield()
    {
        txtEmail.Text = string.Empty;
        txtFullName.Text = string.Empty;
        txtPassword.Text = string.Empty;
        txtPasswordAgain.Text = string.Empty;
        cbterms.Checked = false;
    }
}