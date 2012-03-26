using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

public partial class registration : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
       
        //if (Session["accept"] == "1")
        //{
        //    btnsubmit.Enabled = true;
        //}
        //else
        //{
        //    btnsubmit.Enabled = false;
        //}

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        using (OnlineExamDataContext obj1 = new OnlineExamDataContext())
        {
            var number = OnlineExamHelper.Context.OnlineRegistrations.Where(a => a.Name == Convert.ToString(txtname.Text) && a.Mobile == Convert.ToInt64(txtmobile.Text)).Select(a => a.UserId);
            if (number.Count() >= 1)
            {
                lbregister.Text = "Already exists";
            }
            else
            {
                RegistrationBL obj = new RegistrationBL(txtname.Text, Convert.ToInt64(txtmobile.Text), txtemail.Text, DateTime.Now);
                if (obj.Insert())
                {
                    Session["cadidatename"] = obj.Name;
                    Session["cadidate"] = obj.UserId;
                    Session["admin"] = null;
                    var dd = OnlineExamHelper.Context.OnlineAssignDetails.Select(a => a);
                    foreach (var item in dd)
                    {
                        Session["TimeLeft"] = item.TimeLeft;
                        Session["timeDuration"] = item.TimeDuration;
                        var ss = OnlineExamHelper.Context.OnlineCateCounts.Where(a => a.FK_AsDeID.Value == item.Id);
                        Dictionary<long, int> dic = new Dictionary<long, int>();
                        foreach (var item1 in ss)
                        {
                            dic.Add(item1.FK_CateId.Value, item1.Count.Value);
                        }
                        Session["cat"] = dic;
                    }

                    Response.Redirect("Instruction.aspx");
                }
            }
        }

    }


}