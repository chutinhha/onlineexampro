using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class GridView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String st = Server.MapPath("emp.xml");
        if (Page.IsPostBack == false)
        {
            if (File.Exists(st) == false)
                createxml();
            getxml();
        }

    }
    private void createxml()
    {
        DataTable tb = new DataTable("emptable");
        tb.Columns.Add("eno", Type.GetType("System.Int32"));
        tb.Columns.Add("ename", Type.GetType("System.String"));
        tb.Columns.Add("eadd", Type.GetType("System.String"));
        tb.Columns.Add("esal", Type.GetType("System.Int32"));
        DataRow r = tb.NewRow();
        r[0] = 1;
        r[1] = "Rahul Choudhary";
        r[2] = "Chandigarh";
        r[3] = 12000;
        tb.Rows.Add(r);
        String st = Server.MapPath("emp.xml");
        tb.WriteXml(st);
    }

    //Method to bind Grid view
    private void getxml()
    {
        String st = Server.MapPath("emp.xml");
        DataSet ds = new DataSet();
        ds.ReadXml(st);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    //Grid View Event to Save Data into Xml File
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "save")
        {
            String st = Server.MapPath("emp.xml");
            DataSet ds = new DataSet();
            ds.ReadXml(st);
            DataRow r = ds.Tables[0].NewRow();
            r[0] = Convert.ToInt32(((TextBox)(GridView1.FooterRow.FindControl("TextBox1"))).Text);
            r[1] = ((TextBox)(GridView1.FooterRow.FindControl("TextBox3"))).Text;
            r[2] = ((TextBox)(GridView1.FooterRow.FindControl("TextBox5"))).Text;
            r[3] = Convert.ToInt32(((TextBox)(GridView1.FooterRow.FindControl("TextBox7"))).Text);
            ds.Tables[0].Rows.Add(r);
            ds.WriteXml(st);
            getxml();
        }
    }

    //Grid View Row Deleting Event to Delete From Xml File
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        String st = Server.MapPath("emp.xml");
        DataSet ds = new DataSet();
        ds.ReadXml(st);
        ds.Tables[0].Rows.RemoveAt(e.RowIndex);
        ds.WriteXml(st);
        getxml();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        getxml();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        getxml();
    }

    //Grid View row Updating Event to update xml file
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        String st = Server.MapPath("emp.xml");
        DataSet ds = new DataSet();
        ds.ReadXml(st);
        ds.Tables[0].Rows[e.RowIndex][1] = ((TextBox)(GridView1.Rows[e.RowIndex].FindControl("TextBox2"))).Text;
        ds.Tables[0].Rows[e.RowIndex][2] = ((TextBox)(GridView1.Rows[e.RowIndex].FindControl("TextBox4"))).Text;
        ds.Tables[0].Rows[e.RowIndex][3] = Convert.ToInt32(((TextBox)(GridView1.Rows[e.RowIndex].FindControl("TextBox6"))).Text);
        GridView1.EditIndex = -1;
        ds.WriteXml(st);
        getxml();
    }
}