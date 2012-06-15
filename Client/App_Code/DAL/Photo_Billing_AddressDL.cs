using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_Billing_AddressDL
/// </summary>
internal class Photo_Billing_AddressDL
{
	
    internal static bool Insert(Photo_Billing_AddressBL photo_Billing_AddressBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_Billing_AddressNewInsertCommand(photo_Billing_AddressBL.Bill_Name, photo_Billing_AddressBL.Bill_Address, photo_Billing_AddressBL.Bill_zipcode, photo_Billing_AddressBL.Bill_Country, photo_Billing_AddressBL.Bill_State, photo_Billing_AddressBL.Bill_City, photo_Billing_AddressBL.Bill_Mail,photo_Billing_AddressBL.Bill_Mobile);
        return true;
    }

    internal static bool Update(Photo_Billing_AddressBL photo_Billing_AddressBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_Billing_AddressNewUpdateCommand(photo_Billing_AddressBL.Bill_Name, photo_Billing_AddressBL.Bill_Address, photo_Billing_AddressBL.Bill_zipcode, photo_Billing_AddressBL.Bill_Country, photo_Billing_AddressBL.Bill_State, photo_Billing_AddressBL.Bill_City, photo_Billing_AddressBL.Bill_Mail,photo_Billing_AddressBL.Bill_Mobile, photo_Billing_AddressBL.Billing_id, photo_Billing_AddressBL.Billing_id);
        return true;
    }

    internal static bool Delete(Photo_Billing_AddressBL photo_Billing_AddressBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_Billing_AddressNewDeleteCommand(photo_Billing_AddressBL.Billing_id);
        return true;
    }
}