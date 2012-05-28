using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_Change_Password_logProperties
/// </summary>
public abstract class Photo_Change_Password_logProperties
{
    private int change_pwd_id;

    public int Change_pwd_id
    {
        get { return change_pwd_id; }
        set { change_pwd_id = value; }
    }
    private string new_Password, old_Password;

    public string Old_Password
    {
        get { return old_Password; }
        set { old_Password = value; }
    }

    public string New_Password
    {
        get { return new_Password; }
        set { new_Password = value; }
    }
    private DateTime date_of_change;

    public DateTime Date_of_change
    {
        get { return date_of_change; }
        set { date_of_change = value; }
    }
    private long fkCustomer_id;

    public long FkCustomer_id
    {
        get { return fkCustomer_id; }
        set { fkCustomer_id = value; }
    }
}