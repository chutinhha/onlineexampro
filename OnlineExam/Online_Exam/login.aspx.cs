using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using System.Data;
using System.Data.SqlClient;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        using (OnlineExamDataContext obj = new OnlineExamDataContext())
        {

            var login = from c in obj.OnlineRegistrations where c.Name == txtname.Text && c.Mobile == Convert.ToInt64(txtpassword.Text) select c;

            if (login.Count()!=0)
            {
               
                Session["cadidate"] = txtname.Text;
                Response.Redirect("Instruction.aspx");
            }
            else
            {
                lbLogin.Text = "username & password not valid";
            }
        }
     
    }
}