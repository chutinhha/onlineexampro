using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{
    static string login_id = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            EncryptedQueryString args = new EncryptedQueryString(Request.QueryString["args"]);
            foreach (var arg in args)
            {
                Label label = new Label();
                label.Text = String.Format("{0}={1}", arg.Key, HttpUtility.HtmlEncode(arg.Value));
                login_id = label.Text;
            }
            string[] b = login_id.Split('=');
            login_id = b[1];
        }

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        using (PhotoProcessingDataContext dataDB=new PhotoProcessingDataContext())
        {
            var counter = from a in dataDB.Photo_CustomerRegistrationDetails where a.Email == login_id select a;
            var update = counter.FirstOrDefault();
            Photo_Change_Password_logBL obj = new Photo_Change_Password_logBL(txtNewpassword.Text, update.Password, DateTime.Now, update.Customer_id);
            obj.Insert();
            update.Password = txtNewpassword.Text;
            dataDB.SubmitChanges();
        }
    }
}