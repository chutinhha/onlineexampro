using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Login_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        if (ImgAppHelper.Context.tblUseras.Count(a => a.UserName == UserName.Text && a.Password == Password.Text) > 0)
        {
            Session["UserId"] = ImgAppHelper.Context.tblUseras.Single(a => a.UserName == UserName.Text && a.Password == Password.Text).Id;
            Response.Redirect("Test.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String sFileImage = System.IO.Path.Combine(System.Configuration.ConfigurationManager.AppSettings["UploadPath"], Session["UserId"].ToString() + ".gif");
        String sFilePath = System.IO.Path.Combine(System.Configuration.ConfigurationManager.AppSettings["UploadPath"], Session["UserId"].ToString() + ".xls");
        if (File.Exists(sFilePath)) { File.Delete(sFilePath); }

        Microsoft.Office.Interop.Excel.ApplicationClass objApp = new Microsoft.Office.Interop.Excel.ApplicationClass();
        Microsoft.Office.Interop.Excel.Worksheet objSheet = new Microsoft.Office.Interop.Excel.Worksheet();
        Microsoft.Office.Interop.Excel.Workbook objWorkBook = null;
        //object missing = System.Reflection.Missing.Value;

        try
        {
            objWorkBook = objApp.Workbooks.Add(Type.Missing);
            objSheet = (Microsoft.Office.Interop.Excel.Worksheet)objWorkBook.ActiveSheet;

            //Add picture to single sheet1
            objSheet = (Worksheet)objWorkBook.Sheets[1];
            objSheet.Name = "Graph with Report";

            ////////////// 

            //Or multiple sheets

            for (int iSheet = 0; iSheet < objWorkBook.Sheets.Count - 1; iSheet++)
            {
                objSheet = objWorkBook.Sheets[iSheet] as Worksheet;
                ///(objSheet as Microsoft.Office.Interop.Excel._Worksheet).Activate();
            }

            /////////////////

            objSheet.Shapes.AddPicture(sFileImage, Microsoft.Office.Core.MsoTriState.msoFalse, Microsoft.Office.Core.MsoTriState.msoCTrue, 10, 10, 700, 350);
            objWorkBook.SaveAs(sFilePath, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing,
            Microsoft.Office.Interop.Excel.XlSaveAsAccessMode.xlExclusive, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing);
        }
        catch (Exception)
        {
            //Error Alert
        }
        finally
        {
            objApp.Quit();
            objWorkBook = null;
            objApp = null;
        }
    }
}