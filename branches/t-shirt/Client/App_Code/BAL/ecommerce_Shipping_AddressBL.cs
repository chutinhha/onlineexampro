using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_Shipping_AddressBL
/// </summary>
public class ecommerce_Shipping_AddressBL : ecommerce_Shipping_AddressProperties, IeCommerce
{
    public ecommerce_Shipping_AddressBL(int shipping_id, string ship_Name, string ship_Address, int ship_Zipcode, string ship_City, string ship_State, string ship_Country, string ship_Mail, long ship_Phone)
    {
        this.Shipping_id = shipping_id;
        this.Ship_Name = ship_Name;
        this.Ship_Address = ship_Address;
        this.Ship_Zipcode = ship_Zipcode;
        this.Ship_City = ship_City;
        this.Ship_State = ship_State;
        this.Ship_Country = ship_Country;
        this.Ship_Mail = ship_Mail;
        this.Ship_Phone = ship_Phone;

    }

    public ecommerce_Shipping_AddressBL(string ship_Name, string ship_Address, int ship_Zipcode, string ship_City, string ship_State, string ship_Country, string ship_Mail, long ship_Phone)
    {

        this.Ship_Name = ship_Name;
        this.Ship_Address = ship_Address;
        this.Ship_Zipcode = ship_Zipcode;
        this.Ship_City = ship_City;
        this.Ship_State = ship_State;
        this.Ship_Country = ship_Country;
        this.Ship_Mail = ship_Mail;
        this.Ship_Phone = ship_Phone;

    }

    public ecommerce_Shipping_AddressBL(int shipping_id)
    {
        this.Shipping_id = shipping_id;


    }


    public ecommerce_Shipping_AddressBL()
    {


    }

    public bool Insert()
    {
        return ecommerce_Shipping_AddressDL.Insert(this);
    }

    public bool Update()
    {
        return ecommerce_Shipping_AddressDL.Update(this);
    }

    public bool Delete()
    {
        return ecommerce_Shipping_AddressDL.Delete(this);
    }
}