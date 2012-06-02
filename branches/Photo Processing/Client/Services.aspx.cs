using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

public partial class Services : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach (Control item in Page.Controls)
        {
            if (item.HasControls())
            {
                foreach (Control item1 in item.Controls)
                {
                    if (item1 is CheckBox)
                    {

                    }
                }
            }
        }
    }
}