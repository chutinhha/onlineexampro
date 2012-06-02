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
        string filePath = Convert.ToString(Session["filePath"]);
        Response.Redirect("Services.aspx");
    }
}