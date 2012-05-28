using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_Change_Password_logDL
/// </summary>
internal class Photo_Change_Password_logDL
{
	

    internal static bool Insert(Photo_Change_Password_logBL photo_Change_Password_logBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_Change_Password_logNewInsertCommand(photo_Change_Password_logBL.New_Password, photo_Change_Password_logBL.Old_Password, photo_Change_Password_logBL.Date_of_change, photo_Change_Password_logBL.FkCustomer_id);
        return true;
    }

    internal static bool Update(Photo_Change_Password_logBL photo_Change_Password_logBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_Change_Password_logNewUpdateCommand(photo_Change_Password_logBL.New_Password, photo_Change_Password_logBL.Old_Password, photo_Change_Password_logBL.Date_of_change, photo_Change_Password_logBL.FkCustomer_id, photo_Change_Password_logBL.Change_pwd_id, photo_Change_Password_logBL.Change_pwd_id);
        return true;

    }

    internal static bool Delete(Photo_Change_Password_logBL photo_Change_Password_logBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_Change_Password_logNewDeleteCommand(photo_Change_Password_logBL.Change_pwd_id);
        return true;
    }
}