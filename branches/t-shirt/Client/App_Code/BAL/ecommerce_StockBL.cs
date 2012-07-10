using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_StockBL
/// </summary>
public class ecommerce_StockBL : ecommerce_StockProperties, IeCommerce
{
    public ecommerce_StockBL(int stock_id, int stock_Value, int fkSize_id, int fkColor_id, int fkProduct_id, decimal price, string stock_Image, decimal actual_Price)
    {
        this.Stock_id = stock_id;
        this.Stock_Value = stock_Value;
        this.FkSize_id = fkSize_id;
        this.FkColor_id = fkColor_id;
        this.FkProduct_id = fkProduct_id;
        this.Price = price;
        this.Stock_Image = stock_Image;
        this.Actual_Price = actual_Price;
    }
    public ecommerce_StockBL(int stock_Value, int fkSize_id, int fkColor_id, int fkProduct_id, decimal price, string stock_Image, decimal actual_Price)
    {
        this.Actual_Price = actual_Price;
        this.Stock_Value = stock_Value;
        this.FkSize_id = fkSize_id;
        this.FkColor_id = fkColor_id;
        this.FkProduct_id = fkProduct_id;
        this.Price = price;
        this.Stock_Image = stock_Image;
    }
    public ecommerce_StockBL(int stock_id)
    {
        this.Stock_id = stock_id;
    }
    public ecommerce_StockBL()
    {

    }


    public bool Insert()
    {
        return ecommerce_StockDL.Insert(this);
    }

    public bool Update()
    {
        return ecommerce_StockDL.Update(this);
    }

    public bool Delete()
    {
        return ecommerce_StockDL.Delete(this);
    }
}