using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data.SqlClient;

public partial class SearchResponse : System.Web.UI.Page
{
    protected void Page_Load(object sender, System.EventArgs e)
    {
        double dmlSearchLatitude = 0;
        double dmlSearchLongitude = 0;
        Int32 intSearchRadius = default(Int32);

        if (!string.IsNullOrEmpty(Request.QueryString["lat"]))
        {
            dmlSearchLatitude = Convert.ToDouble(Request.QueryString["lat"]);
        }
        if (!string.IsNullOrEmpty(Request.QueryString["lng"]))
        {
            dmlSearchLongitude = Convert.ToDouble(Request.QueryString["lng"]);
        }
        if (!string.IsNullOrEmpty(Request.QueryString["radius"]))
        {
            intSearchRadius = Convert.ToInt32(Request.QueryString["radius"]);
        }

        // Here you make the call to your locations stored procedure
        // This database call is a little messy but is just to show you the point.
        // You should really use the MS Application Blocks and/or some other seperate data layer
        SqlConnection connDB = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        connDB.ConnectionString = "Server=(local);Database=Test;Trusted_Connection=True;";
        connDB.Open();
        cmd.Connection = connDB;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandTimeout = 20;
        cmd.CommandText = "dbo.proc_Location_List";
        cmd.Parameters.AddWithValue("@dmlLat", dmlSearchLatitude);
        cmd.Parameters.AddWithValue("@dmlLng", dmlSearchLongitude);
        cmd.Parameters.AddWithValue("@intRadius", intSearchRadius);

        // Execute the stored procedure and return the result as plain XML
        XmlReader rdrXMLLocations = null;
        rdrXMLLocations = cmd.ExecuteXmlReader();

        Response.Expires = 0;
        Response.ContentType = "text/xml";
        XmlDocument oDocument = new XmlDocument();
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        using (rdrXMLLocations)
        {
            while (!rdrXMLLocations.EOF)
            {
                rdrXMLLocations.MoveToContent();
                sb.Append(rdrXMLLocations.ReadOuterXml());
            }
            rdrXMLLocations.Close();
        }
        oDocument.LoadXml(sb.ToString());
        oDocument.Save(Response.Output);
        Response.OutputStream.Flush();
        Response.OutputStream.Close();

    }
}