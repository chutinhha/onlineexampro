using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDropDown();
            BindGrid();
        }
    }

    private void BindGrid()
    {
        var ss = PhotoProcessingHelper.Context.Photo_PlanDetails.Select(a => a);
        //DataTable dt = new DataTable();
        //dt.Columns.Add("Sno", typeof(int));
        //dt.Columns.Add("Plan", typeof(string));
        //dt.Columns.Add("Rate", typeof(decimal));
        //dt.Columns.Add("id", typeof(int));
        //int i = 1;
        //foreach (var item in ss)
        //{
        //    DataRow dr = dt.NewRow();
        //    dr["Sno"] = i;
        //    dr["Plan"] = item.Plan_Name;
        //    dr["Rate"] = item.Rate;
        //    dr["id"] = item.Plan_id;
        //    dt.Rows.Add(dr);
        //    i++;
        //}
        Grid.DataSource = ss;
        Grid.DataBind();
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
            clearControl();
            BindGrid();
        }
    }

    private void clearControl()
    {
        txtCateADD.Text = "";
        txtRate.Text = "";
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Photo_SubCatagoryDetailBL obj = new Photo_SubCatagoryDetailBL(txtSubCategories.Text, Convert.ToInt32(ddlCategories.SelectedValue));
        if (obj.Insert())
        {
            txtSubCategories.Text = "";
            BindGrid();
        }
    }
    protected void Grid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        Grid.EditIndex = -1;
        BindGrid();
    }
    protected void Grid_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)Grid.Rows[e.RowIndex];
        TextBox txtPlan = (TextBox)row.FindControl("txtPlanName");
        TextBox txtRate = (TextBox)row.FindControl("txtRate");
        Label lbSno = (Label)row.FindControl("lbSno");
        Grid.EditIndex = -1;
        Photo_PlanDetailBL obj = new Photo_PlanDetailBL(Convert.ToInt32(lbSno.Text), txtPlan.Text, Convert.ToDecimal(txtRate.Text));
        if (obj.Update())
        {
            BindGrid();
        }
    }
    protected void Grid_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)Grid.Rows[e.RowIndex];
        Label lbid = (Label)row.FindControl("lbSno");
        Photo_PlanDetailBL obj = new Photo_PlanDetailBL(Convert.ToInt32(lbid.Text));
        var ss = PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.Where(a => a.FkPlan_id == Convert.ToInt32(lbid.Text)).Select(a => a);
        PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.DeleteAllOnSubmit(ss);
        if (obj.Delete())
        {
            BindGrid();
        }
    }
    protected void Grid_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Grid.EditIndex = e.NewEditIndex;
    }
    protected void GridSubtitle_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridView gv = (GridView)sender;
        int id = Convert.ToInt32(gv.DataKeys[e.RowIndex].Values[0]);
        Photo_SubCatagoryDetailBL obj = new Photo_SubCatagoryDetailBL(id);
        if (obj.Delete())
        {
            BindGrid();
        }
    }
    protected void Grid_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        foreach (GridViewRow item in Grid.Rows)
        {
            GridView Gridview1 = (GridView)item.FindControl("GridSubtitle");
            int id = Convert.ToInt32(Grid.DataKeys[item.RowIndex].Values[0]);
            var ss = PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.Where(a => a.FkPlan_id == id).Select(a => a);
            Gridview1.DataSource = ss;
            Gridview1.DataBind();
        }
    }
}