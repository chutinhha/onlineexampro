using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RegistrationDL
/// </summary>
internal class RegistrationDL
{
	

    internal static bool Insert(RegistrationBL registrationBL)
    {
        OnlineExamHelper.Context.sp_OnlineRegistrationNewInsertCommand(registrationBL.Name, registrationBL.Mobile, registrationBL.Email, registrationBL.Date);
        return true;
    }

    internal static bool Update(RegistrationBL registrationBL)
    {
        OnlineExamHelper.Context.sp_OnlineRegistrationNewUpdateCommand(registrationBL.Name, registrationBL.Mobile, registrationBL.Email, registrationBL.Date, registrationBL.UserId, registrationBL.UserId);
        return true;
    }

    internal static bool Delete(RegistrationBL registrationBL)
    {
        OnlineExamHelper.Context.sp_OnlineRegistrationNewDeleteCommand(registrationBL.UserId);
        return true;
    }
}