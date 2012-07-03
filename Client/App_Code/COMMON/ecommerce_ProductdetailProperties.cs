using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_ProductdetailProperties
/// </summary>
public abstract class ecommerce_ProductdetailProperties
{
    private int product_id, fkCategory;
    private string product_name, image, description, short_Description, pro_Discount, company;
    private DateTime date;


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



    public string Company
    {
        get { return company; }
        set { company = value; }
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

    public string Image
    {
        get { return image; }
        set { image = value; }
    }





    public string Product_name
    {
        get { return product_name; }
        set { product_name = value; }
    }

    public DateTime Date
    {
        get { return date; }
        set { date = value; }
    }

}