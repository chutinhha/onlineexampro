using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_Change_pwd_logDL
/// </summary>
internal class ecommerce_Change_pwd_logDL
{
    internal static bool Insert(ecommerce_Change_pwd_logBL ecommerce_Change_pwd_logBL)
    {
        InfinitiHelper.Context.sp_Infiniti_Change_pwd_logNewInsertCommand(ecommerce_Change_pwd_logBL.New_pwd, ecommerce_Change_pwd_logBL.Old_pwd, ecommerce_Change_pwd_logBL.Date, ecommerce_Change_pwd_logBL.Customer_id);
        return true;
    }

    internal static bool Update(ecommerce_Change_pwd_logBL ecommerce_Change_pwd_logBL)
    {
        InfinitiHelper.Context.sp_Infiniti_Change_pwd_logNewUpdateCommand(ecommerce_Change_pwd_logBL.New_pwd, ecommerce_Change_pwd_logBL.Old_pwd, ecommerce_Change_pwd_logBL.Date, ecommerce_Change_pwd_logBL.Customer_id, ecommerce_Change_pwd_logBL.Change_pwd_id, ecommerce_Change_pwd_logBL.Change_pwd_id);
        return true;

    }

    internal static bool Delete(ecommerce_Change_pwd_logBL ecommerce_Change_pwd_logBL)
    {
        InfinitiHelper.Context.sp_Infiniti_CustomerRegistrationNewDeleteCommand(ecommerce_Change_pwd_logBL.Change_pwd_id);
        return true;
    }
}