using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_QuestionPosting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlCatagory.Items.Add("other");
            ddlCatagory.Items.Insert(0, new ListItem("-select-", "0"));
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

    }
    protected void ddlCatagory_SelectedIndexChanged(object sender, EventArgs e)
    {
        addtopics();
        
    }

    private void addtopics()
    {
        if (ddlCatagory.SelectedItem.Text == "other")
        {
            txtAdd.Visible = true;
            btnAdd.Visible = true;
        }
        else
        {
            txtAdd.Visible = false;
            btnAdd.Visible = false;
        }
    }

}