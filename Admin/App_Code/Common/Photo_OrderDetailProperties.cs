using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_OrderDetailProperties
/// </summary>
public abstract class Photo_OrderDetailProperties
{
    long order_id, fkCustomer_id;

    public long FkCustomer_id
    {
        get { return fkCustomer_id; }
        set { fkCustomer_id = value; }
    }

    public long Order_id
    {
        get { return order_id; }
        set { order_id = value; }
    }
    string image_name, input_Image_URL, edit_Options, complaint_Towards, process_Status, output_Image_URL;

    public string Output_Image_URL
    {
        get { return output_Image_URL; }
        set { output_Image_URL = value; }
    }

    public string Process_Status
    {
        get { return process_Status; }
        set { process_Status = value; }
    }

    public string Complaint_Towards
    {
        get { return complaint_Towards; }
        set { complaint_Towards = value; }
    }

    public string Edit_Options
    {
        get { return edit_Options; }
        set { edit_Options = value; }
    }

    public string Input_Image_URL
    {
        get { return input_Image_URL; }
        set { input_Image_URL = value; }
    }

    public string Image_name
    {
        get { return image_name; }
        set { image_name = value; }
    }
    int fkPlan_id,  fkCustomer_Status;

    public int FkCustomer_Status
    {
        get { return fkCustomer_Status; }
        set { fkCustomer_Status = value; }
    }

   

    public int FkPlan_id
    {
        get { return fkPlan_id; }
        set { fkPlan_id = value; }
    }
    DateTime ordered_date, deliveredDate_SoftCopy;

    public DateTime DeliveredDate_SoftCopy
    {
        get { return deliveredDate_SoftCopy; }
        set { deliveredDate_SoftCopy = value; }
    }

    public DateTime Ordered_date
    {
        get { return ordered_date; }
        set { ordered_date = value; }
    }
    decimal total_Amount;

    public decimal Total_Amount
    {
        get { return total_Amount; }
        set { total_Amount = value; }
    }
}