using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Photo_PhysicalCopyDetailDL
/// </summary>
internal class Photo_PhysicalCopyDetailDL
{

    internal static bool Insert(Photo_PhysicalCopyDetailBL photo_PhysicalCopyDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_PhysicalCopyDetailNewInsertCommand(photo_PhysicalCopyDetailBL.PhysicalCopy_Type, photo_PhysicalCopyDetailBL.Quantity, photo_PhysicalCopyDetailBL.Ordered_Date, photo_PhysicalCopyDetailBL.Delivered_Date, photo_PhysicalCopyDetailBL.FkOrder_id, photo_PhysicalCopyDetailBL.Shipping_tax, photo_PhysicalCopyDetailBL.Tax, photo_PhysicalCopyDetailBL.FkBilling_Address, photo_PhysicalCopyDetailBL.FkShipping_Address, photo_PhysicalCopyDetailBL.Physical_Amount);
        return true;
    }

    internal static bool Update(Photo_PhysicalCopyDetailBL photo_PhysicalCopyDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_PhysicalCopyDetailNewUpdateCommand(photo_PhysicalCopyDetailBL.PhysicalCopy_Type, photo_PhysicalCopyDetailBL.Quantity, photo_PhysicalCopyDetailBL.Ordered_Date, photo_PhysicalCopyDetailBL.Delivered_Date, photo_PhysicalCopyDetailBL.FkOrder_id, photo_PhysicalCopyDetailBL.Shipping_tax, photo_PhysicalCopyDetailBL.Tax, photo_PhysicalCopyDetailBL.FkBilling_Address, photo_PhysicalCopyDetailBL.FkShipping_Address, photo_PhysicalCopyDetailBL.Physical_Amount,photo_PhysicalCopyDetailBL.Physical_id,photo_PhysicalCopyDetailBL.Physical_id);

        return true;
    }

    internal static bool Delete(Photo_PhysicalCopyDetailBL photo_PhysicalCopyDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_PhysicalCopyDetailNewDeleteCommand(photo_PhysicalCopyDetailBL.Physical_id);
        return true;
    }
}