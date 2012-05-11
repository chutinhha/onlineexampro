using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void qqq_Click(object sender, EventArgs e)
    {
        Button btn = (Button)Master.FindControl("Button1");
     //   btn.Click += new EventHandler(Button1_Click);
      //  btn.Click += new EventHandler(this, new System.EventArgs());
        //Response.Write(FileUpload1.FileName);
    }
   
  
}