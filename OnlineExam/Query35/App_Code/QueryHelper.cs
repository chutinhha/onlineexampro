using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for QueryHelper
/// </summary>
public class QueryHelper
{
	public QueryHelper()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private static object key = new object();
    public static QueryDataContext Context
    {
        get
        {
            if (HttpContext.Current.Items.Contains(key) == false)
            {
                var obj = new QueryDataContext();
                HttpContext.Current.Items.Add(key, obj);
                return obj;
            }
            else
            {
                return (QueryDataContext)HttpContext.Current.Items[key];
            }
        }
    }
}