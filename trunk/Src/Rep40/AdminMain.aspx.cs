using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminUserName"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        using (var obj = new OntologyDataContext())
        {
            var per = new tblPerson();
            per.Category = Convert.ToInt32(RadioButtonList1.SelectedValue);
            per.HostName = txtHost.Text;
            per.IPAddress = txtIP.Text;
            obj.tblPersons.InsertOnSubmit(per);
            obj.SubmitChanges();
        }
    }
}