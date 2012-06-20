﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_Customer_registrationDL
/// </summary>
internal class ecommerce_Customer_registrationDL
{
	

    internal static bool Insert(ecommerce_Customer_registrationBL ecommerce_Customer_registrationBL)
    {
        eCommerceHelper.Context.sp_ecommerce_Customer_registrationNewInsertCommand(ecommerce_Customer_registrationBL.Email, ecommerce_Customer_registrationBL.Password, ecommerce_Customer_registrationBL.Mobile, ecommerce_Customer_registrationBL.City, ecommerce_Customer_registrationBL.Date, ecommerce_Customer_registrationBL.Last_login, ecommerce_Customer_registrationBL.Error_count, ecommerce_Customer_registrationBL.Cus_Status, ecommerce_Customer_registrationBL.Profile_image, ecommerce_Customer_registrationBL.First_name, ecommerce_Customer_registrationBL.Last_name, ecommerce_Customer_registrationBL.DOB, ecommerce_Customer_registrationBL.Email_Subs, ecommerce_Customer_registrationBL.Sms_Subs);
        return true;
    }

    internal static bool Update(ecommerce_Customer_registrationBL ecommerce_Customer_registrationBL)
    {
        eCommerceHelper.Context.sp_ecommerce_Customer_registrationNewUpdateCommand(ecommerce_Customer_registrationBL.Email, ecommerce_Customer_registrationBL.Password, ecommerce_Customer_registrationBL.Mobile, ecommerce_Customer_registrationBL.City, ecommerce_Customer_registrationBL.Date, ecommerce_Customer_registrationBL.Last_login, ecommerce_Customer_registrationBL.Error_count, ecommerce_Customer_registrationBL.Cus_Status, ecommerce_Customer_registrationBL.Profile_image, ecommerce_Customer_registrationBL.First_name, ecommerce_Customer_registrationBL.Last_name, ecommerce_Customer_registrationBL.DOB, ecommerce_Customer_registrationBL.Email_Subs, ecommerce_Customer_registrationBL.Sms_Subs,ecommerce_Customer_registrationBL.Customer_id,ecommerce_Customer_registrationBL.Customer_id);
        return true;
    }

    internal static bool Delete(ecommerce_Customer_registrationBL ecommerce_Customer_registrationBL)
    {
        eCommerceHelper.Context.sp_ecommerce_Customer_registrationNewDeleteCommand(ecommerce_Customer_registrationBL.Customer_id);
        return true;
    }
}