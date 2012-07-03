using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_Billing_AddressProperties
/// </summary>
public abstract class ecommerce_Billing_AddressProperties
{
    private int billing_id, bill_State, bill_Country, bill_zipcode;

    public int Bill_Country
    {
        get { return bill_Country; }
        set { bill_Country = value; }
    }

    public int Bill_State
    {
        get { return bill_State; }
        set { bill_State = value; }
    }
    private string bil_Name, bill_Address, bill_City,  bill_Mail;
    private long bill_Phone;

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

    public string Bil_Name
    {
        get { return bil_Name; }
        set { bil_Name = value; }
    }

    public long Bill_Phone
    {
        get { return bill_Phone; }
        set { bill_Phone = value; }
    }
    public int Bill_zipcode
    {
        get { return bill_zipcode; }
        set { bill_zipcode = value; }
    }

    public int Billing_id
    {
        get { return billing_id; }
        set { billing_id = value; }
    }

}