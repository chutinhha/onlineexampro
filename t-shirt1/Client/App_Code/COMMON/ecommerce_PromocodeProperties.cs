using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_PromocodeProperties
/// </summary>
public abstract class ecommerce_PromocodeProperties
{
    private int promocode_id, customer_id;

    public int Customer_id
    {
        get { return customer_id; }
        set { customer_id = value; }
    }

    public int Promocode_id
    {
        get { return promocode_id; }
        set { promocode_id = value; }
    }
    private string code, promo_Discount;

    public string Promo_Discount
    {
        get { return promo_Discount; }
        set { promo_Discount = value; }
    }

    public string Code
    {
        get { return code; }
        set { code = value; }
    }
}