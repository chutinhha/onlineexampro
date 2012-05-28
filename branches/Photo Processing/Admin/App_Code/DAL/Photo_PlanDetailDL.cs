using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Photo_PlanDetailDL
/// </summary>
internal class Photo_PlanDetailDL
{
    internal static bool Insert(Photo_PlanDetailBL photo_PlanDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_PlanDetailNewInsertCommand(photo_PlanDetailBL.Plan_Name, photo_PlanDetailBL.Rate);
        return true;
    }

    internal static bool Update(Photo_PlanDetailBL photo_PlanDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_PlanDetailNewUpdateCommand(photo_PlanDetailBL.Plan_Name, photo_PlanDetailBL.Rate, photo_PlanDetailBL.Plan_id, photo_PlanDetailBL.Plan_id);
        return true;
    }

    internal static bool Delete(Photo_PlanDetailBL photo_PlanDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_PlanDetailNewDeleteCommand(photo_PlanDetailBL.Plan_id);
        return true;
    }
}