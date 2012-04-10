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
        if (!IsPostBack)
        {
            DisplayImage();
        }
    }
    private void DisplayImage()
    {
        DirectoryInfo dr = new DirectoryInfo(@"C:\ImgAppImages");
        FileInfo[] fl = dr.GetFiles();
        foreach (FileInfo item in fl)
        {
            if (!File.Exists(Server.MapPath("~/ProcessedImages/" + item.Name)))
            {
                File.Copy(item.DirectoryName + "\\" + item.Name, Server.MapPath("~/ProcessedImages/" + item.Name));
                imgSource.ImageUrl = "~/ProcessedImages/" + item.Name;
                return;
            }
        }
        
    }
    protected void imgRight_Click(object sender, ImageClickEventArgs e)
    {
        DirectoryInfo dr = new DirectoryInfo(@"C:\ImgAppImages");
        FileInfo[] fl = dr.GetFiles();
        foreach (FileInfo item in fl)
        {
            if (!File.Exists(Server.MapPath("~/ProcessedImages/" + item.Name)))
            {
                File.Copy(item.DirectoryName + "\\" + item.Name, Server.MapPath("~/ProcessedImages/" + item.Name));
                imgSource.ImageUrl = "~/ProcessedImages/" + item.Name;
                return;
            }
        }
    }
}