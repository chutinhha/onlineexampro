﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LatestOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string user = Convert.ToString(Session["username"]);
        if (string.IsNullOrEmpty(user))
        {
            Response.Redirect("Home.aspx");
        }
    }
}