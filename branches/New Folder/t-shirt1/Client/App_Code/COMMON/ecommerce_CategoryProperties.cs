using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_CategoryProperties
/// </summary>
public abstract class ecommerce_CategoryProperties
{
    private int category_id;

    public int Category_id
    {
        get { return category_id; }
        set { category_id = value; }
    }
    private string categories;

    public string Categories
    {
        get { return categories; }
        set { categories = value; }
    }
}