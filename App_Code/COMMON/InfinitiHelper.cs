using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using DAL;

/// <summary>
/// Summary description for eCommerceHelper
/// </summary>
public class InfinitiHelper
{
    public InfinitiHelper()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private static object key = new object();
    public static InfinitiClothDataContext Context
    {
        get
        {
            if (HttpContext.Current.Items.Contains(key) == false)
            {
                var obj = new InfinitiClothDataContext();
                HttpContext.Current.Items.Add(key, obj);
                return obj;
            }
            else
            {
                return (InfinitiClothDataContext)HttpContext.Current.Items[key];
            }
        }
    }
    public static SqlConnection Connection
    {
        get
        {
            if (HttpContext.Current.Items.Contains(key) == false)
            {
                SqlConnection obj = new SqlConnection("");
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