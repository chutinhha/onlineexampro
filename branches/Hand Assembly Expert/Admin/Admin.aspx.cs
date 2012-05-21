﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Drawing;
using System.Drawing.Drawing2D;

public partial class Admin : System.Web.UI.Page
{
    public string sr, st, videourl;
    protected void Page_Load(object sender, EventArgs e)
    {
        sr = Server.MapPath("ServiceListHeading.xml");
        st = Server.MapPath("ServiceListSubHeading.xml");
        videourl = Server.MapPath("VideoUrl.xml");
        if (!IsPostBack)
        {
            if (File.Exists(sr) != true)
            {
                createServiceHeadingxml();
            }
            BindDropDown();
            BindGridForSliderImage();
        }

    }

    private void BindGridForSliderImage()
    {
        string[] filePaths = Directory.GetFiles(Server.MapPath("Uploads"));
    }

    private void BindDropDown()
    {

        DataSet ds = new DataSet();
        ds.ReadXml(sr);
        if (ds.Tables.Count != 0)
        {
            ddlServiceHead.DataSource = ds;
            ddlServiceHead.DataTextField = "Servicehead_title";
            ddlServiceHead.DataValueField = "Servicehead_id";
            ddlServiceHead.DataBind();
        }
        ddlServiceHead.Items.Add("other");
        ddlServiceHead.Items.Insert(0, new ListItem("-Select-"));
        lbDetail.Text = "Upload Image With the dimension of 650 X 250!";

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
            a = ds.Tables[0].Rows.Count + 1;
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
        DataTable tb2 = new DataTable("ServiceSubTitle");
        //tb1.Columns.Add("ServiceSubTitle_id", Type.GetType("System.Int32"));
        //tb1.Columns.Add("ServiceSubTitle_Content", Type.GetType("System.String"));
        //tb1.Columns.Add("fk_Servicehead_id", Type.GetType("System.Int32"));
        String vu = Server.MapPath("VideoUrl.xml");
        tb2.WriteXml(vu);
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
            a = ds.Tables[0].Rows.Count + 1;
            dr[0] = a;
            dr[1] = Convert.ToString(txtSubtitle.Text);
            dr[2] = Convert.ToInt32(ddlServiceHead.SelectedValue);
            ds.Tables[0].Rows.Add(dr);
            ds.WriteXml(st);
        }
    }
    protected void btnSubmitUrl_Click(object sender, EventArgs e)
    {
        string path;
        string[] filePaths;
        string extension;
        string upload;
        string fileName = Guid.NewGuid().ToString("N");
        switch (ddlCategory.SelectedValue)
        {
            case "1":
                //int newWidth, newHeight;
                //newHeight = 523;
                //newHeight = 250;
                path = Server.MapPath("SiteLogo");
                filePaths = Directory.GetFiles(path);

                foreach (string filePath in filePaths)
                    File.Delete(filePath);
                extension = Path.GetExtension(fuContent.PostedFile.FileName);
                upload = "SiteLogo\\Logo" + extension;
                fuContent.SaveAs(Server.MapPath(upload));
                //Bitmap newImage = new Bitmap(newWidth, newHeight);
                //using (Graphics gr = Graphics.FromImage(newImage))
                //{
                //    gr.SmoothingMode = SmoothingMode.AntiAlias;
                //    gr.InterpolationMode = InterpolationMode.HighQualityBicubic;
                //    gr.PixelOffsetMode = PixelOffsetMode.HighQuality;
                //    //gr.DrawImage(srcImage, new Rectangle(0, 0, newWidth, newHeight));
                //}
                break;
            case "2":
                path = Server.MapPath("Uploads");
                int count = Directory.GetFiles(path).Count();
                //filePaths = Directory.GetFiles(path);
                //foreach (string filePath in filePaths)
                //    count = count + 1;
                extension = Path.GetExtension(fuContent.PostedFile.FileName);
                count = count + 1;
                upload = "Uploads\\" + count + extension;
                string thumbnail = "Uploads\\thumbs\\" + count + extension;
                fuContent.SaveAs(Server.MapPath(upload));
                fuContent.SaveAs(Server.MapPath(thumbnail));
                break;
            case "3":
                upload = "CustomerLogo\\" + fuContent.FileName;
                fuContent.SaveAs(Server.MapPath(upload));
                break;
            case "4":
                string url = txtUrl.Text;
                string[] p = url.Split('?');
                string[] q = p[1].Split('&');
                string[] r = q[0].Split('=');
                string id = r[1];
                StringBuilder strbuilder = new StringBuilder();
                strbuilder.Append("http://www.youtube.com/v/");
                strbuilder.Append(id);
                strbuilder.Append("?version=3&feature=player_detailpage");
                url = strbuilder.ToString();
                extension = Path.GetExtension(fuContent.PostedFile.FileName);
                
                DataSet ds = new DataSet();
                ds.ReadXml(videourl);
                int a;
                a = ds.Tables[0].Rows.Count + 1;
                string thumpnail = "~/VideoThumbnails/" + a + extension;
                fuContent.SaveAs(Server.MapPath(thumpnail));
                if (ds.Tables.Count <= 0)
                {
                    DataTable tb = new DataTable("VideoUrl");
                    tb.Columns.Add("VideoUrl_id", Type.GetType("System.String"));
                    tb.Columns.Add("VideoThumbnailUrl", Type.GetType("System.String"));
                    tb.Columns.Add("Video_Url", Type.GetType("System.String"));
                    DataRow dr = tb.NewRow();
                    dr[0] = a;
                    dr[1] = thumpnail;
                    dr[2] = Convert.ToString(url);
                    tb.Rows.Add(dr);
                    tb.WriteXml(videourl);
                }
                else
                {
                    DataRow dr = ds.Tables[0].NewRow();
                    //if (ds.Tables[0].Compute("Max(VideoUrl_id)", "") == null)
                    //{
                    //    a = 0;
                    //}
                    a = ds.Tables[0].Rows.Count + 1;
                    dr[0] = a;
                    dr[1] = thumpnail;
                    dr[2] = Convert.ToString(url);
                    ds.Tables[0].Rows.Add(dr);
                    ds.WriteXml(videourl);
                }
                break;
            default:
                break;
        }
    }
    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Convert.ToInt32(ddlCategory.SelectedValue) == 4)
        {
            lbDetail.Text = string.Empty;
            txtUrl.Visible = true;
            lbVidUrl.Visible = true;
        }
        else
        {
            if (Convert.ToInt32(ddlCategory.SelectedValue) == 1)
            {
                lbDetail.Text = "Upload Image With the dimension of 650 X 250!";
            }
            else if (Convert.ToInt32(ddlCategory.SelectedValue) == 2)
            {
                lbDetail.Text = "Upload Image With the dimension of 500 X 375!";
            }
            else if (Convert.ToInt32(ddlCategory.SelectedValue) == 3)
            {
                lbDetail.Text = "Upload Image With the dimension of 100 X 70!";
            }
            txtUrl.Visible = false;
            lbVidUrl.Visible = false;
        }
    }
}