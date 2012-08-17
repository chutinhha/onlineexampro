using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using DAL;


/// <summary>
/// Summary description for PhotoProcessingHelper
/// </summary>
public class PayrollHelper
{
    public PayrollHelper()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    private static object key = new object();
    public static PayrollDataClassesDataContext Context
    {
        get
        {
            if (HttpContext.Current.Items.Contains(key) == false)
            {
                var obj = new PayrollDataClassesDataContext();
                HttpContext.Current.Items.Add(key, obj);
                return obj;
            }
            else
            {
                return (PayrollDataClassesDataContext)HttpContext.Current.Items[key];
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