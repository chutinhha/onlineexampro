using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;



/// <summary>
/// Summary description for MailSender
/// </summary>
public class MailSender
{
	public MailSender()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void SendMailUsingGmail(MailMessage msg)
    {
        SmtpClient sm = new SmtpClient();
        sm.Credentials = new System.Net.NetworkCredential("iconstechnologies", "icons@123");
        sm.Port = 587;
        sm.Host = "smtp.gmail.com";
        sm.EnableSsl = true;
        sm.Send(msg);
        //msg.Dispose();
    }
    public void SendMailUsingServer(MailMessage msg)
    {
        SmtpClient sm = new SmtpClient();
        sm.UseDefaultCredentials = true;
        sm.Host = "192.168.1.1";
        sm.Send(msg);
        //msg.Dispose();
    }
}
