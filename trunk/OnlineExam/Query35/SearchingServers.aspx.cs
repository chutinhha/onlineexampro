using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchingServers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            using (var obj = new QueryDataContext())
            {
                var res = QueryHelper.Context.tblSources.Where(a => a.LocationName.Contains(Session["Query"].ToString()) && a.FK_TypeId == Convert.ToInt64(Session["Type"]));
                GridView1.DataSource = res;
                GridView1.DataBind();
                foreach (var item in res)
                {
                    if (QueryHelper.Context.tblLogs.Count(a => a.FK_SourceId == item.Id && a.FK_UserID == QueryHelper.Context.tblUsers.Single(b => b.UserName == Session["UserName"].ToString()).Id) <= 0)
                    {
                        var log = new tblLog();
                        log.FK_SourceId = item.Id;
                        log.FK_UserID = QueryHelper.Context.tblUsers.Single(a => a.UserName == Session["UserName"].ToString()).Id;
                        log.Date = DateTime.Now;
                        obj.tblLogs.InsertOnSubmit(log);
                        obj.SubmitChanges();
                    }
                }
            }
        }
    }
}