using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_SubCatagoryDetailProperties
/// </summary>
public abstract class Photo_SubCatagoryDetailProperties
{
    private int subCategory_id, fkPlan_id;

    public int FkPlan_id
    {
        get { return fkPlan_id; }
        set { fkPlan_id = value; }
    }

    public int SubCategory_id
    {
        get { return subCategory_id; }
        set { subCategory_id = value; }
    }
    private string category_name;

    public string Category_name
    {
        get { return category_name; }
        set { category_name = value; }
    }

}