using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_CategoryDL
/// </summary>
internal class ecommerce_CategoryDL
{
	
    internal static bool Insert(ecommerce_CategoryBL ecommerce_CategoryBL)
    {
        eCommerceHelper.Context.sp_ecommerce_CategoryNewInsertCommand(ecommerce_CategoryBL.Categories);
        return true;
    }

    internal static bool Update(ecommerce_CategoryBL ecommerce_CategoryBL)
    {
        eCommerceHelper.Context.sp_ecommerce_CategoryNewUpdateCommand(ecommerce_CategoryBL.Categories,ecommerce_CategoryBL.Category_id,ecommerce_CategoryBL.Category_id);
        return true;
    }

    internal static bool Delete(ecommerce_CategoryBL ecommerce_CategoryBL)
    {
        eCommerceHelper.Context.sp_ecommerce_CategoryNewDeleteCommand(ecommerce_CategoryBL.Category_id);
        return true;
       
    }
}