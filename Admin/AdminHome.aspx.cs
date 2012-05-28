using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (PhotoProcessingDataContext dataDB = new PhotoProcessingDataContext())
        {
            if (!IsPostBack)
            {

                BindDropDown();
            }

        }

    }
    private void BindDropDown()
    {

        ddlCategories.DataSource = PhotoProcessingHelper.Context.sp_Photo_PlanDetailNewSelectCommand();
        ddlCategories.DataTextField = "Plan_Name";
        ddlCategories.DataValueField = "Plan_id";
        ddlCategories.DataBind();
        ddlCategories.Items.Add("other");
        ddlCategories.Items.Insert(0, new ListItem("-select-", "0"));


    }
    protected void ddlCategories_SelectedIndexChanged(object sender, EventArgs e)
    {
        addcategory();
    }
    private void addcategory()
    {
        if (ddlCategories.SelectedItem.Text == "other")
        {
            txtCateADD.Visible = true;
            txtRate.Visible = true;
            btnADD.Visible = true;
            lbCateName.Visible = true;
            lbRate.Visible = true;
        }
        else
        {
            txtCateADD.Visible = false;
            txtRate.Visible = false;
            btnADD.Visible = false;
            lbRate.Visible = false;
            lbCateName.Visible = false;
        }
    }
    protected void btnADD_Click(object sender, EventArgs e)
    {
        Photo_PlanDetailBL obj = new Photo_PlanDetailBL(txtCateADD.Text, Convert.ToDecimal(txtRate.Text));
        if (obj.Insert())
        {

        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Photo_SubCatagoryDetailBL obj = new Photo_SubCatagoryDetailBL(txtSubCategories.Text, Convert.ToInt32(ddlCategories.SelectedValue));
        if (obj.Insert())
        {
            
        }
    }
}