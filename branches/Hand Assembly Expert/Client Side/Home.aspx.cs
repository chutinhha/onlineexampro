using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string scr=Server.MapPath("ServiceListHeading.xml");
        if (!IsPostBack)
        {
           DataSet ds = new DataSet();
            ds.ReadXml(scr);
            dlServiceList.DataSource = ds;
            dlServiceList.DataBind();
        }
    }

    protected void dlServiceList_Load(object sender, EventArgs e)
    {

    }
}