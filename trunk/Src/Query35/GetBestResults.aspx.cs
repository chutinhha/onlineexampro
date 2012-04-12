using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GetBestResults : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            int i = Convert.ToInt32(Session["Count"]);
            if (i == 1)
            {
                var bb = QueryHelper.Context.tblSources.Where(a => a.LocationName.Contains(Session["Query"].ToString()) && a.FK_TypeId == Convert.ToInt64(Session["Type"]));
                foreach (var item in bb)
                {
                    RadioButtonList1.Items.Add(item.LocationName);
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["From"] = HiddenField1.Value;
        foreach (ListItem item in RadioButtonList1.Items)
        {
            if (item.Selected)
            {
                Session["To"] = item.Text;
            }
        }
        Response.Redirect("Result.aspx");
    }
}