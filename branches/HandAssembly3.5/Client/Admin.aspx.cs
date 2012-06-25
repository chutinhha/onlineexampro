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
//using ServiceReference1;

public partial class Admin : System.Web.UI.Page
{
    public string sr, st, videourl, localpath;
    protected void Page_Load(object sender, EventArgs e)
    {
        //FolderAcceeSoapClient aa = new FolderAcceeSoapClient();
        //localpath = aa.GetLocalPath();
        // localpath = @"D:\Hosting\9491773\html\";
        //sr = localpath + "\\ServiceListHeading.xml";
        //st = localpath + "\\ServiceListSubHeading.xml";
        //videourl = localpath + "\\VideoUrl.xml";
        localpath = Server.MapPath("~/DB/");
        sr = Server.MapPath("~/DB/ServiceListHeading.xml");
        st = Server.MapPath("~/DB/ServiceListSubHeading.xml");
        videourl = Server.MapPath("~/DB/VideoUrl.xml");
        if (!IsPostBack)
        {
            if (File.Exists(sr) != true)
            {
                createServiceHeadingxml();
            }
            BindDropDown();
            BindGrid_ServiceList();
        }
    }

    private void BindGrid_ServiceList()
    {
        String path = sr;
        DataSet ds = new DataSet();
        ds.ReadXml(path);
        if (ds.Tables.Count != 0)
        {
            gvServiceList.DataSource = ds;
            gvServiceList.DataBind();
        }

    }

    private void BindGridForCustomerLogo()
    {
        DirectoryInfo obj = new DirectoryInfo(Server.MapPath("~/CustomerLogo/"));
        gvCustomerLogo.DataSource = obj.GetFiles();
        gvCustomerLogo.DataBind();
    }

