using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_View_Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("loginAdmin.aspx");
        }
        if (!IsPostBack)
        {
            GridView1.DataSource = from a in OnlineExamHelper.Context.OnlineResults
                                   select new
                                   {
                                       Name = a.OnlineRegistration.Name,
                                       TotalMark = a.TotalMark
                                   };
            GridView1.DataBind();
        }
    }
}