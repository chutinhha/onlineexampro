using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Photo_SubCatagoryDetailDL
/// </summary>
internal class Photo_SubCatagoryDetailDL
{
    internal static bool Insert(Photo_SubCatagoryDetailBL photo_SubCatagoryDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_SubCatagoryDetailNewInsertCommand(photo_SubCatagoryDetailBL.Category_name, photo_SubCatagoryDetailBL.FkPlan_id);
        return true;
    }

    internal static bool Update(Photo_SubCatagoryDetailBL photo_SubCatagoryDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_SubCatagoryDetailNewUpdateCommand(photo_SubCatagoryDetailBL.Category_name, photo_SubCatagoryDetailBL.FkPlan_id, photo_SubCatagoryDetailBL.SubCategory_id, photo_SubCatagoryDetailBL.SubCategory_id);
        return true;
    }

    internal static bool Delete(Photo_SubCatagoryDetailBL photo_SubCatagoryDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_SubCatagoryDetailNewDeleteCommand(photo_SubCatagoryDetailBL.SubCategory_id);
        return true;
    }
}