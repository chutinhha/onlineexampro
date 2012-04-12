using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        TextBox1.Enabled = false;
        ds.Enabled = false;
        if (!IsPostBack)
        {
            Label1.Visible = false;
            ViewState["ImgId"] = ImgAppHelper.Context.tblImages.Where(a => a.FK_User == Convert.ToInt64(Session["UserId"])).OrderByDescending(a => a.Id).First().Id + 1;
            DisplayImage();
        }
    }
    private void DisplayImage()
    {
        if (ViewState["ImgId"] != null)
        {
            ViewState["ImgId"] = Convert.ToInt64(ViewState["ImgId"]) + 1;
            var gg = ImgAppHelper.Context.tblImages.Where(a => a.FK_User == Convert.ToInt64(Session["UserId"])).OrderByDescending(a => a.Id);
            if (Convert.ToInt64(ViewState["ImgId"]) >= gg.First().Id)
            {                
                DirectoryInfo dr = new DirectoryInfo(@"C:\ImgAppImages");
                FileInfo[] fl = dr.GetFiles();
                int i = 0;
                foreach (FileInfo item in fl)
                {
                    if (!File.Exists(Server.MapPath("~/ProcessedImages/" + item.Name)))
                    {
                        File.Copy(item.DirectoryName + "\\" + item.Name, Server.MapPath("~/ProcessedImages/" + item.Name));
                        imgSource.ImageUrl = "~/ProcessedImages/" + item.Name;
                        i = 1;
                        using (var obj = new ImgAppDataContext())
                        {
                            var tblimg = new tblImage();
                            tblimg.AltId = txtAltId.Text;
                            tblimg.BoxBarcode = txtBoxBarCode.Text;
                            tblimg.Date = DateTime.Now;
                            tblimg.Des1 = txtDes1.Text;
                            tblimg.Des2 = txtDes2.Text;
                            tblimg.Des3 = txtDes3.Text;
                            tblimg.Des4 = txtDes4.Text;
                            tblimg.DestroyDate = DateTime.Now;
                            txtDestroyDate.Text = DateTime.Now.ToShortDateString();
                            tblimg.FK_User = Convert.ToInt64(Session["UserId"]);
                            tblimg.FromDate = DateTime.Now;
                            txtFromDate.Text = DateTime.Now.ToShortDateString();
                            tblimg.ImageName = item.Name;
                            txtImageName.Text = item.Name;
                            tblimg.ImgaePath = imgSource.ImageUrl;
                            tblimg.ToDate = DateTime.Now;
                            txtToDate.Text = DateTime.Now.ToShortDateString();

                            obj.tblImages.InsertOnSubmit(tblimg);
                            obj.SubmitChanges();
                            ViewState["ImgId"] = tblimg.Id;
                            ViewState["ImgId"] = Convert.ToInt64(ViewState["ImgId"]) + 1;
                        }
                        return;
                    }
                }
                if (i == 0)
                {
                    Label1.Visible = true;
                    imgSource.Visible = false;
                }
            }
            else
            {
                ViewState["ImgId"] = Convert.ToInt64(ViewState["ImgId"]) + 1;
                using (var obj = new ImgAppDataContext())
                {
                    var tblimg = obj.tblImages.Single(a => a.Id == Convert.ToInt64(ViewState["ImgId"]) && a.FK_User == Convert.ToInt64(Session["UserId"]));
                    txtAltId.Text = tblimg.AltId;
                    txtBoxBarCode.Text = tblimg.BoxBarcode;
                    txtDes1.Text = tblimg.Des1;
                    txtDes2.Text = tblimg.Des2;
                    txtDes3.Text = tblimg.Des3;
                    txtDes4.Text = tblimg.Des4;
                    txtDestroyDate.Text = tblimg.DestroyDate.Value.ToShortDateString();
                    txtFromDate.Text = tblimg.FromDate.Value.ToShortDateString();
                    txtImageName.Text = tblimg.ImageName;
                    imgSource.ImageUrl = tblimg.ImgaePath;
                    Label1.Visible = false;
                    imgSource.Visible = true;
                    txtToDate.Text = tblimg.ToDate.Value.ToShortDateString();
                }
            }
        }
    }
    protected void imgRight_Click(object sender, ImageClickEventArgs e)
    {
        Common.Clear(Page);
        DisplayImage();
    }
    protected void imgLeft_Click(object sender, ImageClickEventArgs e)
    {
        Common.Clear(Page);
        DisplayImageFromCache();
    }
    private void DisplayImageFromCache()
    {
        if (ViewState["ImgId"] != null)
        {
            ViewState["ImgId"] = Convert.ToInt64(ViewState["ImgId"]) - 1;
            if (Convert.ToInt64(ViewState["ImgId"]) > 0)
            {
                using (var obj = new ImgAppDataContext())
                {
                    var tblimg = obj.tblImages.Single(a => a.Id == Convert.ToInt64(ViewState["ImgId"]) && a.FK_User == Convert.ToInt64(Session["UserId"]));
                    txtAltId.Text = tblimg.AltId;
                    txtBoxBarCode.Text = tblimg.BoxBarcode;
                    txtDes1.Text = tblimg.Des1;
                    txtDes2.Text = tblimg.Des2;
                    txtDes3.Text = tblimg.Des3;
                    txtDes4.Text = tblimg.Des4;
                    txtDestroyDate.Text = tblimg.DestroyDate.Value.ToShortDateString();
                    txtFromDate.Text = tblimg.FromDate.Value.ToShortDateString();
                    txtImageName.Text = tblimg.ImageName;
                    imgSource.ImageUrl = tblimg.ImgaePath;
                    Label1.Visible = false;
                    imgSource.Visible = true;
                    txtToDate.Text = tblimg.ToDate.Value.ToShortDateString();
                }
            }
            else
            {
                Label1.Visible = true;
                imgSource.Visible = false;
            }
        }
        else
        {
            Label1.Visible = true;
            imgSource.Visible = false;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Common.Clear(Page);
        using (var obj = new ImgAppDataContext())
        {
            var tblimg = obj.tblImages.Single(a => a.Id == Convert.ToInt64(ViewState["ImgId"]) && a.FK_User == Convert.ToInt64(Session["UserId"]));
            tblimg.AltId = txtAltId.Text;
            tblimg.BoxBarcode = txtBoxBarCode.Text;
            tblimg.Des1 = txtDes1.Text;
            tblimg.Des2 = txtDes2.Text;
            tblimg.Des3 = txtDes3.Text;
            tblimg.Des4 = txtDes4.Text;
            tblimg.DestroyDate = Convert.ToDateTime(txtDestroyDate.Text);
            tblimg.FK_User = Convert.ToInt64(Session["UserId"]);
            tblimg.FromDate = Convert.ToDateTime(txtFromDate.Text);
            tblimg.ImageName = txtImageName.Text;
            tblimg.ImgaePath = imgSource.ImageUrl;
            tblimg.ToDate = Convert.ToDateTime(txtToDate.Text);
            obj.SubmitChanges();

            ViewState["ImgId"] = tblimg.Id;
        }
    }
}