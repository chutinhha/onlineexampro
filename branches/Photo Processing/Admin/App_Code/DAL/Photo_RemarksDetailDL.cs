using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Photo_RemarksDetailDL
/// </summary>
internal class Photo_RemarksDetailDL
{
	
    internal static bool Insert(Photo_RemarksDetailBL photo_RemarksDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_RemarksDetailNewInsertCommand(photo_RemarksDetailBL.Remarks_Detail, photo_RemarksDetailBL.FkOrder_id);
        return true;
    }

    internal static bool Update(Photo_RemarksDetailBL photo_RemarksDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_RemarksDetailNewUpdateCommand(photo_RemarksDetailBL.Remarks_Detail, photo_RemarksDetailBL.FkOrder_id, photo_RemarksDetailBL.Remark_id, photo_RemarksDetailBL.Remark_id);
        return true;
    }

    internal static bool Delete(Photo_RemarksDetailBL photo_RemarksDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_RemarksDetailNewDeleteCommand(photo_RemarksDetailBL.Remark_id);
        return true;
    }
}