using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ResetPassword : System.Web.UI.Page
{
    static string login_id = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                EncryptedQueryString args = new EncryptedQueryString(Request.QueryString["args"]);
                if (args.Count < 1)
                {
                    btnReset.Enabled = false;
                    throw new Exception("Invalid User!");
                }
                foreach (var arg in args)
                {
                    Label label = new Label();
                    label.Text = String.Format("{0}={1}", arg.Key, HttpUtility.HtmlEncode(arg.Value));
                    login_id = label.Text;
                }
                if (login_id == "")
                {
                    btnReset.Enabled = false;
                    throw new Exception("Invalid User!");
                }
                string[] b = login_id.Split('=');
                login_id = b[1];
            }
            catch (Exception ex)
            {
                lbResponse.ForeColor = System.Drawing.ColorTranslator.FromHtml("#CC0000");
                lbResponse.Text = ex.Message;
            }
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        var updatePwd = InfinitiHelper.Context.Infiniti_CustomerRegistrations.Where(a => a.Email == login_id).Select(a => a).FirstOrDefault();
        updatePwd.Password = txtNewpassword.Text;
        var Counter = InfinitiHelper.Context.Infiniti_Change_pwd_logs.Where(a => a.fkCustomer_id == updatePwd.Customer_id).Select(a => a);
        if (Counter.Count() == 0)
        {
            ecommerce_Change_pwd_logBL obj = new ecommerce_Change_pwd_logBL(txtNewpassword.Text, updatePwd.Password, DateTime.Now, updatePwd.Customer_id);
            obj.Insert();
        }
        else
        {
            var UpdateChangePwd = Counter.FirstOrDefault();
            UpdateChangePwd.old_pwd = UpdateChangePwd.New_pwd;
            UpdateChangePwd.New_pwd = txtNewpassword.Text;
            InfinitiHelper.Context.SubmitChanges();
        }
        InfinitiHelper.Context.SubmitChanges();
        lbResponse.Text = "Reset Successfully!";

    }
}