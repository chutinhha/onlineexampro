using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CategoryBL
/// </summary>
public class CategoryBL:CategoryProperties,IOnlinExam
{
	public CategoryBL(string catagory)
	{
        this.Category = catagory;
	}
    public CategoryBL(long catagoryId, string catagory)
    {
        this.CategoryId = catagoryId;
        this.Category = catagory;
    }
    public CategoryBL(long catagoryId)
    {
        this.CategoryId = catagoryId;
    }
    public CategoryBL()
    {
    }


    public bool Insert()
    {
        return CategoryDL.Insert(this);
    }

    public bool Update()
    {
        return CategoryDL.Update(this);
    }

    public bool Delete()
    {
        return CategoryDL.Delete(this);
    }
}