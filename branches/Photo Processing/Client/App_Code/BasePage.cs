using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BasePage
/// </summary>
public class BasePage : System.Web.UI.Page
{
	public BasePage()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    //#region IsRefresh
    //private bool _refreshState;
    //private bool _isRefresh;
    //public bool IsRefresh
    //{
    //    get
    //    {
    //        return _isRefresh;
    //    }

    //}
    //protected override void LoadViewState(object savedState)
    //{
    //    object[] allStates = (object[])savedState;
    //    base.LoadViewState(allStates[0]);
    //    _refreshState = (bool)allStates[1];
    //    _isRefresh = _refreshState == (bool)Session["_ISREFRESH"];

    //}
    //protected override object SaveViewState()
    //{
    //    Session["_ISREFRESH"] = _refreshState;
    //    object[] allStates = new object[2];
    //    allStates[0] = base.SaveViewState();
    //    allStates[1] = !_refreshState;
    //    return allStates;

    //}
    //#endregion 

    public bool HasSessionValue    
    {
        get
        {
            return string.IsNullOrEmpty(Convert.ToString(Session["Email"]));
        }
    }
    public string[] SessionValue
    {
        get
        {
            return Convert.ToString(Session["Email"]).Split('|');
        }
    }
}