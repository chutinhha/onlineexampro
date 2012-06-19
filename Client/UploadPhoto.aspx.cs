using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

public partial class UploadPhoto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string user = Convert.ToString(Session["username"]);
        if (string.IsNullOrEmpty(user))
        {
            Response.Redirect("Home.aspx");
        }
    }
    protected void fuPhotoUpload_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
    {
        try
        {
            if (fuPhotoUpload.HasFile)
            {
                string fileName = fuPhotoUpload.FileName;
                string filepath = "~/Uploads/" + fileName;
                if (CheckBox1.Checked)
                {
                    filepath = "~/Uploads/Adult/" + fileName;
                }
                Session["filePath"] = filepath;
                //Uri uriSiteRoot = new Uri(Request.Url.GetLeftPart(UriPartial.Authority));
                string ur = Request.Url.AbsoluteUri;
                ur = ur.Substring(0, ur.LastIndexOf('/') + 1);
                var output = string.Format("{0}Uploads/{1}", ur, fileName);
                if (CheckBox1.Checked)
                {
                    output = string.Format("{0}Uploads/Adult/{1}", ur, fileName);
                }
                fuPhotoUpload.SaveAs(Server.MapPath(filepath));
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "image", "top.$get(\"imgPreview\").src='" + output + "';top.$get(\"tbpreview\").style.display='block'", true);
                //Button1.Visible = true;
            }
        }
        catch (Exception ex)
        {

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["filePath"] != null)
        {
            string filePath = Convert.ToString(Session["filePath"]);
            var ss = PhotoProcessingHelper.Context.Photo_CustomerRegistrationDetails.Where(a => a.Email == Convert.ToString(Session["email"])).Select(a => a).FirstOrDefault();
            using (PhotoProcessingDataContext dataDB = new PhotoProcessingDataContext())
            {
                Photo_OrderSummaryDetail obj = new Photo_OrderSummaryDetail();
                obj.ImageUrl = filePath;
                obj.fkCustomer_id = Convert.ToInt64(ss.Customer_id);
                dataDB.Photo_OrderSummaryDetails.InsertOnSubmit(obj);
                dataDB.SubmitChanges();
            }
            Response.Redirect("Services.aspx");
        }
    }
}