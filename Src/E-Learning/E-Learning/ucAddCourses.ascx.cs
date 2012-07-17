using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning
{
    public partial class ucAddCourses : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            GridView1.DataSource = from a in ElearningHelper.Context.tblCourses select a;
            GridView1.DataBind();
           
        }

        private void emptyfield()
        {
            txtCourseName.Text = string.Empty;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var obj = new ELearningDataContext())
            {
                var aa = new tblCourse();
                aa.CourseName = txtCourseName.Text;
                obj.tblCourses.InsertOnSubmit(aa);
                obj.SubmitChanges();
            }
            BindGrid();
            lblAdd.Text = "Category Added";
            emptyfield();
        }
        
    }
}