using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_OrdersDL
/// </summary>
internal class ecommerce_OrdersDL
{
    internal static bool Insert(ecommerce_OrdersBL ecommerce_OrdersBL)
    {
        eCommerceHelper.Context.sp_ecommerce_OrdersNewInsertCommand(ecommerce_OrdersBL.Customer_id, ecommerce_OrdersBL.Product_id, ecommerce_OrdersBL.Quantity, ecommerce_OrdersBL.Order_Date, ecommerce_OrdersBL.Shipping_tax, ecommerce_OrdersBL.Tax, ecommerce_OrdersBL.Order_Discount, ecommerce_OrdersBL.Promocode_id, ecommerce_OrdersBL.Or_status, ecommerce_OrdersBL.Billing_id, ecommerce_OrdersBL.Shipping_id, ecommerce_OrdersBL.Total_Amount);
        return true;
    }

    internal static bool Update(ecommerce_OrdersBL ecommerce_OrdersBL)
    {
        eCommerceHelper.Context.sp_ecommerce_OrdersNewUpdateCommand(ecommerce_OrdersBL.Customer_id, ecommerce_OrdersBL.Product_id, ecommerce_OrdersBL.Quantity, ecommerce_OrdersBL.Order_Date, ecommerce_OrdersBL.Shipping_tax, ecommerce_OrdersBL.Tax, ecommerce_OrdersBL.Order_Discount, ecommerce_OrdersBL.Promocode_id, ecommerce_OrdersBL.Or_status, ecommerce_OrdersBL.Billing_id, ecommerce_OrdersBL.Shipping_id, ecommerce_OrdersBL.Total_Amount,ecommerce_OrdersBL.Order_id,ecommerce_OrdersBL.Order_id);
        return true;
    }

    internal static bool Delete(ecommerce_OrdersBL ecommerce_OrdersBL)
    {
        eCommerceHelper.Context.sp_ecommerce_OrdersNewDeleteCommand(ecommerce_OrdersBL.Order_id);
        return true;
    }
}