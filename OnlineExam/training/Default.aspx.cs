using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            using (var obj = new DataClassesDataContext())
            {
                GridView1.DataSource = obj.tblTris.Select(a => a);
                GridView1.DataBind();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Stream str = FileUpload1.PostedFile.InputStream;
        int len = FileUpload1.PostedFile.ContentLength;
        byte[] byt = new byte[len];
        str.Read(byt, 0, len);

        using (var obj = new DataClassesDataContext())
        {
            var objj = new tblTri();
            objj.Imag = byt;
            objj.Name = TextBox1.Text;
            obj.tblTris.InsertOnSubmit(objj);
            obj.SubmitChanges();
            Image1.ImageUrl = "Handler.ashx?id=" + objj.Id;
        }
    }
}