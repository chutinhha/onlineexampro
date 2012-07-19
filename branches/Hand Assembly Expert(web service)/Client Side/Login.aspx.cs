using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie co = Request.Cookies.Get("Credentials");
        string userName = co.Values["UserName"];
        string password = co.Values["Password"];
        if (userName == "admin" && password == "admin")
        {
            Response.Redirect("Home.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string userName = "admin";
        string password = "admin";
        if (userName == "admin" && password == "admin")
        {
            if (CheckBox1.Checked)
            {
                HttpCookie co = new HttpCookie("Credentials");
                co.Expires = DateTime.Now.AddSeconds(20);
                co.Values["UserName"] = userName;
                co.Values["Password"] = password;
                Response.Cookies.Add(co);
            }
            Response.Redirect("Home.aspx");
        }
    }
}