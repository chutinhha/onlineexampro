using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Photo_Shipping_AddressBL
/// </summary>
public class Photo_Shipping_AddressBL:Photo_Shipping_AddressProperties,IPhotoProcessing
{
    public Photo_Shipping_AddressBL(long shipping_id, string ship_Name, string ship_Address, int ship_zipcode, int ship_Country, int ship_State, string ship_City, string ship_Mail, long ship_Phone, long ship_Mobile)
	{
        this.Ship_Address = ship_Address;
        this.Ship_City = ship_City;
        this.Ship_Country = ship_Country;
        this.Ship_Mail = ship_Mail;
        this.Ship_Mobile = ship_Mobile;
        this.Ship_Name = ship_Name;
        this.Ship_Phone = ship_Phone;
        this.Ship_State = ship_State;
        this.Ship_zipcode = ship_zipcode;
        this.Shipping_id = shipping_id;
	}
    public Photo_Shipping_AddressBL( string ship_Name, string ship_Address, int ship_zipcode, int ship_Country, int ship_State, string ship_City, string ship_Mail, long ship_Phone, long ship_Mobile)
    {
        this.Ship_Address = ship_Address;
        this.Ship_City = ship_City;
        this.Ship_Country = ship_Country;
        this.Ship_Mail = ship_Mail;
        this.Ship_Mobile = ship_Mobile;
        this.Ship_Name = ship_Name;
        this.Ship_Phone = ship_Phone;
        this.Ship_State = ship_State;
        this.Ship_zipcode = ship_zipcode;
    }
    public Photo_Shipping_AddressBL(long shipping_id)
    {
        this.Shipping_id = shipping_id;
    }
    public Photo_Shipping_AddressBL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool Insert()
    {
        return Photo_Shipping_AddressDL.Insert(this);
    }

    public bool Update()
    {
        return Photo_Shipping_AddressDL.Update(this);
    }

    public bool Delete()
    {
        return Photo_Shipping_AddressDL.Delete(this);
    }
}