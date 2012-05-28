using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Photo_Promo_codeDetailDL
/// </summary>
internal class Photo_Promo_codeDetailDL
{
	

    internal static bool Insert(Photo_Promo_codeDetailBL photo_Promo_codeDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_Promo_codeDetailNewInsertCommand(photo_Promo_codeDetailBL.Code, photo_Promo_codeDetailBL.Promo_Discount, photo_Promo_codeDetailBL.FkCustomer_id);
        return true;
    }

    internal static bool Update(Photo_Promo_codeDetailBL photo_Promo_codeDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_Promo_codeDetailNewUpdateCommand(photo_Promo_codeDetailBL.Code, photo_Promo_codeDetailBL.Promo_Discount, photo_Promo_codeDetailBL.FkCustomer_id, photo_Promo_codeDetailBL.Promo_code_id, photo_Promo_codeDetailBL.Promo_code_id);
        return true;
    }

    internal static bool Delete(Photo_Promo_codeDetailBL photo_Promo_codeDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_Promo_codeDetailNewDeleteCommand(photo_Promo_codeDetailBL.Promo_code_id);
        return true;
    }
}