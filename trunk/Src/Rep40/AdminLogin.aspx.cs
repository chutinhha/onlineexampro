﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session.Abandon();
            Session.Clear();
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtUserName.Text == "admin" && txtPassword.Text == "admin")
        {
            Session["AdminUserName"] = txtUserName.Text;
            Response.Redirect("AdminMain.aspx");
        }
    }
}