﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Instruction : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbuser.Text = Convert.ToString(Session["cadidate"]);
    }
    protected void btnStart_Click(object sender, EventArgs e)
    {
        Response.Redirect("View.aspx");
    }
}