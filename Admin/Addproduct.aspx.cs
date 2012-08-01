using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class Admin_AddProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            BindDDL();
            txtDiscount.Text = "0";
        }
    }

    private void BindDDL()
    {
        BindCatagory();

        BindSize();
        BindColor();
    }

    private void BindSubCatagoryWomen()
    {
        ddlSubCatagory.DataSource = InfinitiHelper.Context.Infiniti_SubCatarories.Where(a => a.fkCatagory_id == 2).Select(a => a);
        ddlSubCatagory.DataValueField = "SubCatagory_id";
        ddlSubCatagory.DataTextField = "SubCatagory_Name";
        ddlSubCatagory.DataBind();
    }

    private void BindColor()
    {
        ddlColor.DataSource = InfinitiHelper.Context.Infiniti_ColorDetails.Select(a => a);
        ddlColor.DataTextField = "Color_Name";
        ddlColor.DataValueField = "Color_id";
        ddlColor.DataBind();
        ddlColor.Items.Add("others");
        ddlColor.Items.Insert(0, new ListItem("-select-", "0"));
    }

    private void BindSize()
    {
        ddlSize.DataSource = InfinitiHelper.Context.Infiniti_SizeDetails.Select(a => a);
        ddlSize.DataTextField = "Size_Name";
        ddlSize.DataValueField = "Size_id";
        ddlSize.DataBind();
        ddlSize.Items.Add("others");
        ddlSize.Items.Insert(0, new ListItem("-select-", "0"));
    }

    private void BindDesign()
    {
        if (ddlCatagory.SelectedValue == "1")
        {
            ddlDesignName.DataSource = InfinitiHelper.Context.Infiniti_DesignDetails.Where(a => a.fkSubCatagory_id != 3).Select(a => a);
            ddlDesignName.DataTextField = "Design_Name";
            ddlDesignName.DataValueField = "Design_id";
            ddlDesignName.DataBind();
            ddlDesignName.Items.Add("others");
            ddlDesignName.Items.Insert(0, new ListItem("-select-", "0"));
        }
        else
        {
            ddlDesignName.DataSource = InfinitiHelper.Context.Infiniti_DesignDetails.Where(a => a.fkSubCatagory_id == 3).Select(a => a);
            ddlDesignName.DataTextField = "Design_Name";
            ddlDesignName.DataValueField = "Design_id";
            ddlDesignName.DataBind();
            ddlDesignName.Items.Add("others");
            ddlDesignName.Items.Insert(0, new ListItem("-select-", "0"));
        }

    }

    private void BindSubCatagory()
    {
        ddlSubCatagory.DataSource = InfinitiHelper.Context.Infiniti_SubCatarories.Where(a => a.fkCatagory_id == 1).Select(a => a);
        ddlSubCatagory.DataValueField = "SubCatagory_id";
        ddlSubCatagory.DataTextField = "SubCatagory_Name";
        ddlSubCatagory.DataBind();
        ddlSubCatagory.Items.Add("others");
        ddlSubCatagory.Items.Insert(0, new ListItem("-select-", "0"));
    }

    private void BindCatagory()
    {
        ddlCatagory.DataSource = InfinitiHelper.Context.Infiniti_CatagoryDetails.Select(a => a);
        ddlCatagory.DataValueField = "Catagory_id";
        ddlCatagory.DataTextField = "Catagory_Name";
        ddlCatagory.DataBind();
        ddlCatagory.Items.Add("others");
        ddlCatagory.Items.Insert(0, new ListItem("-select-", "0"));
    }
    protected void btnAddCatagory_Click(object sender, EventArgs e)
    {
        InfinitiHelper.Context.sp_Infiniti_CatagoryDetailNewInsertCommand(txtCatagory.Text, DateTime.Now);
        txtCatagory.Text = string.Empty;
        BindCatagory();
    }
    protected void ddlCatagory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCatagory.SelectedItem.Text == "others")
        {
            otherCatagory.Visible = true;
        }
        else
        {
            otherCatagory.Visible = false;
        }
        if (ddlCatagory.SelectedValue == "1")
        {
            BindSubCatagory();
            BindDesign();
        }
        else if (ddlCatagory.SelectedValue == "2")
        {
            otherSubCatagory.Visible = false;
            BindSubCatagoryWomen();
            BindDesign();
        }
    }
    protected void btnAddSubCatagory_Click(object sender, EventArgs e)
    {
        InfinitiHelper.Context.sp_Infiniti_SubCataroryNewInsertCommand(Convert.ToString(txtSubCatagory.Text), Convert.ToInt32(ddlCatagory.SelectedValue), DateTime.Now);
        txtSubCatagory.Text = string.Empty;
        BindSubCatagory();
    }
    protected void ddlSubCatagory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlSubCatagory.SelectedItem.Text == "others")
        {
            otherSubCatagory.Visible = true;
        }
        else
        {
            otherSubCatagory.Visible = false;
        }
    }
    protected void btnAddDesign_Click(object sender, EventArgs e)
    {
        InfinitiHelper.Context.sp_Infiniti_DesignDetailNewInsertCommand(txtDesignName.Text, Convert.ToInt32(ddlSubCatagory.SelectedValue), DateTime.Now);
        txtDesignName.Text = string.Empty;
        BindDesign();
    }
    protected void ddlDesignName_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlDesignName.SelectedItem.Text == "others")
        {
            otherDesign.Visible = true;
        }
        else
        {
            otherDesign.Visible = false;
        }
    }
    protected void btnSize_Click(object sender, EventArgs e)
    {
        InfinitiHelper.Context.sp_Infiniti_SizeDetailNewInsertCommand(txtSize.Text, DateTime.Now);
        txtSize.Text = string.Empty;
        BindSize();
    }
    protected void ddlSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlSize.SelectedItem.Text == "others")
        {
            otherSize.Visible = true;
        }
        else
        {
            otherSize.Visible = false;
        }
    }
    protected void btnAddColor_Click(object sender, EventArgs e)
    {
        string path = "";
        string extention = Path.GetExtension(fuColor.PostedFile.FileName);
        path = "~/Images/Color/" + txtColor.Text + extention;
        fuColor.SaveAs(Server.MapPath("../Images/Color/" + txtColor.Text + extention));
        InfinitiHelper.Context.sp_Infiniti_ColorDetailNewInsertCommand(txtColor.Text, path, DateTime.Now);
        txtColor.Text = string.Empty;
        BindColor();
    }
    protected void ddlColor_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlColor.SelectedItem.Text == "others")
        {
            otherColor.Visible = true;
        }
        else
        {
            otherColor.Visible = false;
        }
    }
    protected void txtDiscount_TextChanged(object sender, EventArgs e)
    {
        lbDisPrice.Text = Convert.ToString(Convert.ToDecimal(Convert.ToDecimal(txtPrice.Text) - (Convert.ToDecimal(txtPrice.Text) * (Convert.ToDecimal(Convert.ToInt32(txtDiscount.Text)) / 100))));
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string pathSmall = "";
        string pathLarge = "";
        string extention1 = Path.GetExtension(fuSmall.PostedFile.FileName);
        string extention2 = Path.GetExtension(fuLarge.PostedFile.FileName);
        pathSmall = "Images/Product/Small/" + ddlDesignName.SelectedItem.Text + "_" + ddlColor.SelectedItem.Text + "_" + ddlSize.SelectedItem.Text + "_Small" + extention1;
        pathLarge = "Images/Product/Large/" + ddlDesignName.SelectedItem.Text + "_" + ddlColor.SelectedItem.Text + "_" + ddlSize.SelectedItem.Text + "_Large" + extention2;
        fuSmall.SaveAs(MapPath("../Images/Product/Small/" + ddlDesignName.SelectedItem.Text + "_" + ddlColor.SelectedItem.Text + "_" + ddlSize.SelectedItem.Text + "_Small" + extention1));
        fuLarge.SaveAs(MapPath("../Images/Product/Large/" + ddlDesignName.SelectedItem.Text + "_" + ddlColor.SelectedItem.Text + "_" + ddlSize.SelectedItem.Text + "_Large" + extention2));
        InfinitiHelper.Context.sp_Infiniti_ProductDetailNewInsertCommand(Convert.ToInt32(ddlDesignName.SelectedValue), Convert.ToInt32(ddlColor.SelectedValue), Convert.ToInt32(ddlSize.SelectedValue), null, Convert.ToInt32(txtStock.Text), pathSmall, pathLarge, Convert.ToDecimal(txtPrice.Text), Convert.ToDecimal(lbDisPrice.Text), Convert.ToInt32(txtDiscount.Text), txtShortDiscrition.Text, txtDiscription.Text, DateTime.Now);
        EmptyTextBoxes(this);
        lbDisPrice.Text = "";
    }
    protected void txtPrice_TextChanged(object sender, EventArgs e)
    {
        lbDisPrice.Text = Convert.ToString(Convert.ToDecimal(Convert.ToDecimal(txtPrice.Text) - (Convert.ToDecimal(txtPrice.Text) * (Convert.ToDecimal(Convert.ToInt32(txtDiscount.Text)) / 100))));

    }
    public void EmptyTextBoxes(Control parent)
    {
        // Loop through all the controls on the page
        foreach (Control c in parent.Controls)
        {
            // Check and see if it's a textbox
            if (c is TextBox)
            {
                TextBox textBox = c as TextBox;
                // Since its a textbox clear out the text  
                if (c != txtDiscount)
                {
                    ((TextBox)(c)).Text = "";
                }

            }
            // Now we need to call itself (recursive) because
            // all items (Panel, GroupBox, etc) is a container
            // so we need to check all containers for any
            // textboxes so we can clear them
            if (c.HasControls())
            {
                EmptyTextBoxes(c);
            }
        }
    }
}