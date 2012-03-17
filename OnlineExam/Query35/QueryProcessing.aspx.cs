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
        using (var obj = new QueryDataContext())
        {
            var res = QueryHelper.Context.tblSources.Where(a => a.LocationName.Contains(txtQuery.Text) && a.FK_TypeId == Convert.ToInt64(ddlTypes.SelectedValue));
            GridView1.DataSource = res;
            GridView1.DataBind();
            foreach (var item in res)
            {
                var log = new tblLog();
                log.FK_SourceId = item.Id;
                log.FK_UserID = QueryHelper.Context.tblUsers.Single(a => a.UserName == Session["UserName"].ToString()).Id;
                obj.tblLogs.InsertOnSubmit(log);
                obj.SubmitChanges();
            }
        }
    }
}