using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_Change_Password_logBL
/// </summary>
public class Photo_Change_Password_logBL:Photo_Change_Password_logProperties,IPhotoProcessing
{
    public Photo_Change_Password_logBL(int change_pwd_id, string new_Password, string old_Password, DateTime date_of_change, long fkCustomer_id)
    {
        this.FkCustomer_id = fkCustomer_id;
        this.Change_pwd_id = change_pwd_id;
        this.New_Password = new_Password;
        this.Date_of_change = date_of_change;
        this.Old_Password = old_Password;
    }
    public Photo_Change_Password_logBL(string new_Password, string old_Password, DateTime date_of_change, long fkCustomer_id)
    {
        this.FkCustomer_id = fkCustomer_id;
        this.New_Password = new_Password;
        this.Date_of_change = date_of_change;
        this.Old_Password = old_Password;
    }
    public Photo_Change_Password_logBL(int change_pwd_id)
    {
        this.Change_pwd_id = change_pwd_id;
    }
	public Photo_Change_Password_logBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}


    public bool Insert()
    {
        return Photo_Change_Password_logDL.Insert(this);
    }

    public bool Update()
    {
        return Photo_Change_Password_logDL.Update(this);

    }

    public bool Delete()
    {
        return Photo_Change_Password_logDL.Delete(this);

    }
}