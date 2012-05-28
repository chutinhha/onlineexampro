using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Photo_PhysicalCopyDetailBL
/// </summary>
public class Photo_PhysicalCopyDetailBL:Photo_PhysicalCopyDetailProperties,IPhotoProcessing
{
    public Photo_PhysicalCopyDetailBL(int physical_id, string physicalCopy_Type, string quantity, DateTime ordered_Date, DateTime delivered_Date, long fkOrder_id, long fkBilling_Address, long fkShipping_Address, decimal shipping_tax, decimal tax, decimal physical_Amount)
    {
        this.Physical_id = physical_id;
        this.PhysicalCopy_Type = physicalCopy_Type;
        this.Quantity = quantity;
        this.Ordered_Date = ordered_Date;
        this.Delivered_Date = delivered_Date;
        this.FkOrder_id = fkOrder_id;
        this.FkBilling_Address = fkBilling_Address;
        this.FkShipping_Address = fkShipping_Address;
        this.Shipping_tax = shipping_tax;
        this.Tax = tax;
        this.Physical_Amount = physical_Amount;
    }
    public Photo_PhysicalCopyDetailBL( string physicalCopy_Type, string quantity, DateTime ordered_Date, DateTime delivered_Date, long fkOrder_id, long fkBilling_Address, long fkShipping_Address, decimal shipping_tax, decimal tax, decimal physical_Amount)
    {
        this.PhysicalCopy_Type = physicalCopy_Type;
        this.Quantity = quantity;
        this.Ordered_Date = ordered_Date;
        this.Delivered_Date = delivered_Date;
        this.FkOrder_id = fkOrder_id;
        this.FkBilling_Address = fkBilling_Address;
        this.FkShipping_Address = fkShipping_Address;
        this.Shipping_tax = shipping_tax;
        this.Tax = tax;
        this.Physical_Amount = physical_Amount;
    }
    public Photo_PhysicalCopyDetailBL(int physical_id)
    {
        this.Physical_id = physical_id;
    }
	public Photo_PhysicalCopyDetailBL()
	{
		
	}

    public bool Insert()
    {
        return Photo_PhysicalCopyDetailDL.Insert(this);
    }

    public bool Update()
    {
        return Photo_PhysicalCopyDetailDL.Update(this);
    }

    public bool Delete()
    {
        return Photo_PhysicalCopyDetailDL.Delete(this);
    }
}