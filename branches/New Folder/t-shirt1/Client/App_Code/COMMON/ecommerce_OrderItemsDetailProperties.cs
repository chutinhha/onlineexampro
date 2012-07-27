using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_OrderItemsDetailProperties
/// </summary>
public abstract class ecommerce_OrderItemsDetailProperties
{
    private int item_id, quantity, fkOrder_id, fkStockid;

    public int FkStockid
    {
        get { return fkStockid; }
        set { fkStockid = value; }
    }
    private string discount;
    private decimal order_price;

    public decimal Order_price
    {
        get { return order_price; }
        set { order_price = value; }
    }

   

    public string Discount
    {
        get { return discount; }
        set { discount = value; }
    }


    public int FkOrder_id
    {
        get { return fkOrder_id; }
        set { fkOrder_id = value; }
    }

    public int Quantity
    {
        get { return quantity; }
        set { quantity = value; }
    }




   
    public int Item_id
    {
        get { return item_id; }
        set { item_id = value; }
    }
}