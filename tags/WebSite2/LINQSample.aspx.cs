using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LINQSample : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (var obj = new DataClassesDataContext())
        {
            //if (obj.tblSamples.Count(a => a.Name == "admin") > 0)
            if ((from a in obj.tblSamples where a.Name == "admin" select a).Any())
            {

            }
            else
            {
                var tbl = new tblSample {Name = "tedst"};
                obj.tblSamples.InsertOnSubmit(tbl);
                obj.SubmitChanges();
            }
        }
        using (var obj = new DataClassesDataContext())
        {
            var tbl = obj.tblSamples.Single(a => a.Name == "admin");
            //var tbl1 = obj.tblSamples.Where(a => a.Name == "admin");
            //foreach (var tt in tbl1)
            //{

            //}
            tbl.Name = "tedst";
            if (obj.GetChangeSet().Updates.Count > 0)
            {
                obj.SubmitChanges();
            }
        }
        using (var obj = new DataClassesDataContext())
        {
            var tbl = obj.tblSamples.Single(a => a.Name == "admin");
            if (obj.GetChangeSet().Deletes.Count > 0)
            {
                obj.tblSamples.DeleteOnSubmit(tbl);
                obj.SubmitChanges();
            }
        }
    }
}