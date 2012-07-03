using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_StockDL
/// </summary>
class ecommerce_StockDL
{

    internal static bool Insert(ecommerce_StockBL ecommerce_StockBL)
    {
        eCommerceHelper.Context.sp_ecommerce_StockNewInsertCommand(ecommerce_StockBL.Stock_Value, ecommerce_StockBL.Price, ecommerce_StockBL.Stock_Image, ecommerce_StockBL.FkSize_id, ecommerce_StockBL.FkColor_id, ecommerce_StockBL.FkProduct_id);
        return true;
    }

    internal static bool Update(ecommerce_StockBL ecommerce_StockBL)
    {
        eCommerceHelper.Context.sp_ecommerce_StockNewUpdateCommand(ecommerce_StockBL.Stock_Value, ecommerce_StockBL.Price, ecommerce_StockBL.Stock_Image, ecommerce_StockBL.FkSize_id, ecommerce_StockBL.FkColor_id, ecommerce_StockBL.FkProduct_id, ecommerce_StockBL.Stock_id, ecommerce_StockBL.Stock_id);
        return true;
    }

    internal static bool Delete(ecommerce_StockBL ecommerce_StockBL)
    {
        eCommerceHelper.Context.sp_ecommerce_StockNewDeleteCommand(ecommerce_StockBL.Stock_id);
        return true;
    }
}