using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_Change_pwd_logProperties
/// </summary>
public abstract class ecommerce_Change_pwd_logProperties
{
    private int change_pwd_id, customer_id;

    public int Customer_id
    {
        get { return customer_id; }
        set { customer_id = value; }
    }

    public int Change_pwd_id
    {
        get { return change_pwd_id; }
        set { change_pwd_id = value; }
    }
    private string new_pwd, old_pwd;

    public string Old_pwd
    {
        get { return old_pwd; }
        set { old_pwd = value; }
    }

    public string New_pwd
    {
        get { return new_pwd; }
        set { new_pwd = value; }
    }
    private DateTime date;

    public DateTime Date
    {
        get { return date; }
        set { date = value; }
    }

}