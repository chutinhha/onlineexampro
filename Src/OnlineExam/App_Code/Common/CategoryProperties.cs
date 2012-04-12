using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CategoryProperties
/// </summary>
public abstract class CategoryProperties
{
    private long categoryId;
    private string category;

    public long CategoryId
    {
        get { return categoryId; }
        set { categoryId = value; }
    }
    
    public string Category
    {
        get { return category; }
        set { category = value; }
    }



}