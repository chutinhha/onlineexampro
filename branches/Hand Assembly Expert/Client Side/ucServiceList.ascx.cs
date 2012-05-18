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
        foreach (DataListItem item in das.Items)
        {
            int id = Convert.ToInt32(das.DataKeys[item.ItemIndex]);
            DataList gvr = (DataList)das.Items[item.ItemIndex].FindControl("DataList1");
            DataSet ds1 = new DataSet();
            ds1.ReadXml(Server.MapPath("~/ServiceListSubHeading.xml"));
            DataTable dt = new DataTable();
            dt.Columns.Add("ServiceSubTitle_Content");
            foreach (DataRow item1 in ds1.Tables[0].Rows)
            {
                DataRow drr = dt.NewRow();
                if (Convert.ToInt32(item1[2]) == id)
                {
                    drr[0] = item1[1];
                    dt.Rows.Add(drr);
                }
            }
            gvr.DataSource = dt;
            gvr.DataBind();
        }
    }
    protected void das_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        
    }
}