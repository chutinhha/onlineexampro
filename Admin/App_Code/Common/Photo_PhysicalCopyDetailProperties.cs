using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_PhysicalCopyDetailProperties
/// </summary>
public abstract class Photo_PhysicalCopyDetailProperties
{
    private int physical_id;

    public int Physical_id
    {
        get { return physical_id; }
        set { physical_id = value; }
    }
    private string physicalCopy_Type, quantity;

    public string Quantity
    {
        get { return quantity; }
        set { quantity = value; }
    }

    public string PhysicalCopy_Type
    {
        get { return physicalCopy_Type; }
        set { physicalCopy_Type = value; }
    }
    private DateTime ordered_Date, delivered_Date;

    public DateTime Delivered_Date
    {
        get { return delivered_Date; }
        set { delivered_Date = value; }
    }

    public DateTime Ordered_Date
    {
        get { return ordered_Date; }
        set { ordered_Date = value; }
    }
    private long fkOrder_id, fkBilling_Address, fkShipping_Address;

    public long FkShipping_Address
    {
        get { return fkShipping_Address; }
        set { fkShipping_Address = value; }
    }

    public long FkBilling_Address
    {
        get { return fkBilling_Address; }
        set { fkBilling_Address = value; }
    }

    public long FkOrder_id
    {
        get { return fkOrder_id; }
        set { fkOrder_id = value; }
    }
    private decimal shipping_tax, tax, physical_Amount;

    public decimal Physical_Amount
    {
        get { return physical_Amount; }
        set { physical_Amount = value; }
    }

    public decimal Tax
    {
        get { return tax; }
        set { tax = value; }
    }

    public decimal Shipping_tax
    {
        get { return shipping_tax; }
        set { shipping_tax = value; }
    }
	
}