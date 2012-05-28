using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_CustomerRegistrationDetailDL
/// </summary>
internal class Photo_CustomerRegistrationDetailDL
{
    internal static bool Insert(Photo_CustomerRegistrationDetailBL photo_CustomerRegistrationDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_CustomerRegistrationDetailNewInsertCommand(photo_CustomerRegistrationDetailBL.Email, photo_CustomerRegistrationDetailBL.Password, photo_CustomerRegistrationDetailBL.Mobile, photo_CustomerRegistrationDetailBL.Country, photo_CustomerRegistrationDetailBL.Reg_Date, photo_CustomerRegistrationDetailBL.Last_Login, photo_CustomerRegistrationDetailBL.Error_count, photo_CustomerRegistrationDetailBL.Status, photo_CustomerRegistrationDetailBL.Profile_Image, photo_CustomerRegistrationDetailBL.Full_Name, photo_CustomerRegistrationDetailBL.DOB, photo_CustomerRegistrationDetailBL.ActivationStatus_Mail, photo_CustomerRegistrationDetailBL.ActivationStatus_Mobile, photo_CustomerRegistrationDetailBL.Email_Subs, photo_CustomerRegistrationDetailBL.SMS_Subs);
        return true;
    }

    internal static bool Update(Photo_CustomerRegistrationDetailBL photo_CustomerRegistrationDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_CustomerRegistrationDetailNewUpdateCommand(photo_CustomerRegistrationDetailBL.Email, photo_CustomerRegistrationDetailBL.Password, photo_CustomerRegistrationDetailBL.Mobile, photo_CustomerRegistrationDetailBL.Country, photo_CustomerRegistrationDetailBL.Reg_Date, photo_CustomerRegistrationDetailBL.Last_Login, photo_CustomerRegistrationDetailBL.Error_count, photo_CustomerRegistrationDetailBL.Status, photo_CustomerRegistrationDetailBL.Profile_Image, photo_CustomerRegistrationDetailBL.Full_Name, photo_CustomerRegistrationDetailBL.DOB, photo_CustomerRegistrationDetailBL.ActivationStatus_Mail, photo_CustomerRegistrationDetailBL.ActivationStatus_Mobile, photo_CustomerRegistrationDetailBL.Email_Subs, photo_CustomerRegistrationDetailBL.SMS_Subs, photo_CustomerRegistrationDetailBL.Customer_id, photo_CustomerRegistrationDetailBL.Customer_id);
        return true;
    }

    internal static bool Delete(Photo_CustomerRegistrationDetailBL photo_CustomerRegistrationDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_CustomerRegistrationDetailNewDeleteCommand(photo_CustomerRegistrationDetailBL.Customer_id);
        return true;
    }
}