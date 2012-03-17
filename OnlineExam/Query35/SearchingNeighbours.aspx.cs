using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchingNeighbours : System.Web.UI.Page
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
                var res = QueryHelper.Context.tblLogs.Where(a => a.tblSource.LocationName.Contains(Session["Query"].ToString()) && a.tblSource.FK_TypeId == Convert.ToInt64(Session["Type"]));
                GridView1.DataSource = res;
                GridView1.DataBind();
                if (res.Count() > 0)
                {
                    Session["Count"] = 1;
                }
                else
                {
                    Session["Count"] = 0;
                }
                //foreach (var item in res)
                //{
                //    if (QueryHelper.Context.tblLogs.Count(a => a.FK_SourceId == item.FK_SourceId && a.FK_UserID == QueryHelper.Context.tblUsers.Single(b => b.UserName == Session["UserName"].ToString()).Id) <= 0)
                //    {
                //        var log = new tblLog();
                //        log.FK_SourceId = item.FK_SourceId;
                //        log.FK_UserID = QueryHelper.Context.tblUsers.Single(a => a.UserName == Session["UserName"].ToString()).Id;
                //        log.Date = DateTime.Now;
                //        obj.tblLogs.InsertOnSubmit(log);
                //        obj.SubmitChanges();
                //    }
                //}
            }
        }
    }
}