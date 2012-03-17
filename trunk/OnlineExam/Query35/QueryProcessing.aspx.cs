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
        using (var obj = new QueryDataContext())
        {
            GridView1.DataSource = QueryHelper.Context.tblSources.Where(a => a.LocationName.Contains(txtQuery.Text) && a.FK_TypeId == Convert.ToInt64(ddlTypes.SelectedValue));
            GridView1.DataBind();
        }
    }
}