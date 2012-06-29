using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_Shipping_AddressProperties
/// </summary>
public abstract class ecommerce_Shipping_AddressProperties
{
    private int shipping_id, ship_State, ship_Country, ship_Zipcode;

    public int Ship_Country
    {
        get { return ship_Country; }
        set { ship_Country = value; }
    }

    public int Ship_State
    {
        get { return ship_State; }
        set { ship_State = value; }
    }

    public int Ship_Zipcode
    {
        get { return ship_Zipcode; }
        set { ship_Zipcode = value; }
    }

    public int Shipping_id
    {
        get { return shipping_id; }
        set { shipping_id = value; }
    }
    private long ship_Phone;

    public long Ship_Phone
    {
        get { return ship_Phone; }
        set { ship_Phone = value; }
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
}