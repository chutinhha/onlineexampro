using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_Customer_StatusProperties
/// </summary>
public abstract class Photo_Customer_StatusProperties
{
    private int status_id;

    public int Status_id
    {
        get { return status_id; }
        set { status_id = value; }
    }
    private string status_name;

    public string Status_name
    {
        get { return status_name; }
        set { status_name = value; }
    }
}