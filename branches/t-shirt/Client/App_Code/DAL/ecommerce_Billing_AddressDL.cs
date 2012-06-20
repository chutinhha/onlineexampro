using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_Billing_AddressDL
/// </summary>
internal class ecommerce_Billing_AddressDL
{
    internal static bool Insert(ecommerce_Billing_AddressBL ecommerce_Billing_AddressBL)
    {
        eCommerceHelper.Context.sp_ecommerce_Billing_AddressNewInsertCommand(ecommerce_Billing_AddressBL.Bil_Name,ecommerce_Billing_AddressBL.Bill_Address,ecommerce_Billing_AddressBL.Bill_zipcode,ecommerce_Billing_AddressBL.Bill_City,ecommerce_Billing_AddressBL.Bill_State,ecommerce_Billing_AddressBL.Bill_Country,ecommerce_Billing_AddressBL.Bill_Mail,ecommerce_Billing_AddressBL.Bill_Phone);
        return true;
    }

    internal static bool Update(ecommerce_Billing_AddressBL ecommerce_Billing_AddressBL)
    {
        eCommerceHelper.Context.sp_ecommerce_Billing_AddressNewUpdateCommand(ecommerce_Billing_AddressBL.Bil_Name,ecommerce_Billing_AddressBL.Bill_Address,ecommerce_Billing_AddressBL.Bill_zipcode,ecommerce_Billing_AddressBL.Bill_City,ecommerce_Billing_AddressBL.Bill_State,ecommerce_Billing_AddressBL.Bill_Country,ecommerce_Billing_AddressBL.Bill_Mail,ecommerce_Billing_AddressBL.Bill_Phone,ecommerce_Billing_AddressBL.Billing_id,ecommerce_Billing_AddressBL.Billing_id);
        return true;
    }

    internal static bool Delete(ecommerce_Billing_AddressBL ecommerce_Billing_AddressBL)
    {
        eCommerceHelper.Context.sp_ecommerce_Billing_AddressNewDeleteCommand(ecommerce_Billing_AddressBL.Billing_id);
        return true;
    }
}