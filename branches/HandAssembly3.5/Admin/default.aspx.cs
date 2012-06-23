using System;
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
using ServiceReference1;

public partial class Admin : System.Web.UI.Page
{
    public string sr, st, videourl, localpath;
    protected void Page_Load(object sender, EventArgs e)
    {
        FolderAcceeSoapClient aa = new FolderAcceeSoapClient();
        localpath = aa.GetLocalPath();
        sr = localpath + "\\ServiceListHeading.xml";
        st = localpath + "\\ServiceListSubHeading.xml";
        videourl = localpath + "\\VideoUrl.xml";
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
        String path = localpath + "\\ServiceListHeading.xml";
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
        DirectoryInfo obj = new DirectoryInfo(localpath + "\\CustomerLogo\\");
        gvCustomerLogo.DataSource = obj.GetFiles();
        gvCustomerLogo.DataBind();
    }

    private void BindGridForSliderImage()
    {
        DirectoryInfo obj = new DirectoryInfo(localpath + "\\Uploads\\");
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
        BindDropDown();
    }

    private void createServiceHeadingxml()
    {
        DataTable tb = new DataTable("ServiceHead");
        //tb.Columns.Add("Servicehead_id", Type.GetType("System.Int32"));
        //tb.Columns.Add("Servicehead_title", Type.GetType("System.String"));
        String sr = localpath + "\\ServiceListHeading.xml";
        tb.WriteXml(sr);
        DataTable tb1 = new DataTable("ServiceSubTitle");
        //tb1.Columns.Add("ServiceSubTitle_id", Type.GetType("System.Int32"));
        //tb1.Columns.Add("ServiceSubTitle_Content", Type.GetType("System.String"));
        //tb1.Columns.Add("fk_Servicehead_id", Type.GetType("System.Int32"));
        String st = localpath + "\\ServiceListSubHeading.xml";
        tb1.WriteXml(st);
        DataTable tb2 = new DataTable("ServiceSubTitle");
        //tb1.Columns.Add("ServiceSubTitle_id", Type.GetType("System.Int32"));
        //tb1.Columns.Add("ServiceSubTitle_Content", Type.GetType("System.String"));
        //tb1.Columns.Add("fk_Servicehead_id", Type.GetType("System.Int32"));
        String vu = localpath + "\\VideoUrl.xml";
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
            a = Convert.ToInt32(ds.Tables[0].Rows[ds.Tables[0].Rows.Count - 1].ItemArray[0].ToString()) + 1;
            dr[0] = a;
            dr[1] = Convert.ToString(txtSubtitle.Text);
            dr[2] = Convert.ToInt32(ddlServiceHead.SelectedValue);
            ds.Tables[0].Rows.Add(dr);
            ds.WriteXml(st);
        }
        BindGrid_ServiceList();
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
                path = localpath + "\\SiteLogo\\";
                filePaths = Directory.GetFiles(path);
                foreach (string filePath in filePaths)
                    File.Delete(filePath);
                extension = Path.GetExtension(fuContent.PostedFile.FileName);
                upload = localpath + "\\SiteLogo\\Logo" + extension;
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
                path = localpath + "\\Uploads\\";
                int count = Directory.GetFiles(path).Count();
                //filePaths = Directory.GetFiles(path);
                //foreach (string filePath in filePaths)
                //    count = count + 1;
                extension = Path.GetExtension(fuContent.PostedFile.FileName);
                count = count + 1;
                //upload = "Uploads\\" + count + extension;
                upload = localpath + "\\Uploads\\" + count + extension;
                string thumbnail = localpath + "\\Uploads\\thumbs\\" + count + extension;
                fuContent.SaveAs(upload);
                fuContent.SaveAs(thumbnail);
                BindGridForSliderImage();
                break;
            case "3":
                upload = localpath + "\\CustomerLogo\\" + fuContent.FileName;
                fuContent.SaveAs(upload);
                BindGridForCustomerLogo();
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
                int a = 1;
                if (ds.Tables.Count != 0)
                {
                    a = Convert.ToInt32(ds.Tables[0].Rows[ds.Tables[0].Rows.Count - 1].ItemArray[0].ToString()) + 1;

                }
                string thumpnail = localpath + "\\VideoThumbnails\\" + a + extension;
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
                BindGridForVideoThumbnail();
                break;
            default:
                break;
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
                lbDetail.Text = "Upload Image With the dimension of 500 X 375!";
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
        foreach (DataRow item in ds.Tables[0].Rows)
        {
            item[1] = item[1].ToString().Replace('~', '/');
        }
        if (ds.Tables.Count != 0)
        {
            gvVideoSlider.DataSource = ds.Tables[0];
            gvVideoSlider.DataBind();
        }
    }
    protected void gvVideoSlider_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string path = localpath + "\\VideoUrl.xml";
        DataSet ds = new DataSet();
        ds.ReadXml(path);
        ds.Tables[0].Rows.RemoveAt(e.RowIndex);
        ds.WriteXml(path);
        gvVideoSlider.DataSource = ds;
        gvVideoSlider.DataBind();
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