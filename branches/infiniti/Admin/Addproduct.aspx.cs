using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Addproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            binddropdown();
            clearcontrol();
        }
        createcontrol();
        
    }

    private void clearcontrol()
    {
        binddropdown();
        txtProductname.Text = string.Empty;
        txtShortdescription.Text = string.Empty;
        txtDescription.Text = string.Empty;
        txtPrice.Text = string.Empty;
        txtDiscount.Text = string.Empty;
        txtCompany.Text = string.Empty;
        txtOptioncontent.Text = string.Empty;
        txtOptiontitle.Text = string.Empty;
    }

    private void binddropdown()
    {
        var source = eCommerceHelper.Context.ecommerce_Categories.Select(a => a);
        ddlCatagory.DataSource = source;
        ddlCatagory.DataTextField = "Categories";
        ddlCatagory.DataValueField = "Category_id";
        ddlCatagory.DataBind();
        ddlCatagory.Items.Add("other");
        ddlCatagory.Items.Insert(0, new ListItem("-select-", "0"));
    }

    private void createcontrol()
    {
        if (ddlCatagory.SelectedItem.Text == "other")
        {
            txtaddCatagory.Visible = true;
            btnAdd.Visible = true;
        }
        else
        {
            txtaddCatagory.Visible = false;
            btnAdd.Visible = false;
        }
    }



  
    protected void btnPost_Click(object sender, EventArgs e)
    {
        if(fuProductimage.HasFile)
        {
            string pathtoSavefile = "../ProductImage/"+fuProductimage.FileName;
            string path = "~/ProductImage/" + fuProductimage.FileName;
            fuProductimage.SaveAs(Server.MapPath(path));
             int id = Convert.ToInt32(ddlCatagory.SelectedValue);
             ecommerce_ProductdetailBL obj = new ecommerce_ProductdetailBL(txtProductname.Text,id,Convert.ToInt32(txtPrice.Text),ddlStatus.SelectedItem.Text,path,txtDescription.Text,txtShortdescription.Text,DateTime.Now,txtDiscount.Text,txtCompany.Text,ddlHaveoption.SelectedItem.Text,txtOptiontitle.Text,txtOptioncontent.Text);
             if (obj.Insert())
             {
                 clearcontrol();
             }
        }
    }
    protected void ddlHaveoption_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlHaveoption.SelectedItem.Text == "no")
        {
            lbOptiontitle.Visible = false;
            lbOptioncontent.Visible = false;
            txtOptiontitle.Visible = false;
            txtOptioncontent.Visible = false;
        }
        else
        {
            lbOptiontitle.Visible = true;
            lbOptioncontent.Visible = true;
            txtOptiontitle.Visible = true;
            txtOptioncontent.Visible = true;

        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        ecommerce_CategoryBL obj = new ecommerce_CategoryBL(txtaddCatagory.Text);
        if (obj.Insert())
        {
            binddropdown();
        }
    }
}