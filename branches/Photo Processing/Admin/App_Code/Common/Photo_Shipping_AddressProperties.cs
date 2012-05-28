using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_Shipping_AddressProperties
/// </summary>
public abstract class Photo_Shipping_AddressProperties
{
    private Int64 shipping_id, ship_Phone, ship_Mobile;

    public Int64 Ship_Mobile
    {
        get { return ship_Mobile; }
        set { ship_Mobile = value; }
    }

    public Int64 Ship_Phone
    {
        get { return ship_Phone; }
        set { ship_Phone = value; }
    }

    public Int64 Shipping_id
    {
        get { return shipping_id; }
        set { shipping_id = value; }
    }
    private string ship_Name, ship_Address, ship_City, ship_Mail;

    public string Ship_Mail
    {
        get { return ship_Mail; }
        set { ship_Mail = value; }
    }

    public string Ship_City
    {
        get { return ship_City; }
        set { ship_City = value; }
    }

    public string Ship_Address
    {
        get { return ship_Address; }
        set { ship_Address = value; }
    }

    public string Ship_Name
    {
        get { return ship_Name; }
        set { ship_Name = value; }
    }
    private int ship_zipcode, ship_Country, ship_State;

    public int Ship_State
    {
        get { return ship_State; }
        set { ship_State = value; }
    }

    public int Ship_Country
    {
        get { return ship_Country; }
        set { ship_Country = value; }
    }

    public int Ship_zipcode
    {
        get { return ship_zipcode; }
        set { ship_zipcode = value; }
    }
	
}