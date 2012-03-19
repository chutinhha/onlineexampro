using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Xml.Linq;

public partial class Personolized : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        IPAddress[] ip = Dns.GetHostAddresses(TextBox1.Text);
        TextBox2.Text = ip[0].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "0")
        {
            Response.Redirect("Positive.aspx");
        }
        else
        {
            Response.Redirect("Negative.aspx");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = Dns.GetHostEntry(TextBox2.Text).HostName;
    }
}
