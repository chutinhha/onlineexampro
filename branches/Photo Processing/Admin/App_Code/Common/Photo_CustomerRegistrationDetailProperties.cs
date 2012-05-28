using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_CustomerRegistrationDetailProperties
/// </summary>
public abstract class Photo_CustomerRegistrationDetailProperties
{
    private long customer_id, mobile;

    public long Mobile
    {
        get { return mobile; }
        set { mobile = value; }
    }

    public long Customer_id
    {
        get { return customer_id; }
        set { customer_id = value; }
    }
    private string email, password, profile_Image, full_Name;

    public string Full_Name
    {
        get { return full_Name; }
        set { full_Name = value; }
    }



    public string Profile_Image
    {
        get { return profile_Image; }
        set { profile_Image = value; }
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
    private int country, error_count, email_Subs, sMS_Subs, activationStatus_Mail, activationStatus_Mobile, status;

    public int Status
    {
        get { return status; }
        set { status = value; }
    }

    public int ActivationStatus_Mobile
    {
        get { return activationStatus_Mobile; }
        set { activationStatus_Mobile = value; }
    }

    public int ActivationStatus_Mail
    {
        get { return activationStatus_Mail; }
        set { activationStatus_Mail = value; }
    }

    public int SMS_Subs
    {
        get { return sMS_Subs; }
        set { sMS_Subs = value; }
    }

    public int Email_Subs
    {
        get { return email_Subs; }
        set { email_Subs = value; }
    }

    public int Error_count
    {
        get { return error_count; }
        set { error_count = value; }
    }

    public int Country
    {
        get { return country; }
        set { country = value; }
    }
    private DateTime reg_Date, last_Login, dOB;

    public DateTime DOB
    {
        get { return dOB; }
        set { dOB = value; }
    }

    public DateTime Last_Login
    {
        get { return last_Login; }
        set { last_Login = value; }
    }

    public DateTime Reg_Date
    {
        get { return reg_Date; }
        set { reg_Date = value; }
    }
}