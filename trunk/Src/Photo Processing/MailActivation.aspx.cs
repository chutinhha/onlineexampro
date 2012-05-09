using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MailActivation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string login_id=string.Empty;
            EncryptedQueryString args = new EncryptedQueryString(Request.QueryString["args"]);
            foreach (var arg in args)
            {
                Label label = new Label();
                label.Text = String.Format("{0}={1}", arg.Key, HttpUtility.HtmlEncode(arg.Value));
               login_id = label.Text;
            }
            string []b=login_id.Split('=');
            login_id=b[1];
            using (PhotoProcessingDataContext dataDB = new PhotoProcessingDataContext())
            {
                var account = (from a in dataDB.Photo_CustomerRegistrationDetails where a.Email == login_id select a).FirstOrDefault();
                account.ActivationStatus_Mail = 1;
                dataDB.SubmitChanges();
            }
        }
    }
}