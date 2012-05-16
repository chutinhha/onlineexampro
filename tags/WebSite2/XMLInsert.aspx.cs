using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class XMLInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("~/Data/Images.xml");
        if (!File.Exists(path))
        {
            FileStream fs = File.Create(path);
            fs.Dispose();
            fs.Close();
            StreamWriter sw = File.AppendText(path);
            sw.WriteLine("<?xml version='1.0' encoding='utf-8' ?>");
            sw.WriteLine("<ImageData></ImageData>");
            sw.Dispose();
            sw.Close();
        }
        var ds = new DataSet();
        ds.ReadXml(path);
        if (ds.Tables.Count <= 0)
        {
            ds.Tables.Add("ImageData");
            //ds.Tables[0].TableName = "ImageData";
            var dc = new DataColumn("Id", typeof (long));
            ds.Tables[0].Columns.Add(dc);
            dc = new DataColumn("ImageName", typeof (string));
            ds.Tables[0].Columns.Add(dc);
            dc = new DataColumn("ImagePath", typeof (string));
            ds.Tables[0].Columns.Add(dc);
            dc = new DataColumn("ImageDescription", typeof (string));
            ds.Tables[0].Columns.Add(dc);
            dc = new DataColumn("Date", typeof (DateTime));
            ds.Tables[0].Columns.Add(dc);
        }
        var dr = ds.Tables[0].NewRow();
        if (ds.Tables[0].Rows.Count > 0)
        {
            dr["Id"] = Convert.ToInt64(ds.Tables[0].Rows[ds.Tables[0].Rows.Count - 1][0]) + 1;
        }
        else
        {
            dr["Id"] = 1;
        }
        dr["ImageName"] = FileUpload1.FileName;
        dr["ImagePath"] = Server.MapPath("~/Uploads/" + FileUpload1.FileName);
        dr["ImageDescription"] = TextBox1.Text;
        dr["Date"] = DateTime.Now;
        ds.Tables[0].Rows.Add(dr);

        ds.WriteXml(path);
    }
}