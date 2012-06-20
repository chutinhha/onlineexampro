using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_Shipping_AddressDL
/// </summary>
internal class ecommerce_Shipping_AddressDL
{
    internal static bool Insert(ecommerce_Shipping_AddressBL ecommerce_Shipping_AddressBL)
    {
        eCommerceHelper.Context.sp_ecommerce_Shipping_AddressNewInsertCommand(ecommerce_Shipping_AddressBL.Ship_Name, ecommerce_Shipping_AddressBL.Ship_Address, ecommerce_Shipping_AddressBL.Ship_Zipcode, ecommerce_Shipping_AddressBL.Ship_City, ecommerce_Shipping_AddressBL.Ship_State, ecommerce_Shipping_AddressBL.Ship_Country, ecommerce_Shipping_AddressBL.Ship_Mail, ecommerce_Shipping_AddressBL.Ship_Phone);
        return true;
    }

    internal static bool Update(ecommerce_Shipping_AddressBL ecommerce_Shipping_AddressBL)
    {
        eCommerceHelper.Context.sp_ecommerce_Shipping_AddressNewUpdateCommand(ecommerce_Shipping_AddressBL.Ship_Name, ecommerce_Shipping_AddressBL.Ship_Address, ecommerce_Shipping_AddressBL.Ship_Zipcode, ecommerce_Shipping_AddressBL.Ship_City, ecommerce_Shipping_AddressBL.Ship_State, ecommerce_Shipping_AddressBL.Ship_Country, ecommerce_Shipping_AddressBL.Ship_Mail, ecommerce_Shipping_AddressBL.Ship_Phone,ecommerce_Shipping_AddressBL.Shipping_id,ecommerce_Shipping_AddressBL.Shipping_id);
        return true;
    }

    internal static bool Delete(ecommerce_Shipping_AddressBL ecommerce_Shipping_AddressBL)
    {
        eCommerceHelper.Context.sp_ecommerce_Shipping_AddressNewDeleteCommand(ecommerce_Shipping_AddressBL.Shipping_id);
        return true;
    }
}