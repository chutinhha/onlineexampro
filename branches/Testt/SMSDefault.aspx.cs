using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;

public partial class _Default : System.Web.UI.Page
{
    string mbno, mseg, ckuser, ckpass;
    private HttpWebRequest req;
    private CookieContainer cookieCntr;
    private string strNewValue;
    public static string responseee;
    private HttpWebResponse response;

    protected void Page_Load(object sender, EventArgs e)
    {
        ckuser = "9600909211";
        ckpass = "lavenyamahe";

        try
        {
            this.req = (HttpWebRequest)WebRequest.Create("http://wwwd.way2sms.com/auth.cl");

            this.req.CookieContainer = new CookieContainer();
            this.req.AllowAutoRedirect = false;
            this.req.Method = "POST";
            this.req.ContentType = "application/x-www-form-urlencoded";
            this.strNewValue = "username=" + ckuser + "&password=" + ckpass;
            this.req.ContentLength = this.strNewValue.Length;
            StreamWriter writer = new StreamWriter(this.req.GetRequestStream(), Encoding.ASCII);
            writer.Write(this.strNewValue);
            writer.Close();
            this.response = (HttpWebResponse)this.req.GetResponse();
            this.cookieCntr = this.req.CookieContainer;
            this.response.Close();
            this.req = (HttpWebRequest)WebRequest.Create("http://wwwd.way2sms.com//jsp/InstantSMS.jsp?val=0");
            this.req.CookieContainer = this.cookieCntr;
            this.req.Method = "GET";
            this.response = (HttpWebResponse)this.req.GetResponse();
            responseee = new StreamReader(this.response.GetResponseStream()).ReadToEnd();
            int index = Regex.Match(responseee, "custf").Index;
            responseee = responseee.Substring(index, 0x12);
            responseee = responseee.Replace("\"", "").Replace(">", "").Trim();
            this.response.Close();

            pnlsend.Visible = true;
            lblErrormsg.Text = "connected";
        }
        catch (Exception)
        {
            lblErrormsg.Text = "Error connecting to the server...";
        }
    }

    protected void btnSendMessage_Click(object sender, EventArgs e)
    {
        mbno = txtMobileNumber.Text;//To mobile number
        mseg = txtMessage.Text;//Message

        if ((mbno != "") && (mseg != ""))
        {
            try
            {
                this.req = (HttpWebRequest)WebRequest.Create("http://wwwd.way2sms.com//FirstServletsms?custid=");
                this.req.AllowAutoRedirect = false;
                this.req.CookieContainer = this.cookieCntr;
                this.req.Method = "POST";
                this.req.ContentType = "application/x-www-form-urlencoded";
                this.strNewValue = "custid=undefined&HiddenAction=instantsms&Action=" + responseee + "&login=&pass=&MobNo=" + this.mbno + "&textArea=" + this.mseg;

                string msg = this.mseg;
                string mbeno = this.mbno;

                this.req.ContentLength = this.strNewValue.Length;
                StreamWriter writer = new StreamWriter(this.req.GetRequestStream(), Encoding.ASCII);
                writer.Write(this.strNewValue);
                writer.Close();
                this.response = (HttpWebResponse)this.req.GetResponse();

                this.response.Close();
                lblErrormsg.Text = "Message Sent..... " + mbeno + ": " + msg;
            }
            catch (Exception)
            {
                lblErrormsg.Text = "Error Sending msg....check your connection...";
            }
        }
        else
        {
            lblErrormsg.Text = "Mob no or msg missing";
        }
        //string senderusername = "xxxxx";
        //string senderpassword = "xxxx";
        //string senderid = "xxx";        
        //string sURL;
        //StreamReader objReader;
        //sURL = "http://thundersms.com/smsapps/pushsms.php?username=" + senderusername + "&password=" + senderpassword + "&sender=" + senderid + "&mobile=91" + txtMobileNumber.Text + "&type=1&message=" + txtMessage.Text;
        //WebRequest wrGETURL;
        //wrGETURL = WebRequest.Create(sURL);
        //try
        //{
        //    Stream objStream;
        //    objStream = wrGETURL.GetResponse().GetResponseStream();
        //    objReader = new StreamReader(objStream);
        //    objReader.Close();
        //}
        //catch (Exception ex)
        //{
        //    ex.ToString();
        //}
    }
}