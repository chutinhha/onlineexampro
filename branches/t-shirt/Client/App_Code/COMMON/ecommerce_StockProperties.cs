using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_StockProperties
/// </summary>
public abstract class ecommerce_StockProperties
{
    private int stock_id, stock_Value, fkSize_id, fkColor_id, fkProduct_id;
    private decimal price, actual_Price;
    private string stock_Image;
    public decimal Actual_Price
    {
        get { return actual_Price; }
        set { actual_Price = value; }
    }
    public string Stock_Image
    {
        get { return stock_Image; }
        set { stock_Image = value; }
    }
    public decimal Price
    {
        get { return price; }
        set { price = value; }
    }

    public int FkProduct_id
    {
        get { return fkProduct_id; }
        set { fkProduct_id = value; }
    }

    public int FkColor_id
    {
        get { return fkColor_id; }
        set { fkColor_id = value; }
    }

    public int FkSize_id
    {
        get { return fkSize_id; }
        set { fkSize_id = value; }
    }

    public int Stock_Value
    {
        get { return stock_Value; }
        set { stock_Value = value; }
    }

    public int Stock_id
    {
        get { return stock_id; }
        set { stock_id = value; }
    }
}