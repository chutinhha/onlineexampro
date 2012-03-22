using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Microsoft.Office;
using Microsoft.Office.Interop.Word;

namespace E_Learning
{
    public partial class ucStudentNote : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindList();
            }
        }

        private void BindList()
        {
            dlNotes.DataSource = ElearningHelper.Context.sp_select_file();
            dlNotes.DataBind();
        }
        protected void dlNotes_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "View")
            {
                string path = Convert.ToString(e.CommandArgument);
                //System.Diagnostics.Process.Start(Server.MapPath(path));
            }
        }
    }
}