using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_Billing_AddressProperties
/// </summary>
public abstract class Photo_Billing_AddressProperties
{
    private long billing_id, bill_Mobile;

    public long Bill_Mobile
    {
        get { return bill_Mobile; }
        set { bill_Mobile = value; }
    }



    public long Billing_id
    {
        get { return billing_id; }
        set { billing_id = value; }
    }
    private int bill_zipcode, bill_Country, bill_State;

    public int Bill_State
    {
        get { return bill_State; }
        set { bill_State = value; }
    }

    public int Bill_Country
    {
        get { return bill_Country; }
        set { bill_Country = value; }
    }

    public int Bill_zipcode
    {
        get { return bill_zipcode; }
        set { bill_zipcode = value; }
    }
    private string bill_Name, bill_Address, bill_City, bill_Mail;

    public string Bill_Mail
    {
        get { return bill_Mail; }
        set { bill_Mail = value; }
    }

    public string Bill_City
    {
        get { return bill_City; }
        set { bill_City = value; }
    }

    public string Bill_Address
    {
        get { return bill_Address; }
        set { bill_Address = value; }
    }

    public string Bill_Name
    {
        get { return bill_Name; }
        set { bill_Name = value; }
    }
}