using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CategoryDL
/// </summary>
internal class CategoryDL
{
	

    internal static bool Insert(CategoryBL categoryBL)
    {
        OnlineExamHelper.Context.sp_OnlineCategoryNewInsertCommand(categoryBL.Category);
        return true;
    }

    internal static bool Update(CategoryBL categoryBL)
    {
        OnlineExamHelper.Context.sp_OnlineCategoryNewUpdateCommand(categoryBL.Category, categoryBL.CategoryId, categoryBL.CategoryId);
        return true;
    }

    internal static bool Delete(CategoryBL categoryBL)
    {
        OnlineExamHelper.Context.sp_OnlineOptionsNewDeleteCommand(categoryBL.CategoryId);
        return true;
    }
}