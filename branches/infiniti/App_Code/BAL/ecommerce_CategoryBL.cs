using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_CategoryBL
/// </summary>
public class ecommerce_CategoryBL:ecommerce_CategoryProperties,IeCommerce
{
    public ecommerce_CategoryBL(string categories)
	{
       
        this.Categories = categories;
	}
    public ecommerce_CategoryBL(int category_id, string categories)
    {
        this.Category_id = category_id;
        this.Categories = categories;
    }
    public ecommerce_CategoryBL(int category_id)
    {
        this.Category_id = category_id;
    }

    public bool Insert()
    {
        return ecommerce_CategoryDL.Insert(this);
    }

    public bool Update()
    {
        return ecommerce_CategoryDL.Update(this);

    }

    public bool Delete()
    {
        return ecommerce_CategoryDL.Delete(this);
    }
}