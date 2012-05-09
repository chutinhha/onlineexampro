using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Photo_OrderDetailDL
/// </summary>
internal class Photo_OrderDetailDL
{
	
    internal static bool Insert(Photo_OrderDetailBL photo_OrderDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_OrderDetailNewInsertCommand(photo_OrderDetailBL.FkCustomer_id, photo_OrderDetailBL.Image_name, photo_OrderDetailBL.Input_Image_URL, photo_OrderDetailBL.Edit_Options, photo_OrderDetailBL.Complaint_Towards, photo_OrderDetailBL.FkPlan_id, photo_OrderDetailBL.Ordered_date, photo_OrderDetailBL.DeliveredDate_SoftCopy, photo_OrderDetailBL.Process_Status, photo_OrderDetailBL.Total_Amount, photo_OrderDetailBL.FkCustomer_Status, photo_OrderDetailBL.Output_Image_URL);
        return true;   
    }

    internal static bool Update(Photo_OrderDetailBL photo_OrderDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_OrderDetailNewUpdateCommand(photo_OrderDetailBL.FkCustomer_id, photo_OrderDetailBL.Image_name, photo_OrderDetailBL.Input_Image_URL, photo_OrderDetailBL.Edit_Options, photo_OrderDetailBL.Complaint_Towards, photo_OrderDetailBL.FkPlan_id, photo_OrderDetailBL.Ordered_date, photo_OrderDetailBL.DeliveredDate_SoftCopy, photo_OrderDetailBL.Process_Status, photo_OrderDetailBL.Total_Amount, photo_OrderDetailBL.FkCustomer_Status, photo_OrderDetailBL.Output_Image_URL,photo_OrderDetailBL.Order_id,photo_OrderDetailBL.Order_id);
        return true; 
    }

    internal static bool Delete(Photo_OrderDetailBL photo_OrderDetailBL)
    {
        PhotoProcessingHelper.Context.sp_Photo_OrderDetailNewDeleteCommand(photo_OrderDetailBL.Order_id);
        return true;
    }
}