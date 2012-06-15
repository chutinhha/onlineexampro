using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class ConfirmOrder : System.Web.UI.Page
{
    private string filePath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] == "" || Session["username"] == null)
            {
                var userid = "";
                var password = "";
                HttpCookie cookie1 = Request.Cookies.Get("PhotoProcessing");
                if (cookie1 != null)
                {
                    userid = cookie1.Values["Userid"];
                    password = cookie1.Values["Password"];
                    using (PhotoProcessingDataContext dataDB = new PhotoProcessingDataContext())
                    {
                        var aa = PhotoProcessingHelper.Context.Photo_CustomerRegistrationDetails.Where(a => a.Email == Convert.ToString(userid)).Select(a => a).FirstOrDefault();
                        if (userid == aa.Email && password == aa.Password)
                        {
                            Session["username"] = aa.Full_Name;
                            Session["email"] = aa.Email;
                            var lastlogin = (from a in dataDB.Photo_CustomerRegistrationDetails where a.Customer_id == aa.Customer_id select a).FirstOrDefault();
                            lastlogin.Last_Login = DateTime.Now;
                            dataDB.SubmitChanges();
                            //Response.Redirect("Home.aspx");
                        }
                    }
                }
            }
            if (Session["username"] != null)
            {
                BindData();
            }

        }
    }

    private void BindData()
    {
        var cus = PhotoProcessingHelper.Context.Photo_CustomerRegistrationDetails.Where(a => a.Email == Convert.ToString(Session["email"])).Select(a => a).First();
        ListView1.DataSource = from a in PhotoProcessingHelper.Context.Photo_OrderSummaryDetails
                               where a.fkCustomer_id == Convert.ToInt32(cus.Customer_id)
                               select
                                   new
                                   {
                                       Id = a.OrderSummary_id,
                                       ImageUrl = a.ImageUrl,
                                       Plane_Name = a.Photo_PlanDetail.Plan_Name,
                                       fkPlan_id = a.Photo_PlanDetail.Rate
                                   };
        ListView1.DataBind();
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Remove")
        {
            long id = Convert.ToInt64(e.CommandArgument);
            using (var obj = new PhotoProcessingDataContext())
            {
                var aa = obj.Photo_OrderSummaryDetails.Single(a => a.OrderSummary_id == id);
                if (string.IsNullOrEmpty(aa.ImageUrl))
                {
                    filePath = Server.MapPath(aa.ImageUrl);
                    if (File.Exists(filePath))
                    {
                        File.Delete(filePath);
                    }
                }
                obj.Photo_OrderSummaryDetails.DeleteOnSubmit(aa);
                obj.SubmitChanges();
            }
            BindData();
        }
    }



    protected void chkPhysicalCopy_CheckedChanged(object sender, EventArgs e)
    {
        //ContentPlaceHolder cph = (ContentPlaceHolder)Master.FindControl("ContentPlaceHolder1");
        //ListView lv = (ListView)cph.FindControl("ListView1");
        //CheckBox chk = (CheckBox)lv.FindControl("chkPhysicalCopy");
        //if (chk.Checked)
        //{
        ClientScript.RegisterStartupScript(this.Page.GetType(), "",
"window.open('Address.aspx','Graph','height=400,width=500');", true);
        //}
    }
}