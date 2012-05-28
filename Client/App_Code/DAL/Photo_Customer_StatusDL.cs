using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_Customer_StatusDL
/// </summary>
internal class Photo_Customer_StatusDL
{
	
    internal static bool Insert(Photo_Customer_StatusBL photo_Customer_StatusBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_Customer_StatusNewInsertCommand(photo_Customer_StatusBL.Status_name);
        return true;
    }

    internal static bool Update(Photo_Customer_StatusBL photo_Customer_StatusBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_Customer_StatusNewUpdateCommand(photo_Customer_StatusBL.Status_name, photo_Customer_StatusBL.Status_id, photo_Customer_StatusBL.Status_id);
        return true;
    }

    internal static bool Delete(Photo_Customer_StatusBL photo_Customer_StatusBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_Customer_StatusNewDeleteCommand(photo_Customer_StatusBL.Status_id);
        return true;
    }
}