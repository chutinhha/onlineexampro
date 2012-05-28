using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_Customer_StatusBL
/// </summary>
public class Photo_Customer_StatusBL : Photo_Customer_StatusProperties, IPhotoProcessing
{
    public Photo_Customer_StatusBL(int status_id, string status_name)
    {
        this.Status_id = status_id;
        this.Status_name = status_name;
    }
    public Photo_Customer_StatusBL(string status_name)
    {
        this.Status_name = status_name;
    }
    public Photo_Customer_StatusBL(int status_id)
    {
        this.Status_id = status_id;
    }
    public Photo_Customer_StatusBL()
    {

    }

    public bool Insert()
    {
        return Photo_Customer_StatusDL.Insert(this);
    }

    public bool Update()
    {
        return Photo_Customer_StatusDL.Update(this);
    }

    public bool Delete()
    {
        return Photo_Customer_StatusDL.Delete(this);
    }
}