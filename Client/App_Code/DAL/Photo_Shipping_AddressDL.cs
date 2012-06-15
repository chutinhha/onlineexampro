using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Photo_Shipping_AddressDL
/// </summary>
internal class Photo_Shipping_AddressDL
{
	
    internal static bool Insert(Photo_Shipping_AddressBL photo_Shipping_AddressBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_Shipping_AddressNewInsertCommand(photo_Shipping_AddressBL.Ship_Name, photo_Shipping_AddressBL.Ship_Address, photo_Shipping_AddressBL.Ship_zipcode, photo_Shipping_AddressBL.Ship_Country, photo_Shipping_AddressBL.Ship_State, photo_Shipping_AddressBL.Ship_City, photo_Shipping_AddressBL.Ship_Mail, photo_Shipping_AddressBL.Ship_Mobile);
        return true;

    }

    internal static bool Update(Photo_Shipping_AddressBL photo_Shipping_AddressBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_Shipping_AddressNewUpdateCommand(photo_Shipping_AddressBL.Ship_Name, photo_Shipping_AddressBL.Ship_Address, photo_Shipping_AddressBL.Ship_zipcode, photo_Shipping_AddressBL.Ship_Country, photo_Shipping_AddressBL.Ship_State, photo_Shipping_AddressBL.Ship_City, photo_Shipping_AddressBL.Ship_Mail, photo_Shipping_AddressBL.Ship_Mobile, photo_Shipping_AddressBL.Shipping_id, photo_Shipping_AddressBL.Shipping_id);
        return true;
    }

    internal static bool Delete(Photo_Shipping_AddressBL photo_Shipping_AddressBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_Shipping_AddressNewDeleteCommand(photo_Shipping_AddressBL.Shipping_id);
        return true;
    }
}