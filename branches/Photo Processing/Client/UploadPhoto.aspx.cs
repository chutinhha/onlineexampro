using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UploadPhoto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void fuPhotoUpload_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
    {
        if (fuPhotoUpload.HasFile)
        {
            string fileName = fuPhotoUpload.FileName;
            string filepath = "~/Uploads/" + fileName;
            if (CheckBox1.Checked)
            {
                filepath = "~/Uploads/Adult/" + fileName;
            }
            fuPhotoUpload.SaveAs(Server.MapPath(filepath));
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Services.aspx");
    }
}