using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("LoginDetails.xml"));
        ds.Tables[0].Rows[0]["UserName"] = txtUserName.Text; 
        ds.Tables[0].Rows[0]["PassWord"] = txtPassword.Text;
        ds.AcceptChanges();
        ds.WriteXml(Server.MapPath("LoginDetails.xml"));
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("LoginDetails.xml"));
        if ((ds.Tables[0].Rows[0]["UserName"].ToString() == txtUserName.Text) && (ds.Tables[0].Rows[0]["PassWord"].ToString() == txtPassword.Text))
        {

            //UserValid

        }
        else
        {

            //Please check Ur Login Details

        }
    }
}