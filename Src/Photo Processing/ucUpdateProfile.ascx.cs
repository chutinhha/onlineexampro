using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucUpdateProfile : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            using (PhotoProcessingDataContext dataDB = new PhotoProcessingDataContext())
            {
                var emailsub = (from a in dataDB.Photo_CustomerRegistrationDetails where a.Email == Session["email"] select a).FirstOrDefault();
                if (emailsub.ActivationStatus_Mail == 1)
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
         string Path = "";
         using (PhotoProcessingDataContext dataDB = new PhotoProcessingDataContext())
         {
             var UpdateRegDetail = (from a in dataDB.Photo_CustomerRegistrationDetails where a.Email == Session["email"] select a).FirstOrDefault();
             if (fuProfileImage.HasFile)
             {
                 if (Request.ContentLength < 2097152)
                 {
                     string filename = fuProfileImage.FileName;
                     string[] a = filename.Split('.');
                     if (a[1] == "gif" || a[1] == "png" || a[1] == "jpg")
                     {
                         Path = "~/Images/Profile/" + UpdateRegDetail.Customer_id + fuProfileImage.FileName;
                         fuProfileImage.SaveAs(Server.MapPath(Path));
                         UpdateRegDetail.Profile_Image = Path;
                     }
                     else
                     {
                         lbResponse.Text = "Invalid Format!";
                     }

                 }
                 else
                 {
                     lbResponse.Text = "File size should be less then 2mb!";

                 }
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
         }
    }

  
}