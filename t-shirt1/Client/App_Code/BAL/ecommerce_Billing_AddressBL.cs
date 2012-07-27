using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_Billing_AddressBL
/// </summary>
public class ecommerce_Billing_AddressBL:ecommerce_Billing_AddressProperties,IeCommerce
{

    public ecommerce_Billing_AddressBL(string bil_Name, string bill_Address, int bill_zipcode, string bill_City, int bill_State, int bill_Country, string bill_Mail, long bill_Phone, int fk_Customerid)
    {
        this.Bil_Name = bil_Name;
        this.Bill_Address = bill_Address;
        this.Bill_zipcode = bill_zipcode;
        this.Bill_City = bill_City;
        this.Bill_State = bill_State;
        this.Bill_Country = bill_Country;
        this.Bill_Mail = bill_Mail;
        this.Bill_Phone = bill_Phone;
        this.Fk_Customerid = fk_Customerid;
    }
    
    public ecommerce_Billing_AddressBL(int billing_id, string bil_Name, string bill_Address, int bill_zipcode, string bill_City, int bill_State, int bill_Country, string bill_Mail, long bill_Phone,int fk_Customerid)
	{
        this.Billing_id = billing_id;
        this.Bil_Name = bil_Name;
        this.Bill_Address = bill_Address;
        this.Bill_zipcode = bill_zipcode;
        this.Bill_City = bill_City;
        this.Bill_State = bill_State;
        this.Bill_Country = bill_Country;
        this.Bill_Mail = bill_Mail;
        this.Bill_Phone = bill_Phone;
        this.Fk_Customerid = fk_Customerid;

	}

    public ecommerce_Billing_AddressBL(int billing_id)
    {
        this.Billing_id = billing_id;
    }
    public ecommerce_Billing_AddressBL()
    {
    }

    public bool Insert()
    {
        return ecommerce_Billing_AddressDL.Insert(this);
    }

    public bool Update()
    {
        return ecommerce_Billing_AddressDL.Update(this);
    }

    public bool Delete()
    {
        return ecommerce_Billing_AddressDL.Delete(this);
    }
}