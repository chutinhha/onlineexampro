using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ucServiceList : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }

    private void BindGrid()
    {
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("~/ServiceListHeading.xml"));
        das.DataSource = ds.Tables[0];
        das.DataBind();
    }
    protected void das_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        foreach (DataListItem item in das.Items)
        {
            int id = Convert.ToInt32(das.DataKeys[item.ItemIndex]);
            GridView gvr = (GridView)das.Items[item.ItemIndex].FindControl("GridView1");
            DataSet ds1 = new DataSet();
            ds1.ReadXml(Server.MapPath("~/ServiceListSubHeading.xml"));
            DataRow[] dr = ds1.Tables[0].Select("fk_Servicehead_id=" + id);
            gvr.DataSource = dr;
            gvr.DataBind();
        }
    }
}