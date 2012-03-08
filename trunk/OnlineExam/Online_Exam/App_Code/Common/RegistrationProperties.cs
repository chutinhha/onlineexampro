using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RegistrationProperties
/// </summary>
public abstract class RegistrationProperties
{
    private long userId;

    public long UserId
    {
        get { return userId; }
        set { userId = value; }
    }
    private string name;

    public string Name
    {
        get { return name; }
        set { name = value; }
    }
    private long mobile;

    public long Mobile
    {
        get { return mobile; }
        set { mobile = value; }
    }
    private string email;

    public string Email
    {
        get { return email; }
        set { email = value; }
    }
    private DateTime date;

    public DateTime Date
    {
        get { return date; }
        set { date = value; }
    }

}