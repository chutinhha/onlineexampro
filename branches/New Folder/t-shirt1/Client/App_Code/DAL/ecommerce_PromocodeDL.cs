using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_PromocodeDL
/// </summary>
internal class ecommerce_PromocodeDL
{
	internal static bool Insert(ecommerce_PromocodeBL ecommerce_PromocodeBL)
    {
        eCommerceHelper.Context.sp_ecommerce_PromocodeNewInsertCommand(ecommerce_PromocodeBL.Code, ecommerce_PromocodeBL.Promo_Discount, ecommerce_PromocodeBL.Customer_id);
        return true;
    }

    internal static bool Update(ecommerce_PromocodeBL ecommerce_PromocodeBL)
    {
        eCommerceHelper.Context.sp_ecommerce_PromocodeNewUpdateCommand(ecommerce_PromocodeBL.Code, ecommerce_PromocodeBL.Promo_Discount, ecommerce_PromocodeBL.Customer_id,ecommerce_PromocodeBL.Promocode_id,ecommerce_PromocodeBL.Promocode_id);
        return true;
    }

    internal static bool Delete(ecommerce_PromocodeBL ecommerce_PromocodeBL)
    {
        eCommerceHelper.Context.sp_ecommerce_PromocodeNewDeleteCommand(ecommerce_PromocodeBL.Promocode_id);
        return true;
    }
}