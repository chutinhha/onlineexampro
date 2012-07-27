using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_ProductdetailBL
/// </summary>
public class ecommerce_ProductdetailBL : ecommerce_ProductdetailProperties, IeCommerce
{
    public ecommerce_ProductdetailBL(int product_id, string description, string short_Description, DateTime date, string pro_Discount, int fkProductSubdetail, int fkOfferDetail, int genter)
    {
        this.Product_id = product_id;
        this.Description = description;
        this.Short_Description = short_Description;
        this.Date = date;
        this.Pro_Discount = pro_Discount;
        this.FkProductSubdetail = fkProductSubdetail;
        this.FkOfferDetail = fkOfferDetail;
        this.Genter = genter;
    }
    public ecommerce_ProductdetailBL(string description, string short_Description, DateTime date, string pro_Discount, int fkProductSubdetail, int fkOfferDetail, int genter)
    {
        this.Description = description;
        this.Short_Description = short_Description;
        this.Date = date;
        this.Pro_Discount = pro_Discount;
        this.FkProductSubdetail = fkProductSubdetail;
        this.FkOfferDetail = fkOfferDetail;
        this.Genter = genter;
    }
    public ecommerce_ProductdetailBL(int product_id)
    {
        this.Product_id = product_id;
    }
    public ecommerce_ProductdetailBL()
    {

    }

    public bool Insert()
    {
        return ecommerce_ProductdetailDL.Insert(this);
    }

    public bool Update()
    {
        return ecommerce_ProductdetailDL.Update(this);

    }

    public bool Delete()
    {
        return ecommerce_ProductdetailDL.Delete(this);

    }
}