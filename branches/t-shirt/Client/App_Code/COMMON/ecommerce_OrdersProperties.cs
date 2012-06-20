using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_OrdersProperties
/// </summary>
public abstract class ecommerce_OrdersProperties
{
    private int order_id, customer_id, product_id, quantity, shipping_tax, tax, promocode_id, billing_id, shipping_id, total_Amount;

    public int Total_Amount
    {
        get { return total_Amount; }
        set { total_Amount = value; }
    }

    public int Shipping_id
    {
        get { return shipping_id; }
        set { shipping_id = value; }
    }

    public int Billing_id
    {
        get { return billing_id; }
        set { billing_id = value; }
    }

    public int Promocode_id
    {
        get { return promocode_id; }
        set { promocode_id = value; }
    }

    public int Tax
    {
        get { return tax; }
        set { tax = value; }
    }

    public int Shipping_tax
    {
        get { return shipping_tax; }
        set { shipping_tax = value; }
    }

    public int Quantity
    {
        get { return quantity; }
        set { quantity = value; }
    }

    public int Product_id
    {
        get { return product_id; }
        set { product_id = value; }
    }

    public int Customer_id
    {
        get { return customer_id; }
        set { customer_id = value; }
    }

    public int Order_id
    {
        get { return order_id; }
        set { order_id = value; }
    }
    private DateTime order_Date;

    public DateTime Order_Date
    {
        get { return order_Date; }
        set { order_Date = value; }
    }
    private string order_Discount, or_status;

    public string Or_status
    {
        get { return or_status; }
        set { or_status = value; }
    }

    public string Order_Discount
    {
        get { return order_Discount; }
        set { order_Discount = value; }
    }
}