using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConfirmPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Count = 0;
            tblCon.Visible = false;
        }
    }
    public int Count
    {
        get
        {
            return Convert.ToInt32(ViewState["Count"]);
        }
        set
        {
            ViewState["Count"] = value;
        }
    }
    protected void btnContinue_Click(object sender, EventArgs e)
    {
        Check();
    }

    private void Check()
    {
        var aa = OnlineExamHelper.Context.OnlineRegistrations.Where(a => a.Name == txtName.Text).OrderByDescending(a => a.Date);
        int i = 0;
        foreach (var item in aa)
        {
            if (i == Count)
            {
                Session["cadidate"] = item.UserId;
                lblEmail.Text = item.Email;
                lblMobile.Text = item.Mobile.Value.ToString();
                tblCon.Visible = true;
            }
            i++;
        }
    }
    protected void btnYes_Click(object sender, EventArgs e)
    {
        Session["cadidatename"] = txtName.Text;
        Response.Redirect("View.aspx");
        
    }
    protected void btnNo_Click(object sender, EventArgs e)
    {
        Count++;
        Check();
    }
}