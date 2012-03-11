using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_adminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CreateControls();
    }

    private void CreateControls()
    {
        var ss = OnlineExamHelper.Context.OnlineCategories.Select(a => a);
        Table tbl = new Table();
        foreach (var item in ss)
        {
            TableRow tr = new TableRow();
            TableCell td = new TableCell();
            CheckBox chk = new CheckBox();
            chk.Text = item.Category;
            td.Controls.Add(chk);
            TableCell td1 = new TableCell();
            TextBox txt = new TextBox();
            td1.Controls.Add(txt);
            tr.Controls.Add(td);
            tr.Controls.Add(td1);
            tbl.Controls.Add(tr);
        }
        PlaceHolder1.Controls.Add(tbl);
    }
    protected void btnAssign_Click(object sender, EventArgs e)
    {

    }
}