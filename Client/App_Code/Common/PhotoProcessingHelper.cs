using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;


/// <summary>
/// Summary description for PhotoProcessingHelper
/// </summary>
public class PhotoProcessingHelper
{
	public PhotoProcessingHelper()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private static object key = new object();
    public static PhotoProcessingDataContext Context
    {
        get
        {
            if (HttpContext.Current.Items.Contains(key) == false)
            {
                var obj = new PhotoProcessingDataContext();
                HttpContext.Current.Items.Add(key, obj);
                return obj;
            }
            else
            {
                return (PhotoProcessingDataContext)HttpContext.Current.Items[key];
            }
        }
    }
    public static SqlConnection Connection
    {
        get
        {
            if (HttpContext.Current.Items.Contains(key) == false)
            {
                SqlConnection obj = new SqlConnection();
                HttpContext.Current.Items.Add(key, obj);
                return obj;
            }
            else
            {
                return (SqlConnection)HttpContext.Current.Items[key];
            }
        }
    }
}