    private void BindGridForSliderImage()
    {
        DirectoryInfo obj = new DirectoryInfo(Server.MapPath("~/Uploads"));
        gvImageSlider.DataSource = obj.GetFiles("*.jpg");
        gvImageSlider.DataBind();
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
        try
        {
            if (txtTitle.Text == null || txtTitle.Text == string.Empty)
            {
                throw new Exception("*");
            }
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
                a = Convert.ToInt32(ds.Tables[0].Rows[ds.Tables[0].Rows.Count - 1].ItemArray[0].ToString()) + 1;
                dr[0] = a;
                dr[1] = Convert.ToString(txtTitle.Text);
                ds.Tables[0].Rows.Add(dr);
                ds.WriteXml(sr);
            }
            txtTitle.Text = string.Empty;
            lbValidation.Text = string.Empty;
            BindDropDown();
        }
        catch (Exception ex)
        {
            lbValidation.Text = ex.Message;
        }

    }

    private void createServiceHeadingxml()
    {
        DataTable tb = new DataTable("ServiceHead");
        //tb.Columns.Add("Servicehead_id", Type.GetType("System.Int32"));
        //tb.Columns.Add("Servicehead_title", Type.GetType("System.String"));
        String sr = Server.MapPath("~/DB/ServiceListHeading.xml");
        tb.WriteXml(sr);
        DataTable tb1 = new DataTable("ServiceSubTitle");
        //tb1.Columns.Add("ServiceSubTitle_id", Type.GetType("System.Int32"));
        //tb1.Columns.Add("ServiceSubTitle_Content", Type.GetType("System.String"));
        //tb1.Columns.Add("fk_Servicehead_id", Type.GetType("System.Int32"));
        String st = Server.MapPath("~/DB/ServiceListSubHeading.xml");
        tb1.WriteXml(st);
        DataTable tb2 = new DataTable("ServiceSubTitle");
        //tb1.Columns.Add("ServiceSubTitle_id", Type.GetType("System.Int32"));
        //tb1.Columns.Add("ServiceSubTitle_Content", Type.GetType("System.String"));
        //tb1.Columns.Add("fk_Servicehead_id", Type.GetType("System.Int32"));
        String vu = Server.MapPath("~/DB/VideoUrl.xml");
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
        try
        {
            if (txtSubtitle.Text == null || txtSubtitle.Text == string.Empty)
            {
                throw new Exception("*");
            }

            if (ddlServiceHead.SelectedItem.Text != "other" && ddlServiceHead.SelectedIndex != 0)
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
                    a = Convert.ToInt32(ds.Tables[0].Rows[ds.Tables[0].Rows.Count - 1].ItemArray[0].ToString()) + 1;
                    dr[0] = a;
                    dr[1] = Convert.ToString(txtSubtitle.Text);
                    dr[2] = Convert.ToInt32(ddlServiceHead.SelectedValue);
                    ds.Tables[0].Rows.Add(dr);
                    ds.WriteXml(st);
                }
                txtSubtitle.Text = string.Empty;
                lbvalidate.Text = string.Empty;
                ddlServiceHead.BorderColor = System.Drawing.Color.Black;
                BindGrid_ServiceList();
            }
            else
            {
                ddlServiceHead.BorderColor = System.Drawing.Color.Red;
            }
        }
        catch (Exception ex)
        {

            lbvalidate.Text = ex.Message;
        }
    }
    protected void btnSubmitUrl_Click(object sender, EventArgs e)
    {
        string path;
        string[] filePaths;
        string extension;
        string upload;
        string fileName = Guid.NewGuid().ToString("N");
        try
        {
            if (fuContent.FileContent == null || fuContent.FileName == "")
            {
                throw new Exception("*");
            }
            switch (ddlCategory.SelectedValue)
            {
                case "1":
                    //int newWidth, newHeight;
                    //newHeight = 523;
                    //newHeight = 250;

                    path = Server.MapPath("~/SiteLogo/");
                    filePaths = Directory.GetFiles(path);
                    foreach (string filePath in filePaths)
                        File.Delete(filePath);
                    extension = Path.GetExtension(fuContent.PostedFile.FileName);
                    upload = path + "\\Logo" + extension;
                    fuContent.SaveAs(upload);
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

                    path = Server.MapPath("~/Uploads/");
                    int count = Directory.GetFiles(path).Count();
                    //filePaths = Directory.GetFiles(path);
                    //foreach (string filePath in filePaths)
                    //    count = count + 1;
                    extension = Path.GetExtension(fuContent.PostedFile.FileName);
                    //upload = "Uploads\\" + count + extension;
                    upload = Server.MapPath("~/Uploads/") + count + extension;
                    string thumbnail = Server.MapPath("~/Uploads/thumbs/") + count + extension;
                    fuContent.SaveAs(upload);
                    fuContent.SaveAs(thumbnail);
                    BindGridForSliderImage();
                    break;
                case "3":

                    upload = Server.MapPath("~/CustomerLogo/");
                    int count1 = Directory.GetFiles(upload).Count();
                    extension = Path.GetExtension(fuContent.PostedFile.FileName);
                    string upload1 = upload + count1 + extension;
                    fuContent.SaveAs(upload1);
                    BindGridForCustomerLogo();
                    break;
                case "4":
                    try
                    {
                        if (txtUrl.Text == null || txtUrl.Text == string.Empty)
                        {
                            throw new Exception("*");
                        }

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
                        int a = 0;
                        if (ds.Tables.Count != 0)
                        {
                            a = Convert.ToInt32(ds.Tables[0].Rows[ds.Tables[0].Rows.Count - 1].ItemArray[0].ToString()) + 1;

                        }
                        string thumpnail = Server.MapPath("~/VideoThumbnails/") + a + extension;
                        string xmlurl = "~/VideoThumbnails/" + a + extension;
                        fuContent.SaveAs(thumpnail);
                        if (ds.Tables.Count <= 0)
                        {
                            DataTable tb = new DataTable("VideoUrl");
                            tb.Columns.Add("VideoUrl_id", Type.GetType("System.String"));
                            tb.Columns.Add("VideoThumbnailUrl", Type.GetType("System.String"));
                            tb.Columns.Add("Video_Url", Type.GetType("System.String"));
                            DataRow dr = tb.NewRow();
                            dr[0] = a;
                            dr[1] = xmlurl;
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


                            //  a = ds.Tables[0].Rows.Count + 1;
                            dr[0] = a;
                            dr[1] = xmlurl;
                            dr[2] = Convert.ToString(url);
                            ds.Tables[0].Rows.Add(dr);
                            ds.WriteXml(videourl);
                        }
                        txtUrl.Text = string.Empty;
                        BindGridForVideoThumbnail();
                        lbvalid.Text = string.Empty;
                    }
                    catch (Exception ex)
                    {
                        lbvalid.Text = ex.Message;
                    }
                    break;
                default:
                    break;
            }
        }
        catch (Exception ex)
        {
            lbFuvalidation.Text = ex.Message;
        }
    }
    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (Convert.ToInt32(ddlCategory.SelectedValue))
        {
            case 1:
                gvImageSlider.Visible = false;
                gvVideoSlider.Visible = false;
                gvCustomerLogo.Visible = false;
                lbDetail.Text = "Upload Image With the dimension of 650 X 250!";
                txtUrl.Visible = false;
                lbVidUrl.Visible = false;

                break;
            case 2:
                gvVideoSlider.Visible = false;
                gvImageSlider.Visible = true;
                gvCustomerLogo.Visible = false;
                BindGridForSliderImage();
                lbDetail.Text = "Upload Image With the dimension of 500 X 375!(*.jpg Only)";
                txtUrl.Visible = false;
                lbVidUrl.Visible = false;
                break;
            case 3:
                gvVideoSlider.Visible = false;
                gvCustomerLogo.Visible = true;
                gvImageSlider.Visible = false;
                BindGridForCustomerLogo();
                lbDetail.Text = "Upload Image With the dimension of 100 X 70!";
                txtUrl.Visible = false;
                lbVidUrl.Visible = false;
                break;
            case 4:
                gvVideoSlider.Visible = true;
                gvImageSlider.Visible = false;
                gvCustomerLogo.Visible = false;
                lbDetail.Text = string.Empty;
                txtUrl.Visible = true;
                lbVidUrl.Visible = true;
                BindGridForVideoThumbnail();

                break;
            default:
                break;
        }

    }

    private void BindGridForVideoThumbnail()
    {
        DataSet ds = new DataSet();
        ds.ReadXml(localpath + "VideoUrl.xml");
        if (ds.Tables.Count != 0)
        {
            foreach (DataRow item in ds.Tables[0].Rows)
            {
                item[1] = item[1].ToString().Replace('~', '/');
            }

            gvVideoSlider.DataSource = ds.Tables[0];
            gvVideoSlider.DataBind();

        }

    }
    protected void gvVideoSlider_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string path = localpath + "\\VideoUrl.xml";
        DataSet ds = new DataSet();
        ds.ReadXml(path);
        DirectoryInfo obj = new DirectoryInfo(Server.MapPath("~/VideoThumbnails"));
        string[] a;
        foreach (var item in obj.GetFiles())
        {
            a = item.Name.Split('.');
            if (Convert.ToInt32(a[0]) == Convert.ToInt32(ds.Tables[0].Rows[e.RowIndex][0]))
            {
                ds.Tables[0].Rows.RemoveAt(e.RowIndex);
                string path12 = Server.MapPath("~/VideoThumbnails/") + item.Name;
                File.Delete(path12);
                break;
            }
        }
        ds.WriteXml(path);
        gvVideoSlider.DataSource = ds;
        gvVideoSlider.DataBind();
        BindGridForVideoThumbnail();
    }

    protected void gvServiceList_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        String path = localpath + "\\ServiceListHeading.xml";
        String path1 = localpath + "\\ServiceListSubHeading.xml";
        DataSet ds = new DataSet();
        int a = Convert.ToInt32(gvServiceList.DataKeys[e.RowIndex].Values[0]);
        ds.ReadXml(path);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            if (Convert.ToInt32(ds.Tables[0].Rows[i]["Servicehead_id"]) == a)
            {
                DataSet ds1 = new DataSet();
                ds1.ReadXml(path1);
                for (int j = 0; j < ds1.Tables[0].Rows.Count; j++)
                {
                    if (Convert.ToInt32(ds1.Tables[0].Rows[j]["fk_Servicehead_id"]) == a)
                    {
                        ds1.Tables[0].Rows.Remove(ds1.Tables[0].Rows[j]);
                    }
                }
                ds1.WriteXml(path1);
                ds.Tables[0].Rows.Remove(ds.Tables[0].Rows[i]);
            }
        }
        ds.WriteXml(path);
        //gvServiceList.DataSource = ds;
        //gvServiceList.DataBind();
        BindGrid_ServiceList();
        BindDropDown();
        BindGrid_ServiceList();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        String path1 = localpath + "\\ServiceListSubHeading.xml";
        GridView GridView1 = (GridView)sender;
        int a = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        DataSet ds1 = new DataSet();
        ds1.ReadXml(path1);
        foreach (DataRow item1 in ds1.Tables[0].Rows)
        {
            if (Convert.ToInt32(item1["ServiceSubTitle_id"]) == a)
            {
                ds1.Tables[0].Rows.Remove(item1);
                break;
            }
        }
        ds1.WriteXml(path1);
        //GridView1.DataSource = ds1;
        //GridView1.DataBind();
        BindGrid_ServiceList();
    }
    protected void gvServiceList_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        String path1 = localpath + "\\ServiceListSubHeading.xml";
        foreach (GridViewRow item in gvServiceList.Rows)
        {
            GridView GridView1 = (GridView)item.FindControl("GridView1");
            DataSet ds1 = new DataSet();
            ds1.ReadXml(path1);
            if (ds1.Tables.Count != 0)
            {

                DataTable dtt = new DataTable();
                dtt.Columns.Add("ServiceSubTitle_id");
                dtt.Columns.Add("ServiceSubTitle_Content");
                dtt.Columns.Add("fk_Servicehead_id");
                int id = Convert.ToInt32(gvServiceList.DataKeys[item.RowIndex].Values[0]);
                foreach (DataRow dr in ds1.Tables[0].Rows)
                {
                    DataRow drr = dtt.NewRow();
                    if (Convert.ToInt32(dr["fk_Servicehead_id"]) == id)
                    {
                        drr["ServiceSubTitle_id"] = dr["ServiceSubTitle_id"];
                        drr["ServiceSubTitle_Content"] = dr["ServiceSubTitle_Content"];
                        drr["fk_Servicehead_id"] = dr["fk_Servicehead_id"];
                        dtt.Rows.Add(drr);
                    }
                }
                GridView1.DataSource = dtt;
                GridView1.DataBind();
            }

        }
    }
    protected void gvImageSlider_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        System.Web.UI.WebControls.Image img = (System.Web.UI.WebControls.Image)gvImageSlider.Rows[e.RowIndex].FindControl("Image1");
        string[] a = img.ImageUrl.Split('/');
        string path = Server.MapPath("~/Uploads/" + a[1]);
        string path1 = Server.MapPath("~/Uploads/thumbs/") + a[1];
        File.Delete(path);
        File.Delete(path1);
        BindGridForSliderImage();
    }
    protected void gvCustomerLogo_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        System.Web.UI.WebControls.Image img = (System.Web.UI.WebControls.Image)gvCustomerLogo.Rows[e.RowIndex].FindControl("Image2");
        string[] a = img.ImageUrl.Split('/');
        string path = Server.MapPath("~/CustomerLogo/") + a[1];
        File.Delete(path);
        BindGridForCustomerLogo();
    }
}