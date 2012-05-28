using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Photo_SubCatagoryDetailBL
/// </summary>
public class Photo_SubCatagoryDetailBL:Photo_SubCatagoryDetailProperties,IPhotoProcessing
{
    public Photo_SubCatagoryDetailBL(int subCategory_id, string category_name, int fkPlan_id)
	{
        this.SubCategory_id = subCategory_id;
        this.Category_name = category_name;
        this.FkPlan_id = fkPlan_id;
	}
    public Photo_SubCatagoryDetailBL( string category_name, int fkPlan_id)
    {
        this.Category_name = category_name;
        this.FkPlan_id = fkPlan_id;
    }
    public Photo_SubCatagoryDetailBL(int subCategory_id)
    {
        this.SubCategory_id = subCategory_id;
       
    }
    public Photo_SubCatagoryDetailBL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool Insert()
    {
        return Photo_SubCatagoryDetailDL.Insert(this);
    }

    public bool Update()
    {
        return Photo_SubCatagoryDetailDL.Update(this);
    }

    public bool Delete()
    {
        return Photo_SubCatagoryDetailDL.Delete(this);
    }
}