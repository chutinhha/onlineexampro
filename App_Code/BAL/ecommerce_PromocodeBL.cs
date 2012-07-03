using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_PromocodeBL
/// </summary>
public class ecommerce_PromocodeBL : ecommerce_PromocodeProperties, IeCommerce
{
    public ecommerce_PromocodeBL(int promocode_id, string code, string promo_Discount, int customer_id)
    {
        this.Promocode_id = promocode_id;
        this.Code = code;
        this.Promo_Discount = promo_Discount;
        this.Customer_id = customer_id;

    }
    public ecommerce_PromocodeBL(string code, string promo_Discount, int customer_id)
    {
        this.Code = code;
        this.Promo_Discount = promo_Discount;
        this.Customer_id = customer_id;

    }
    public ecommerce_PromocodeBL(int promocode_id)
    {
        this.Promocode_id = promocode_id;


    }
    public ecommerce_PromocodeBL()
    {


    }

    public bool Insert()
    {
        return ecommerce_PromocodeDL.Insert(this);
    }

    public bool Update()
    {
        return ecommerce_PromocodeDL.Update(this);
    }

    public bool Delete()
    {
        return ecommerce_PromocodeDL.Delete(this);
      
    }
}