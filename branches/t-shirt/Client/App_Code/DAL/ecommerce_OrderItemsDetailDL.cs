using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_OrderItemsDetailDL
/// </summary>
internal class ecommerce_OrderItemsDetailDL
{

    internal static bool Insert(ecommerce_OrderItemsDetailBL ecommerce_OrderItemsDetailBL)
    {
        eCommerceHelper.Context.sp_ecommerce_OrderItemsDetailNewInsertCommand( ecommerce_OrderItemsDetailBL.Quantity, ecommerce_OrderItemsDetailBL.Discount,  ecommerce_OrderItemsDetailBL.Order_price, ecommerce_OrderItemsDetailBL.FkStockid,ecommerce_OrderItemsDetailBL.FkOrder_id);
        return true;
    }

    internal static bool Update(ecommerce_OrderItemsDetailBL ecommerce_OrderItemsDetailBL)
    {
        eCommerceHelper.Context.sp_ecommerce_OrderItemsDetailNewUpdateCommand(ecommerce_OrderItemsDetailBL.Quantity, ecommerce_OrderItemsDetailBL.Discount, ecommerce_OrderItemsDetailBL.Order_price, ecommerce_OrderItemsDetailBL.FkStockid, ecommerce_OrderItemsDetailBL.FkOrder_id, ecommerce_OrderItemsDetailBL.Item_id, ecommerce_OrderItemsDetailBL.Item_id);
        return true;
    }

    internal static bool Delete(ecommerce_OrderItemsDetailBL ecommerce_OrderItemsDetailBL)
    {
        eCommerceHelper.Context.sp_ecommerce_OrderItemsDetailNewDeleteCommand(ecommerce_OrderItemsDetailBL.Item_id);
        return true;
    }
}