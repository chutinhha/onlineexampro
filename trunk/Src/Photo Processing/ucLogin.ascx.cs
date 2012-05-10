using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucLogin : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        
        using (PhotoProcessingDataContext dataDB = new PhotoProcessingDataContext())
        {
            var counter = from a in dataDB.Photo_CustomerRegistrationDetails where a.Email == txtEmail.Text && a.Password == txtPassword.Text select a;
            if (counter.Count() == 1)
            {
                var checkAcivation = counter.FirstOrDefault();
                if (checkAcivation.ActivationStatus_Mail==1)
                {
                    //ContentPlaceHolder ph = (ContentPlaceHolder)Page.Master.FindControl("ContentPlaceHolder1");
                    
                    //FormView fv = (FormView)ph.FindControl("form1");
                    //UpdatePanel up = (UpdatePanel)fv.FindControl("UpdatePanel1");
                    //LinkButton lbtnLoginfind = (LinkButton)up.FindControl("lbtnLogin");
                    //LinkButton lbtnLogoutfind = (LinkButton)up.FindControl("lbtnLogout");
                    //lbtnLogoutfind.Visible = true;
                    //lbtnLoginfind.Visible = false;
                   

                    Session["username"] = checkAcivation.Full_Name;
                    Session["email"]=checkAcivation.Email;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    lbResponse.ForeColor = System.Drawing.ColorTranslator.FromHtml("#006600");
                    lbResponse.Text = "We had sent mail to your Email Id Verify it..!";
                }
            }
            else
            {
                lbResponse.Text = "Invalid Login!";
            }
        }
    }
}