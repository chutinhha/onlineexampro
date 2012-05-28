using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;

namespace E_Learning
{
    public partial class ucfilesview : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ss = Convert.ToString(Session["filepath"]);
            string[] ffs = ss.Split('.');
            if (ffs[ffs.Length - 1] == "wmv")
            {
                Session["filepath"] = ss.Replace("~", "..");                
                string ff = "<object type='video/x-ms-wmv' data='" + ss + "' width='420' height='340'><param name='url' value='" + ss + "'/><param name='src' value='" + ss + "'/><param name='autostart' value='true' /><param name='sound' value='false' /> <param name='controller' value='true' /></object>";
                gg.InnerHtml = ff;               
            }
            else
            {
                sss.Attributes.Add("src", ss);
            }
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            //string aa = Convert.ToString(Session["filepath"]);
            //string[] ff = aa.Split('/');            
            //Response.ContentType = ff[ff.Length - 1];
            //Response.AppendHeader("Content-Disposition", "attachment; " + ff[ff.Length - 1] + "");
            //aa = aa.Replace("..", "~");
            //Response.TransmitFile(Server.MapPath(aa));
            //Response.End();
            if (DownloadableProduct_Tracking())
            {
                Response.Write("Success");
            }
            else
            {
                Response.Write("Failed");
            }
        }
        private bool DownloadableProduct_Tracking()
        {
            string aa = Convert.ToString(Session["filepath"]);
            aa = aa.Replace("..", "~");
            string filePath = Server.MapPath(aa);
            string _DownloadableProductFileName = "DownloadableProduct_FileName.pdf";

            System.IO.FileInfo FileName = new System.IO.FileInfo(filePath);
            FileStream myFile = new FileStream(filePath, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);

            BinaryReader _BinaryReader = new BinaryReader(myFile);

            //if (IsEligibleUser())
            {
                if (FileName.Exists)
                {
                    try
                    {
                        long startBytes = 0;
                        string lastUpdateTiemStamp = File.GetLastWriteTimeUtc(filePath).ToString("r");
                        string _EncodedData = HttpUtility.UrlEncode(_DownloadableProductFileName, Encoding.UTF8) + lastUpdateTiemStamp;

                        Response.Clear();
                        Response.Buffer = false;
                        Response.AddHeader("Accept-Ranges", "bytes");
                        Response.AppendHeader("ETag", "\"" + _EncodedData + "\"");
                        Response.AppendHeader("Last-Modified", lastUpdateTiemStamp);
                        Response.ContentType = "application/octet-stream";
                        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName.Name);
                        Response.AddHeader("Content-Length", (FileName.Length - startBytes).ToString());
                        Response.AddHeader("Connection", "Keep-Alive");
                        Response.ContentEncoding = Encoding.UTF8;

                        _BinaryReader.BaseStream.Seek(startBytes, SeekOrigin.Begin);

                        int maxCount = (int)Math.Ceiling((FileName.Length - startBytes + 0.0) / 1024);

                        int i;
                        for (i = 0; i < maxCount && Response.IsClientConnected; i++)
                        {
                            Response.BinaryWrite(_BinaryReader.ReadBytes(1024));
                            Response.Flush();
                        }
                        if (i < maxCount)
                            return false;
                        return true;
                    }
                    catch
                    {
                        return false;
                    }
                    finally
                    {
                        Response.End();
                        _BinaryReader.Close();
                        myFile.Close();
                    }
                }
                else System.Web.UI.ScriptManager.RegisterStartupScript(this, GetType(),
                    "FileNotFoundWarning", "alert('File is not available now!')", true);
            }
            //else
            {
                //System.Web.UI.ScriptManager.RegisterStartupScript(this, GetType(),
                    //"NotEligibleWarning", "alert('Sorry! File is not available for you')", true);
            }
            return false;
        }
    }
}