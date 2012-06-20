using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_ProductdetailProperties
/// </summary>
public abstract class ecommerce_ProductdetailProperties
{
    private int product_id, price, category;

    public int Price
    {
        get { return price; }
        set { price = value; }
    }

    public int Product_id
    {
        get { return product_id; }
        set { product_id = value; }
    }
    private string product_name, pro_Status, image, description, short_Description, pro_Discount, company, haveOption, optionTitle, optionContent;

    public string OptionContent
    {
        get { return optionContent; }
        set { optionContent = value; }
    }

    public string OptionTitle
    {
        get { return optionTitle; }
        set { optionTitle = value; }
    }

    public string HaveOption
    {
        get { return haveOption; }
        set { haveOption = value; }
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

    public string Pro_Status
    {
        get { return pro_Status; }
        set { pro_Status = value; }
    }

    public int Category
    {
        get { return category; }
        set { category = value; }
    }

    public string Product_name
    {
        get { return product_name; }
        set { product_name = value; }
    }
    private DateTime date;

    public DateTime Date
    {
        get { return date; }
        set { date = value; }
    }
     
}