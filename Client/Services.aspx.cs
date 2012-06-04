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
        if (!IsPostBack)
        {
            //Session["tbl"] = null;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ContentPlaceHolder ContentPlaceHolder1 = (ContentPlaceHolder)Master.FindControl("ContentPlaceHolder1");
        CheckBox chk0 = (CheckBox)ContentPlaceHolder1.FindControl("ContentPlaceHolder1_chk0");
        CheckBox chk = (CheckBox)Page.FindControl("ContentPlaceHolder1_chk0");
        chk = CheckBox1;
        //foreach (Control item in Page.Controls)
        //{
        //    if (item.HasControls())
        //    {
        //        foreach (Control item1 in item.Controls)
        //        {
        //            if (item1 is CheckBox)
        //            {

        //            }
        //        }
        //    }
        //}
    }
}