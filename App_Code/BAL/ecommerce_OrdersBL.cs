using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_OrdersBL
/// </summary>
public class ecommerce_OrdersBL:ecommerce_OrdersProperties,IeCommerce
{
    public ecommerce_OrdersBL(int order_id, int customer_id, int product_id, int quantity, DateTime order_Date, int shipping_tax, int tax, string order_Discount, int promocode_id, string or_status, int billing_id, int shipping_id, int total_Amount)
	{
        this.Order_id = order_id;
        this.Customer_id = customer_id;
        this.Product_id = product_id;
        this.Quantity = quantity;
        this.Order_Date = order_Date;
        this.Shipping_tax = shipping_tax;
        this.Tax = tax;
        this.Order_Discount = order_Discount;
        this.Promocode_id = promocode_id;
        this.Or_status = or_status;
        this.Billing_id = billing_id;
        this.Shipping_id = shipping_id;
        this.Total_Amount = total_Amount;
	}
    public ecommerce_OrdersBL(int customer_id, int product_id, int quantity, DateTime order_Date, int shipping_tax, int tax, string order_Discount, int promocode_id, string or_status, int billing_id, int shipping_id, int total_Amount)
    {
        this.Customer_id = customer_id;
        this.Product_id = product_id;
        this.Quantity = quantity;
        this.Order_Date = order_Date;
        this.Shipping_tax = shipping_tax;
        this.Tax = tax;
        this.Order_Discount = order_Discount;
        this.Promocode_id = promocode_id;
        this.Or_status = or_status;
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