using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_OrdersBL
/// </summary>
public class ecommerce_OrdersBL : ecommerce_OrdersProperties, IeCommerce
{
    public ecommerce_OrdersBL(int order_id, int fkCustomer_id, int billing_id, int shipping_id, DateTime order_Date, decimal shipping_tax, decimal tax, string order_status, decimal total_Amount)
    {
        this.Order_id = order_id;
        this.FkCustomer_id = fkCustomer_id;
        this.Order_Date = order_Date;
        this.Shipping_tax = shipping_tax;
        this.Tax = tax;
        this.Order_status = order_status;
        this.Billing_id = billing_id;
        this.Shipping_id = shipping_id;
        this.Total_Amount = total_Amount;
    }
    public ecommerce_OrdersBL( int fkCustomer_id, int billing_id, int shipping_id, DateTime order_Date, decimal shipping_tax, decimal tax, string order_status, decimal total_Amount)
    {
        this.FkCustomer_id = fkCustomer_id;
        this.Order_Date = order_Date;
        this.Shipping_tax = shipping_tax;
        this.Tax = tax;
        this.Order_status = order_status;
        this.Billing_id = billing_id;
        this.Shipping_id = shipping_id;
        this.Total_Amount = total_Amount;
    }
    public ecommerce_OrdersBL(int order_id)
    {
        this.Order_id = order_id;
    }
    public ecommerce_OrdersBL()
    {

    }

    public bool Insert()
    {
        return ecommerce_OrdersDL.Insert(this);
    }

    public bool Update()
    {
        return ecommerce_OrdersDL.Update(this);
    }

    public bool Delete()
    {
        return ecommerce_OrdersDL.Delete(this);
    }
}