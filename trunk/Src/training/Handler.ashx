<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Linq;
using System.Data.SqlClient;

public class Handler : IHttpHandler
{


    readonly SqlConnection _con = new SqlConnection(@"Data Source=MAJ-056\SQLEXPRESS;Initial Catalog=Training;Integrated Security=True");

    public void ProcessRequest(HttpContext context)
    {
        int id = Convert.ToInt16(context.Request.QueryString["id"]);

        SqlCommand cmd = new SqlCommand("select * from tbltri where id='" + id + "'", _con);
        _con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            context.Response.BinaryWrite((byte[])dr["imag"]);
        }
        _con.Close();
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}