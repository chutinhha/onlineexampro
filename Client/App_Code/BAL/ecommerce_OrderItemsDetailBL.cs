using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_OrderItemsDetailBL
/// </summary>
public class ecommerce_OrderItemsDetailBL : ecommerce_OrderItemsDetailProperties, IeCommerce
{
    public ecommerce_OrderItemsDetailBL( int quantity, int fkOrder_id, string discount, int fkStockid, decimal order_price)
    {
        this.Quantity = quantity;
        this.FkOrder_id = fkOrder_id;
        this.Discount = discount;
        this.Order_price = order_price;
        this.FkStockid = fkStockid;
    }
    public ecommerce_OrderItemsDetailBL(int item_id, int quantity, int fkOrder_id, string discount, int fkStockid, decimal order_price)
    {
        this.Item_id = item_id;
        this.Quantity = quantity;
        this.FkOrder_id = fkOrder_id;
        this.Discount = discount;
        this.Order_price = order_price;
        this.FkStockid = fkStockid;
    }
    public ecommerce_OrderItemsDetailBL(int item_id)
    {
        this.Item_id = item_id;
    }
    public ecommerce_OrderItemsDetailBL()
    {

    }

    public bool Insert()
    {
        return ecommerce_OrderItemsDetailDL.Insert(this);
    }

    public bool Update()
    {
        return ecommerce_OrderItemsDetailDL.Update(this);
    }

    public bool Delete()
    {
        return ecommerce_OrderItemsDetailDL.Delete(this);
    }
}