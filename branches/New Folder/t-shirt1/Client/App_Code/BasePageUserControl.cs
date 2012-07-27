using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BasePageUserControl
/// </summary>
public class BasePageUserControl : System.Web.UI.UserControl
{
	public BasePageUserControl()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool HasSessionValue
    {
        get
        {
            return string.IsNullOrEmpty(Convert.ToString(Session["Email"]));
        }
    }
    public string SessionValue
    {
        set
        {
            Session["Email"] = value;
        }
    }
    public string[] Email
    {
        get
        {
            return Convert.ToString(Session["Email"]).Split('|');
        }
    }
}