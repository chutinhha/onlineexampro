using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_ProductdetailProperties
/// </summary>
public abstract class ecommerce_ProductdetailProperties
{
    private int product_id, fkCategory, fkProductSubdetail, fkOfferDetail;
    private string description, short_Description, pro_Discount;
    private DateTime date;

    public int FkOfferDetail
    {
        get { return fkOfferDetail; }
        set { fkOfferDetail = value; }
    }

    public int FkProductSubdetail
    {
        get { return fkProductSubdetail; }
        set { fkProductSubdetail = value; }
    }


    public int FkCategory
    {
        get { return fkCategory; }
        set { fkCategory = value; }
    }



    public int Product_id
    {
        get { return product_id; }
        set { product_id = value; }
    }





    public string Pro_Discount
    {
        get { return pro_Discount; }
        set { pro_Discount = value; }
    }

    public string Short_Description
    {
        get { return short_Description; }
        set { short_Description = value; }
    }

    public string Description
    {
        get { return description; }
        set { description = value; }
    }



    public DateTime Date
    {
        get { return date; }
        set { date = value; }
    }

}