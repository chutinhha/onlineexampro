using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Microsoft.Office.Interop.Excel;


public partial class Excel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String sFileImage = "C:\\ImgAppImages\\SAM_5022.jpg";
        String sFilePath = "C:\\ImgAppImages\\sam.xls";
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
                //objSheet = objWorkBook.Sheets[iSheet] as Worksheet;
                ///(objSheet as Microsoft.Office.Interop.Excel._Worksheet).Activate();
            }

            /////////////////

            objSheet.Shapes.AddPicture(sFileImage, Microsoft.Office.Core.MsoTriState.msoFalse, Microsoft.Office.Core.MsoTriState.msoCTrue, 10, 10, 700, 350);
            objWorkBook.SaveAs(sFilePath, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing,
            Microsoft.Office.Interop.Excel.XlSaveAsAccessMode.xlExclusive, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing);
        }
        catch (Exception ex)
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