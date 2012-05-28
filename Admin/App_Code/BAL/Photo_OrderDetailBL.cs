using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Photo_OrderDetailBL
/// </summary>
public class Photo_OrderDetailBL:Photo_OrderDetailProperties,IPhotoProcessing
{
    public Photo_OrderDetailBL(long order_id, long fkCustomer_id, string image_name, string input_Image_URL, string edit_Options, string complaint_Towards, string process_Status, string output_Image_URL, int fkPlan_id, int fkPromo_Code, int fkCustomer_Status, DateTime ordered_date, DateTime deliveredDate_SoftCopy, decimal total_Amount)
    {
        this.Order_id = order_id;
        this.FkCustomer_id = fkCustomer_id;
        this.Image_name = image_name;
        this.Input_Image_URL = input_Image_URL;
        this.Edit_Options = edit_Options;
        this.Complaint_Towards = complaint_Towards;
        this.Process_Status = process_Status;
        this.Output_Image_URL = output_Image_URL;
        this.FkPlan_id = fkPlan_id;
        this.FkCustomer_Status = fkCustomer_Status;
        this.Ordered_date = ordered_date;
        this.DeliveredDate_SoftCopy = deliveredDate_SoftCopy;
        this.Total_Amount = total_Amount;
    }
    public Photo_OrderDetailBL(long fkCustomer_id, string image_name, string input_Image_URL, string edit_Options, string complaint_Towards, string process_Status, string output_Image_URL, int fkPlan_id, int fkPromo_Code, int fkCustomer_Status, DateTime ordered_date, DateTime deliveredDate_SoftCopy, decimal total_Amount)
    {
        this.FkCustomer_id = fkCustomer_id;
        this.Image_name = image_name;
        this.Input_Image_URL = input_Image_URL;
        this.Edit_Options = edit_Options;
        this.Complaint_Towards = complaint_Towards;
        this.Process_Status = process_Status;
        this.Output_Image_URL = output_Image_URL;
        this.FkPlan_id = fkPlan_id;
        this.FkCustomer_Status = fkCustomer_Status;
        this.Ordered_date = ordered_date;
        this.DeliveredDate_SoftCopy = deliveredDate_SoftCopy;
        this.Total_Amount = total_Amount;
    }
    public Photo_OrderDetailBL(long order_id)
    {
        this.Order_id = order_id;
       
    }
	public Photo_OrderDetailBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public bool Insert()
    {
        return Photo_OrderDetailDL.Insert(this);
    }

    public bool Update()
    {
        return Photo_OrderDetailDL.Update(this);
    }

    public bool Delete()
    {
        return Photo_OrderDetailDL.Delete(this);
    }
}