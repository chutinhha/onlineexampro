using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


public partial class ucUpdateProfile : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            using (PhotoProcessingDataContext dataDB = new PhotoProcessingDataContext())
            {
                var emailsub = (from a in dataDB.Photo_CustomerRegistrationDetails where a.Email == Session["email"] select a).FirstOrDefault();
                if (emailsub.Email_Subs == 1)
                {
                    cbEmailPrefer.Checked = true;
                }
                else
                {
                    cbEmailPrefer.Checked = false;
                }
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(5000);
        using (PhotoProcessingDataContext dataDB = new PhotoProcessingDataContext())
        {
            var UpdateRegDetail = (from a in dataDB.Photo_CustomerRegistrationDetails where a.Email == Session["email"] select a).FirstOrDefault();
            if (Request.ContentLength < 2097152)
            {
                string filePath;
                if (!string.IsNullOrEmpty(UpdateRegDetail.Profile_Image))
                {
                    filePath = Server.MapPath(UpdateRegDetail.Profile_Image);
                    if (File.Exists(filePath))
                    {
                        File.Delete(filePath);
                    }
                }
                filePath = Convert.ToString(Session["ProfileImage"]);
                Session["ProfileImage"] = "";
                string[] a = filePath.Split('.');
                if (a[1] == "gif" || a[1] == "png" || a[1] == "jpg")
                {
                    UpdateRegDetail.Profile_Image = filePath;
                }
                else
                {
                    lbResponse.Text = "Invalid Format(Only gif,png,jpg)....!";
                }
            }
            else
            {
                lbResponse.Text = "File size should be less then 2mb!";
            }
            UpdateRegDetail.Mobile = Convert.ToInt64(txtMobile.Text);
            UpdateRegDetail.DOB = Convert.ToDateTime(txtDOB.Text);
            UpdateRegDetail.Country = 1;
            UpdateRegDetail.Email_Subs = 0;
            if (cbEmailPrefer.Checked)
            {
                UpdateRegDetail.Email_Subs = 1;
            }
           
            dataDB.SubmitChanges();
            Response.Redirect("My Profile.aspx");
        }
    }


    protected void fuProfileImage_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
    {
        using (PhotoProcessingDataContext dataDB = new PhotoProcessingDataContext())
        {
            var UpdateRegDetail = (from a in dataDB.Photo_CustomerRegistrationDetails where a.Email == Session["email"] select a).FirstOrDefault();
            string filepath = "~/Images/Profile/" + UpdateRegDetail.Customer_id + fuProfileImage.FileName;
            fuProfileImage.SaveAs(Server.MapPath(filepath));
            Session["ProfileImage"] = filepath;
        }
    }
}