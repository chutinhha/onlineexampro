using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

public partial class Admin : System.Web.UI.Page
{
    public string sr, st;
    protected void Page_Load(object sender, EventArgs e)
    {
        sr = Server.MapPath("ServiceListHeading.xml");
        st = Server.MapPath("ServiceListSubHeading.xml");
        if (!IsPostBack)
        {
            if (File.Exists(sr) != true)
            {
                createServiceHeadingxml();
            }
            BindDropDown();
        }

    }

    private void BindDropDown()
    {

        DataSet ds = new DataSet();
        ds.ReadXml(sr);
        DataTable td = ds.Tables[0];
        
        if (ds.Tables.Count != 0)
        {
            ddlServiceHead.DataSource = ds;
            ddlServiceHead.DataTextField = "Servicehead_title";
            ddlServiceHead.DataValueField = "Servicehead_id";
            ddlServiceHead.DataBind();
        }
        ddlServiceHead.Items.Add("other");
        ddlServiceHead.Items.Insert(0, new ListItem("-Select-"));


    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int a;
        DataSet ds = new DataSet();
        ds.ReadXml(sr);
        if (ds.Tables.Count <= 0)
        {
            DataTable tb = new DataTable("ServiceHead");
            tb.Columns.Add("Servicehead_id", Type.GetType("System.Int32"));
            tb.Columns.Add("Servicehead_title", Type.GetType("System.String"));
            DataRow dr = tb.NewRow();
            dr[0] = 1;
            dr[1] = Convert.ToString(txtTitle.Text);
            tb.Rows.Add(dr);
            tb.WriteXml(sr);
        }
        else
        {
            DataRow dr = ds.Tables[0].NewRow();
            if (ds.Tables[0].Compute("Max(Servicehead_id)", "") == null)
            {
                a = 0;
            }
            a = Convert.ToInt32(ds.Tables[0].Compute("Max(Servicehead_id)", "")) + 1;
            dr[0] = a;
            dr[1] = Convert.ToString(txtTitle.Text);
            ds.Tables[0].Rows.Add(dr);
            ds.WriteXml(sr);
        }
        BindDropDown();
    }

    private void createServiceHeadingxml()
    {
        DataTable tb = new DataTable("ServiceHead");
        //tb.Columns.Add("Servicehead_id", Type.GetType("System.Int32"));
        //tb.Columns.Add("Servicehead_title", Type.GetType("System.String"));
        String sr = Server.MapPath("ServiceListHeading.xml");
        tb.WriteXml(sr);
        DataTable tb1 = new DataTable("ServiceSubTitle");
        //tb1.Columns.Add("ServiceSubTitle_id", Type.GetType("System.Int32"));
        //tb1.Columns.Add("ServiceSubTitle_Content", Type.GetType("System.String"));
        //tb1.Columns.Add("fk_Servicehead_id", Type.GetType("System.Int32"));
        String st = Server.MapPath("ServiceListSubHeading.xml");
        tb1.WriteXml(st);
    }
    protected void ddlServiceHead_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlServiceHead.SelectedItem.Text == "other")
        {
            txtTitle.Visible = true;
            btnAdd.Visible = true;
        }
        else
        {
            txtTitle.Visible = false;
            btnAdd.Visible = false;
        }
    }
    protected void btnSubmitTitle_Click(object sender, EventArgs e)
    {
        int a;
        DataSet ds = new DataSet();
        ds.ReadXml(st);
        if (ds.Tables.Count <= 0)
        {
            DataTable tb = new DataTable("ServiceSubTitle");
            tb.Columns.Add("ServiceSubTitle_id", Type.GetType("System.Int32"));
            tb.Columns.Add("ServiceSubTitle_Content", Type.GetType("System.String"));
            tb.Columns.Add("fk_Servicehead_id", Type.GetType("System.Int32"));
            DataRow dr = tb.NewRow();
            dr[0] = 1;
            dr[1] = Convert.ToString(txtSubtitle.Text);
            dr[2] = Convert.ToInt32(ddlServiceHead.SelectedValue);
            tb.Rows.Add(dr);
            tb.WriteXml(st);
        }
        else
        {
            DataRow dr = ds.Tables[0].NewRow();
            if (ds.Tables[0].Compute("Max(ServiceSubTitle_id)", "") == null)
            {
                a = 0;
            }
            a = Convert.ToInt32(ds.Tables[0].Compute("Max(ServiceSubTitle_id)", "")) + 1;
            dr[0] = a;
            dr[1] = Convert.ToString(txtSubtitle.Text);
            dr[2] = Convert.ToInt32(ddlServiceHead.SelectedValue);
            ds.Tables[0].Rows.Add(dr);
            ds.WriteXml(st);
        }
    }
}