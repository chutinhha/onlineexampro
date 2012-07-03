using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_OrdersProperties
/// </summary>
public abstract class ecommerce_OrdersProperties
{
    private int order_id, fkCustomer_id, billing_id, shipping_id;
    private DateTime order_Date;
    private string order_status;
    private decimal shipping_tax, tax, total_Amount;

    public decimal Total_Amount
    {
        get { return total_Amount; }
        set { total_Amount = value; }
    }

    public decimal Tax
    {
        get { return tax; }
        set { tax = value; }
    }

    public decimal Shipping_tax
    {
        get { return shipping_tax; }
        set { shipping_tax = value; }
    }



    public int FkCustomer_id
    {
        get { return fkCustomer_id; }
        set { fkCustomer_id = value; }
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

    public int Order_id
    {
        get { return order_id; }
        set { order_id = value; }
    }

    public DateTime Order_Date
    {
        get { return order_Date; }
        set { order_Date = value; }
    }

    public string Order_status
    {
        get { return order_status; }
        set { order_status = value; }
    }

    
}