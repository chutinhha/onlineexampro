using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlServer.DataSource = GetInstanceName();
            ddlServer.DataTextField = "ServerName";
            ddlServer.DataBind();
        }
        Panel1.Enabled = false;
    }

    public static ArrayList GetInstanceName()
    {
        try
        {
            SqlServerList SqlSL = new SqlServerList();
            SqlDataSourceEnumerator instance = SqlDataSourceEnumerator.Instance;
            DataTable table = instance.GetDataSources();
            ArrayList list = new ArrayList();
            foreach (DataRow row in table.Rows)
            {
                SqlSL = new SqlServerList();
                if (!string.IsNullOrEmpty(Convert.ToString(row[1])))
                {
                    SqlSL.ServerName = row[0].ToString() + "\\" + row[1].ToString();
                }
                else
                {
                    SqlSL.ServerName = row[0].ToString();
                }
                //SqlSL.InstanceName = row[1].ToString();
                SqlSL.IsClustered = row[2].ToString();
                SqlSL.Version = row[3].ToString();
                list.Add(SqlSL);
            }
            return list;
        }
        catch
        {
            return null;
        }
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "0")
        {
            Panel1.Enabled = false;
        }
        else if (RadioButtonList1.SelectedValue == "1")
        {
            Panel1.Enabled = true;
        }
    }

    protected void btnLoadDB_Click(object sender, EventArgs e)
    {
        ddlDB.DataSource = GetDBs();
        ddlDB.DataTextField = "NAME";
        ddlDB.DataBind();
    }

    private DataTable GetDBs()
    {
        string connectionString = string.Empty;
        if (RadioButtonList1.SelectedValue == "0")
        {
            Panel1.Enabled = false;
            connectionString = "Data Source=" + ddlServer.SelectedItem.Text + ";Initial Catalog=master;Integrated Security=True";
        }
        else if (RadioButtonList1.SelectedValue == "1")
        {
            Panel1.Enabled = true;
            connectionString = "Data Source=" + ddlServer.SelectedItem.Text + ";Initial Catalog=master;User ID=" + txtUserId.Text + ";Password=" + txtPassword.Text;
        }
        ViewState["ConnectionString"] = connectionString;
        DataTable dt = new DataTable();
        using (var con = new SqlConnection(connectionString))
        {
            SqlCommand cmd = new SqlCommand("SELECT NAME FROM SYS.DATABASES WHERE DATABASE_ID>4", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
        }
        return dt;
    }

    protected void ddlDB_SelectedIndexChanged(object sender, EventArgs e)
    {
        CheckBoxList1.DataSource = GetTables();
        CheckBoxList1.DataTextField = "NAME";
        CheckBoxList1.DataValueField = "OBJECT_ID";
        CheckBoxList1.DataBind();
        foreach (ListItem item in CheckBoxList1.Items)
        {
            item.Selected = true;
        }
    }

    private DataTable GetTables()
    {
        string connectionString = Convert.ToString(ViewState["ConnectionString"]);
        connectionString = connectionString.Replace("master", ddlDB.SelectedItem.Text);
        ViewState["ConnectionString"] = connectionString;
        DataTable dt = new DataTable();
        using (var con = new SqlConnection(connectionString))
        {
            SqlCommand cmd = new SqlCommand("SELECT NAME,OBJECT_ID FROM SYS.TABLES", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
        }
        return dt;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Dictionary<string, string> obj = new Dictionary<string, string>();
        string connectionString = Convert.ToString(ViewState["ConnectionString"]);
        StringBuilder sb = new StringBuilder();
        string[] interfaceNames = connectionString.Split(';');
        string[] interfaceNames1 = interfaceNames[1].Split('=');
        string interfaceName = interfaceNames1[1];
        StreamWriter sw = File.AppendText(Server.MapPath("~/App_Code/Common/I" + interfaceName + ".cs"));
        sb.AppendLine("using System;");
        sb.AppendLine("using System.Collections.Generic;");
        sb.AppendLine("using System.Linq;");
        sb.AppendLine("using System.Web;");
        sb.AppendLine("");
        sb.AppendLine("/// <summary>");
        sb.AppendLine("/// Summary description for I" + interfaceName + "");
        sb.AppendLine("/// </summary>");
        sb.AppendLine("interface I" + interfaceName + "");
        sb.AppendLine("{");
        sb.AppendLine("    bool Insert();");
        sb.AppendLine("    bool Update();");
        sb.AppendLine("    bool Delete();");
        sb.AppendLine("}");
        sw.Write(sb.ToString());
        sw.Close();
        string dataType, maxLength, columnName, variableName, sqlDataType;
        dataType = maxLength = columnName = variableName = sqlDataType = string.Empty;
        DataTable dt;
        using (var con = new SqlConnection(connectionString))
        {
            foreach (ListItem item in CheckBoxList1.Items)
            {
                obj = new Dictionary<string, string>();
                if (item.Selected)
                {
                    dt = new DataTable();
                    SqlCommand cmd = new SqlCommand("SELECT A.NAME,A.MAX_LENGTH,B.NAME DATA_TYPE FROM SYS.COLUMNS A JOIN SYS.TYPES B ON A.SYSTEM_TYPE_ID=B.SYSTEM_TYPE_ID WHERE A.OBJECT_ID=" + item.Value + "", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    sb = new StringBuilder();
                    sb.AppendLine("using System;");
                    sb.AppendLine("using System.Collections.Generic;");
                    sb.AppendLine("using System.Linq;");
                    sb.AppendLine("using System.Web;");
                    sb.AppendLine("");
                    sb.AppendLine("/// <summary>");
                    sb.AppendLine("/// Summary description for Class1");
                    sb.AppendLine("/// </summary>");
                    sb.AppendLine("public abstract class " + item.Text + "Properties");
                    sb.AppendLine("{");
                    string[] names = Enum.GetNames(typeof(SqlDbType));
                    foreach (DataRow item1 in dt.Rows)
                    {
                        columnName = item1[0].ToString();
                        maxLength = item1[1].ToString();
                        foreach (string item11 in names)
                        {
                            if (item11.ToLower() == item1[2].ToString())
                            {
                                sqlDataType = item11;
                            }
                        }
                        //sqlDataType = item1[2].ToString();
                        SqlDbType s = (SqlDbType)Enum.Parse(typeof(SqlDbType), sqlDataType);
                        switch (s)
                        {
                            case SqlDbType.BigInt:
                                dataType = "long";
                                break;
                            case SqlDbType.Binary:
                                dataType = "byte[]";
                                break;
                            case SqlDbType.Bit:
                                dataType = "bool";
                                break;
                            case SqlDbType.Char:
                                dataType = "char";
                                break;
                            case SqlDbType.Date:
                                dataType = "DateTime";
                                break;
                            case SqlDbType.DateTime:
                                dataType = "DateTime";
                                break;
                            case SqlDbType.DateTime2:
                                dataType = "DateTime";
                                break;
                            case SqlDbType.DateTimeOffset:
                                dataType = "DateTime";
                                break;
                            case SqlDbType.Decimal:
                                dataType = "decimal";
                                break;
                            case SqlDbType.Float:
                                dataType = "float";
                                break;
                            case SqlDbType.Image:
                                dataType = "byte[]";
                                break;
                            case SqlDbType.Int:
                                dataType = "int";
                                break;
                            case SqlDbType.Money:
                                dataType = "double";
                                break;
                            case SqlDbType.NChar:
                                dataType = "char";
                                break;
                            case SqlDbType.NText:
                                dataType = "string";
                                break;
                            case SqlDbType.NVarChar:
                                dataType = "string";
                                break;
                            case SqlDbType.Real:
                                dataType = "int";
                                break;
                            case SqlDbType.SmallDateTime:
                                dataType = "DateTime";
                                break;
                            case SqlDbType.SmallInt:
                                dataType = "short";
                                break;
                            case SqlDbType.SmallMoney:
                                dataType = "double";
                                break;
                            case SqlDbType.Structured:
                                dataType = "string";
                                break;
                            case SqlDbType.Text:
                                dataType = "string";
                                break;
                            case SqlDbType.Time:
                                dataType = "DateTime";
                                break;
                            case SqlDbType.Timestamp:
                                dataType = "DateTime";
                                break;
                            case SqlDbType.TinyInt:
                                dataType = "byte";
                                break;
                            case SqlDbType.Udt:
                                dataType = "string";
                                break;
                            case SqlDbType.UniqueIdentifier:
                                dataType = "Guid";
                                break;
                            case SqlDbType.VarBinary:
                                dataType = "byte[]";
                                break;
                            case SqlDbType.VarChar:
                                dataType = "string";
                                break;
                            case SqlDbType.Variant:
                                dataType = "string";
                                break;
                            case SqlDbType.Xml:
                                dataType = "string";
                                break;
                            default:
                                break;
                        }
                        //sb.AppendLine("public Class1()");
                        //sb.AppendLine("{");
                        //sb.AppendLine("//");
                        //sb.AppendLine("// TODO: Add constructor logic here");
                        //sb.AppendLine("//");
                        //sb.AppendLine("}");
                        char[] charr = columnName.ToCharArray();
                        if (char.IsUpper(charr[0]))
                        {
                            variableName = columnName + "1";
                        }
                        else
                        {
                            charr[0] = char.ToUpper(charr[0]);
                            variableName = new string(charr);
                        }
                        sb.AppendLine("    public " + dataType + " " + variableName + " { get; set; }");
                        obj.Add(variableName, dataType);
                    }
                    sb.AppendLine("}");
                }
                sw = File.AppendText(Server.MapPath("~/App_Code/Common/" + item.Text + "Properties.cs"));
                sw.Write(sb.ToString());
                sw.Close();
                sb = new StringBuilder();
                sb.AppendLine("using System;");
                sb.AppendLine("using System.Collections.Generic;");
                sb.AppendLine("using System.Linq;");
                sb.AppendLine("using System.Web;");
                sb.AppendLine("");
                sb.AppendLine("/// <summary>");
                sb.AppendLine("/// Summary description for " + item.Text + "BL");
                sb.AppendLine("/// </summary>");
                sb.AppendLine("public class " + item.Text + "BL : " + item.Text + "Properties, I" + interfaceName + "");
                sb.AppendLine("{");
                sb.AppendLine("    #region Constructors");
                sb.AppendLine("");
                sb.AppendLine("    public " + item.Text + "BL(");
                int i = 1;
                int y = 0;
                foreach (var dd in obj)
                {
                    if (y != 0)
                    {
                        if (i == obj.Count)
                        {
                            char[] ch = dd.Key.ToCharArray();
                            string vaar = string.Empty;
                            if (char.IsUpper(ch[0]))
                            {
                                ch[0] = char.ToLower(ch[0]);
                                vaar = new string(ch);
                            }
                            else
                            {
                                vaar = new string(ch);
                                vaar = vaar.Remove(vaar.Length - 1);
                            }

                            sb.Append(dd.Value + " " + vaar);
                        }
                        else
                        {
                            char[] ch = dd.Key.ToCharArray();
                            string vaar = string.Empty;
                            if (char.IsUpper(ch[0]))
                            {
                                ch[0] = char.ToLower(ch[0]);
                                vaar = new string(ch);
                            }
                            else
                            {
                                vaar = new string(ch);
                                vaar = vaar.Remove(vaar.Length - 1);
                            }
                            sb.Append(dd.Value + " " + vaar + ", ");
                            //i++;
                        }
                    }
                    i++;
                    y++;
                }
                sb.Append(")");
                sb.AppendLine("    {");
                y = 0;
                foreach (var dd in obj)
                {
                    if (y != 0)
                    {
                        char[] ch = dd.Key.ToCharArray();
                        string vaar = string.Empty;
                        if (char.IsUpper(ch[0]))
                        {
                            ch[0] = char.ToLower(ch[0]);
                            vaar = new string(ch);
                        }
                        else
                        {
                            vaar = new string(ch);
                            vaar = vaar.Remove(vaar.Length - 1);
                        }
                        sb.AppendLine("        this." + dd.Key + " = " + vaar + ";");
                    }
                    y++;
                }
                sb.AppendLine("    }");
                sb.AppendLine("    public " + item.Text + "BL(");
                i = 1;
                foreach (var dd in obj)
                {                    
                    if (i == obj.Count)
                    {
                        char[] ch = dd.Key.ToCharArray();
                        string vaar = string.Empty;
                        if (char.IsUpper(ch[0]))
                        {
                            ch[0] = char.ToLower(ch[0]);
                            vaar = new string(ch);
                        }
                        else
                        {
                            vaar = new string(ch);
                            vaar = vaar.Remove(vaar.Length - 1);
                        }

                        sb.Append(dd.Value + " " + vaar);
                    }
                    else
                    {
                        char[] ch = dd.Key.ToCharArray();
                        string vaar = string.Empty;
                        if (char.IsUpper(ch[0]))
                        {
                            ch[0] = char.ToLower(ch[0]);
                            vaar = new string(ch);
                        }
                        else
                        {
                            vaar = new string(ch);
                            vaar = vaar.Remove(vaar.Length - 1);
                        }
                        sb.Append(dd.Value + " " + vaar + ", ");
                        i++;
                    }
                }
                sb.Append(")");
                sb.AppendLine("    {");
                foreach (var dd in obj)
                {
                    char[] ch = dd.Key.ToCharArray();
                    string vaar = string.Empty;
                    if (char.IsUpper(ch[0]))
                    {
                        ch[0] = char.ToLower(ch[0]);
                        vaar = new string(ch);
                    }
                    else
                    {
                        vaar = new string(ch);
                        vaar = vaar.Remove(vaar.Length - 1);
                    }
                    sb.AppendLine("        this." + dd.Key + " = " + vaar + ";");
                }
                sb.AppendLine("    }");
                sb.AppendLine("    public " + item.Text + "BL(");                
                y = 0;
                foreach (var dd in obj)
                {
                    if (y == 0)
                    {
                        char[] ch = dd.Key.ToCharArray();
                        string vaar = string.Empty;
                        if (char.IsUpper(ch[0]))
                        {
                            ch[0] = char.ToLower(ch[0]);
                            vaar = new string(ch);
                        }
                        else
                        {
                            vaar = new string(ch);
                            vaar = vaar.Remove(vaar.Length - 1);
                        }
                        sb.Append(dd.Value + " " + vaar);                        
                        y++;
                    }
                }
                sb.Append(")");
                sb.AppendLine("    {");
                y = 0;
                foreach (var dd in obj)
                {
                    if (y == 0)
                    {
                        char[] ch = dd.Key.ToCharArray();
                        string vaar = string.Empty;
                        if (char.IsUpper(ch[0]))
                        {
                            ch[0] = char.ToLower(ch[0]);
                            vaar = new string(ch);
                        }
                        else
                        {
                            vaar = new string(ch);
                            vaar = vaar.Remove(vaar.Length - 1);
                        }
                        sb.AppendLine("        this." + dd.Key + " = " + vaar + ";");
                    }
                    y++;
                }
                sb.AppendLine("    }");
                sb.AppendLine("    public " + item.Text + "BL()");
                sb.AppendLine("    {");
                sb.AppendLine("");
                sb.AppendLine("    }");
                sb.AppendLine("");
                sb.AppendLine("    #endregion");
                sb.AppendLine("");
                sb.AppendLine("    #region I" + interfaceName + " Methods");
                sb.AppendLine("");
                sb.AppendLine("    public bool Insert()");
                sb.AppendLine("    {");
                sb.AppendLine("        return " + item.Text + "DL.Insert(this);");
                sb.AppendLine("    }");
                sb.AppendLine("");
                sb.AppendLine("    public bool Update()");
                sb.AppendLine("    {");
                sb.AppendLine("        return " + item.Text + "DL.Update(this);");
                sb.AppendLine("    }");
                sb.AppendLine("");
                sb.AppendLine("    public bool Delete()");
                sb.AppendLine("    {");
                sb.AppendLine("        return " + item.Text + "DL.Delete(this);");
                sb.AppendLine("    }");
                sb.AppendLine("");
                sb.AppendLine("    #endregion");
                sb.AppendLine("}");
                sw = File.AppendText(Server.MapPath("~/App_Code/BAL/" + item.Text + "BL.cs"));
                sw.Write(sb.ToString());
                sw.Close();
                sb = new StringBuilder();
                sb.AppendLine("using System;");
                sb.AppendLine("using System.Collections.Generic;");
                sb.AppendLine("using System.Linq;");
                sb.AppendLine("using System.Web;");
                sb.AppendLine("");
                sb.AppendLine("/// <summary>");
                sb.AppendLine("/// Summary description for " + item.Text + "DL");
                sb.AppendLine("/// </summary>");
                sb.AppendLine("internal class " + item.Text + "DL");
                sb.AppendLine("{");
                char[] fin = item.Text.ToCharArray();
                string aaa = string.Empty;
                if (char.IsUpper(fin[0]))
                {
                    fin[0] = char.ToLower(fin[0]);
                    aaa = new string(fin);
                }
                else
                {
                    aaa = item.Text + "1";
                }
                sb.AppendLine("    internal static bool Insert(" + item.Text + "BL " + aaa + "BL)");
                sb.AppendLine("    {");
                sb.AppendLine("        throw new NotImplementedException();");
                sb.AppendLine("    }");
                sb.AppendLine("");
                sb.AppendLine("    internal static bool Update(" + item.Text + "BL " + aaa + "BL)");
                sb.AppendLine("    {");
                sb.AppendLine("        throw new NotImplementedException();");
                sb.AppendLine("    }");
                sb.AppendLine("");
                sb.AppendLine("    internal static bool Delete(" + item.Text + "BL " + aaa + "BL)");
                sb.AppendLine("    {");
                sb.AppendLine("        throw new NotImplementedException();");
                sb.AppendLine("    }");
                sb.AppendLine("}");
                sw = File.AppendText(Server.MapPath("~/App_Code/DAL/" + item.Text + "DL.cs"));
                sw.Write(sb.ToString());
                sw.Close();
            }
        }
    }
}