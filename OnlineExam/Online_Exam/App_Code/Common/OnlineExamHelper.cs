using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


/// <summary>
/// Summary description for OnlineExamHelper
/// </summary>
public class OnlineExamHelper
{
	public OnlineExamHelper()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private static object key = new object();
    public static OnlineExamDataContext Context
    {
        get
        {
            if (HttpContext.Current.Items.Contains(key) == false)
            {
                var obj = new OnlineExamDataContext();
                HttpContext.Current.Items.Add(key, obj);
                return obj;
            }
            else
            {
                return (OnlineExamDataContext)HttpContext.Current.Items[key];
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