using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Grid : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=MAJ-056\SQLEXPRESS;Initial Catalog=Working;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }
    private void BindGrid()
    {
        SqlCommand cmd = new SqlCommand("select * from tblUser", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Columns.Count; i++)
            {
                if (i == 0)
                {
                    HyperLinkField b = new HyperLinkField();
                    b.HeaderText = dt.Columns[i].ColumnName;
                    b.DataTextField = dt.Columns[i].ColumnName;
                    b.DataNavigateUrlFormatString = "Default.aspx?Id={0}";
                    b.DataNavigateUrlFields = new string[] { dt.Columns[i].ColumnName };
                    b.Target = "_blank";
                    GridView1.Columns.Add(b);
                }
                else
                {
                    BoundField b = new BoundField();
                    b.HeaderText = dt.Columns[i].ColumnName;
                    b.DataField = dt.Columns[i].ColumnName;
                    GridView1.Columns.Add(b);
                }
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}