using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDropdown();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        using (var obj = new QueryDataContext())
        {
            var source = new tblSource();
            source.FK_TypeId = Convert.ToInt64(ddlTypes.SelectedValue);
            source.Latitude = Convert.ToDecimal(lblLatitude.Text);
            source.LocationName = lblLocation.Text;
            source.Lontitude = Convert.ToDecimal(lblLontidude.Text);
            obj.tblSources.InsertOnSubmit(source);
            obj.SubmitChanges();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (var obj = new QueryDataContext())
        {
            var ty = new tblType();
            ty.TypeName = txtType.Text;
            obj.tblTypes.InsertOnSubmit(ty);
            obj.SubmitChanges();
        }
        BindDropdown();
    }

    private void BindDropdown()
    {
        ddlTypes.DataSource = QueryHelper.Context.tblTypes.Select(a => a);
        ddlTypes.DataTextField = "TypeName";
        ddlTypes.DataValueField = "Id";
        ddlTypes.DataBind();
        ddlTypes.Items.Insert(0, new ListItem("-Select-", "0"));
    }
}