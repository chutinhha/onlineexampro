using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QueryProcessing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            BindDropdown();
        }
    }
    private void BindDropdown()
    {
        ddlTypes.DataSource = QueryHelper.Context.tblTypes.Select(a => a);
        ddlTypes.DataTextField = "TypeName";
        ddlTypes.DataValueField = "Id";
        ddlTypes.DataBind();
        ddlTypes.Items.Insert(0, new ListItem("-Select-", "0"));
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Query"] = txtQuery.Text;
        Session["Type"] = ddlTypes.SelectedValue;
        Response.Redirect("SearchingNeighbours.aspx");        
    }
}