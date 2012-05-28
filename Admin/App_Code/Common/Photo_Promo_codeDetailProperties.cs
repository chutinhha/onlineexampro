using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_Promo_codeDetailProperties
/// </summary>
public abstract class Photo_Promo_codeDetailProperties
{
    private int promo_code_id;

    public int Promo_code_id
    {
        get { return promo_code_id; }
        set { promo_code_id = value; }
    }
    private string code;

    public string Code
    {
        get { return code; }
        set { code = value; }
    }
    private decimal promo_Discount;

    public decimal Promo_Discount
    {
        get { return promo_Discount; }
        set { promo_Discount = value; }
    }
    private long fkCustomer_id;

    public long FkCustomer_id
    {
        get { return fkCustomer_id; }
        set { fkCustomer_id = value; }
    }
}