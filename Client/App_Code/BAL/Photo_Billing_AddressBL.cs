using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_Billing_AddressBL
/// </summary>
public class Photo_Billing_AddressBL : Photo_Billing_AddressProperties, IPhotoProcessing
{
    public Photo_Billing_AddressBL(long billing_id, int bill_zipcode, int bill_Country, int bill_State, string bill_Name, string bill_Address, string bill_City, string bill_Mail, long bill_Mobile)
    {
        this.Billing_id = billing_id;
        this.Bill_zipcode = bill_zipcode;
        this.Bill_Country = bill_Country;
        this.Bill_State = bill_State;
        this.Bill_Name = bill_Name;
        this.Bill_Address = bill_Address;
        this.Bill_City = bill_City;
        this.Bill_Mail = bill_Mail;
        this.Bill_Mobile = bill_Mobile;
    }
    public Photo_Billing_AddressBL(int bill_zipcode, int bill_Country, int bill_State, string bill_Name, string bill_Address, string bill_City, string bill_Mail, long bill_Mobile)
    {
        this.Bill_zipcode = bill_zipcode;
        this.Bill_Country = bill_Country;
        this.Bill_State = bill_State;
        this.Bill_Name = bill_Name;
        this.Bill_Address = bill_Address;
        this.Bill_City = bill_City;
        this.Bill_Mail = bill_Mail;
        this.Bill_Mobile = bill_Mobile;
    }
    public Photo_Billing_AddressBL(long billing_id)
    {
        this.Billing_id = billing_id;
    }
    public Photo_Billing_AddressBL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool Insert()
    {
        return Photo_Billing_AddressDL.Insert(this);
    }

    public bool Update()
    {
        return Photo_Billing_AddressDL.Update(this);
    }

    public bool Delete()
    {
        return Photo_Billing_AddressDL.Delete(this);
    }
}