using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_ProductdetailDL
/// </summary>
internal class ecommerce_ProductdetailDL
{
	

    internal static bool Insert(ecommerce_ProductdetailBL ecommerce_ProductdetailBL)
    {
        eCommerceHelper.Context.sp_ecommerce_ProductdetailNewInsertCommand(ecommerce_ProductdetailBL.Product_name, ecommerce_ProductdetailBL.FkCategory,  ecommerce_ProductdetailBL.Image, ecommerce_ProductdetailBL.Description, ecommerce_ProductdetailBL.Short_Description, ecommerce_ProductdetailBL.Date, ecommerce_ProductdetailBL.Pro_Discount, ecommerce_ProductdetailBL.Company);
        return true;
    }

    internal static bool Update(ecommerce_ProductdetailBL ecommerce_ProductdetailBL)
    {
        eCommerceHelper.Context.sp_ecommerce_ProductdetailNewUpdateCommand(ecommerce_ProductdetailBL.Product_name, ecommerce_ProductdetailBL.FkCategory, ecommerce_ProductdetailBL.Image, ecommerce_ProductdetailBL.Description, ecommerce_ProductdetailBL.Short_Description, ecommerce_ProductdetailBL.Date, ecommerce_ProductdetailBL.Pro_Discount, ecommerce_ProductdetailBL.Company,ecommerce_ProductdetailBL.Product_id,ecommerce_ProductdetailBL.Product_id);
        return true;
    }

    internal static bool Delete(ecommerce_ProductdetailBL ecommerce_ProductdetailBL)
    {
        eCommerceHelper.Context.sp_ecommerce_ProductdetailNewDeleteCommand(ecommerce_ProductdetailBL.Product_id);
        return true;
    }
}