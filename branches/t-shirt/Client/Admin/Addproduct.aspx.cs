using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

public partial class Addproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindCatagory();
            bindColor();
            bindSize();
            bindproduct();
            clearcontrol();
        }

    }

    private void bindproduct()
    {
        var product = eCommerceHelper.Context.ecommerce_Productdetails.Select(a => a);
        ddlProductlist.DataSource = product;
        ddlProductlist.DataTextField = "Product_name";
        ddlProductlist.DataValueField = "Product_id";
        ddlProductlist.DataBind();
        ddlProductlist.Items.Insert(0, new ListItem("-select-", "0"));
    }

    private void bindSize()
    {
        var size = eCommerceHelper.Context.ecommerce_Sizes.Select(a => a);
        ddlSizelist.DataSource = size;
        ddlSizelist.DataTextField = "Size_values";
        ddlSizelist.DataValueField = "Size_id";
        ddlSizelist.DataBind();
        ddlSizelist.Items.Add("others");
        ddlSizelist.Items.Insert(0, new ListItem("-select-", "0"));
    }

    private void bindColor()
    {
        var color = eCommerceHelper.Context.ecommerce_Colors.Select(a => a);
        ddlColorlist.DataSource = color;
        ddlColorlist.DataTextField = "Color";
        ddlColorlist.DataValueField = "Color_id";
        ddlColorlist.DataBind();
        ddlColorlist.Items.Add("others");
        ddlColorlist.Items.Insert(0, new ListItem("-select-", "0"));
    }

    private void clearcontrol()
    {
        bindCatagory();
        txtProductname.Text = string.Empty;
        txtShortdescription.Text = string.Empty;
        txtDescription.Text = string.Empty;
        txtDiscount.Text = string.Empty;
        txtCompany.Text = string.Empty;
    }

    private void bindCatagory()
    {
        var source = eCommerceHelper.Context.ecommerce_Categories.Select(a => a);
        ddlCatagory.DataSource = source;
        ddlCatagory.DataTextField = "Categories";
        ddlCatagory.DataValueField = "Category_id";
        ddlCatagory.DataBind();
        ddlCatagory.Items.Add("others");
        ddlCatagory.Items.Insert(0, new ListItem("-select-", "0"));
    }






    protected void btnPost_Click(object sender, EventArgs e)
    {
        if (fuProductimage.HasFile)
        {
            string path = "~/ProductImage/" + fuProductimage.FileName;
            fuProductimage.SaveAs(Server.MapPath(path));
            int id = Convert.ToInt32(ddlCatagory.SelectedValue);
            ecommerce_ProductdetailBL obj = new ecommerce_ProductdetailBL(txtProductname.Text, id, path, txtDescription.Text, txtShortdescription.Text, DateTime.Now, txtDiscount.Text, txtCompany.Text);
            if (obj.Insert())
            {
                clearcontrol();
            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        ecommerce_CategoryBL obj = new ecommerce_CategoryBL(txtaddCatagory.Text);
        if (obj.Insert())
        {
            bindCatagory();
        }
    }

    protected void ddlColorlist_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlColorlist.SelectedItem.Text == "others")
        {
            txtColor.Visible = true;
            btnColor.Visible = true;
        }
        else
        {
            txtColor.Visible = false;
            btnColor.Visible = false;
        }
    }
    protected void ddlSizelist_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlSizelist.SelectedItem.Text == "others")
        {
            txtSize.Visible = true;
            btnSize.Visible = true;
        }
        else
        {
            txtSize.Visible = false;
            btnSize.Visible = false;
        }
    }
    protected void ddlCatagory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCatagory.SelectedItem.Text == "others")
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
    protected void btnColor_Click(object sender, EventArgs e)
    {
        ecommerce_Color obj = new ecommerce_Color();
        obj.Color = txtColor.Text;
        eCommerceHelper.Context.ecommerce_Colors.InsertOnSubmit(obj);
        eCommerceHelper.Context.SubmitChanges();
        bindColor();
        txtColor.Text = string.Empty;
    }
    protected void btnSize_Click(object sender, EventArgs e)
    {
        ecommerce_Size obj = new ecommerce_Size();
        obj.Size_values = txtSize.Text;
        eCommerceHelper.Context.ecommerce_Sizes.InsertOnSubmit(obj);
        eCommerceHelper.Context.SubmitChanges();
        bindSize();
        txtSize.Text = string.Empty;
    }
    protected void txtSubmit_Click(object sender, EventArgs e)
    {
        if (fuImage.HasFile)
        {
            string path = "~/ProductImage/" + fuImage.FileName;
            fuImage.SaveAs(Server.MapPath(path));
            var source = eCommerceHelper.Context.ecommerce_Productdetails.Where(a => a.Product_id == Convert.ToInt32(ddlProductlist.SelectedValue)).Select(a => a.Pro_Discount).First();
            decimal discount_Price = Convert.ToDecimal(Convert.ToDecimal(txtprice.Text) - (Convert.ToDecimal(txtprice.Text) * (Convert.ToDecimal(Convert.ToInt32(source)) / 100)));
            ecommerce_StockBL obj = new ecommerce_StockBL(Convert.ToInt32(txtStock.Text), Convert.ToInt32(ddlSizelist.SelectedValue), Convert.ToInt32(ddlColorlist.SelectedValue), Convert.ToInt32(ddlProductlist.SelectedValue), discount_Price, path, Convert.ToDecimal(txtprice.Text));
            if (obj.Insert())
            {
                clear();
            }
        }
    }

    private void clear()
    {
        txtprice.Text = string.Empty;
        txtStock.Text = string.Empty;
    }
}