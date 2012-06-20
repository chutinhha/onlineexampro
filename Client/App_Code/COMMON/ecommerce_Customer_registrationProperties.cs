using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_Customer_registrationProperties
/// </summary>
public abstract class ecommerce_Customer_registrationProperties
{
    private int customer_id, error_count;

    public int Error_count
    {
        get { return error_count; }
        set { error_count = value; }
    }

    public int Customer_id
    {
        get { return customer_id; }
        set { customer_id = value; }
    }
    private long mobile;

    public long Mobile
    {
        get { return mobile; }
        set { mobile = value; }
    }
    private DateTime date, last_login;

    public DateTime Last_login
    {
        get { return last_login; }
        set { last_login = value; }
    }

    public DateTime Date
    {
        get { return date; }
        set { date = value; }
    }
    private string email, password, city, cus_Status, profile_image, first_name, last_name, dOB, email_Subs, sms_Subs;

    public string Sms_Subs
    {
        get { return sms_Subs; }
        set { sms_Subs = value; }
    }

    public string Email_Subs
    {
        get { return email_Subs; }
        set { email_Subs = value; }
    }

    public string DOB
    {
        get { return dOB; }
        set { dOB = value; }
    }

    public string Last_name
    {
        get { return last_name; }
        set { last_name = value; }
    }

    public string First_name
    {
        get { return first_name; }
        set { first_name = value; }
    }

    public string Profile_image
    {
        get { return profile_image; }
        set { profile_image = value; }
    }

    public string Cus_Status
    {
        get { return cus_Status; }
        set { cus_Status = value; }
    }

    public string City
    {
        get { return city; }
        set { city = value; }
    }

    public string Password
    {
        get { return password; }
        set { password = value; }
    }

    public string Email
    {
        get { return email; }
        set { email = value; }
    }

}