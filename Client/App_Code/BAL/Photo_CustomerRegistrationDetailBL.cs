using System;
using System.Collections.Generic;
using System.Web;


/// <summary>
/// Summary description for Photo_CustomerRegistrationDetailBL
/// </summary>
public class Photo_CustomerRegistrationDetailBL:Photo_CustomerRegistrationDetailProperties,IPhotoProcessing
{
    public Photo_CustomerRegistrationDetailBL(long customer_id, long mobile, string email, string password, int status, string profile_Image, string full_name, int country, int error_count, int email_Subs, int sMS_Subs, DateTime reg_Date, DateTime last_Login, DateTime dOB, int activationStatus_Mail, int activationStatus_Mobile)
    {
        this.Customer_id = customer_id;
        this.Mobile = mobile;
        this.Email = email;
        this.Password = password;
        this.Status = status;
        this.Profile_Image = profile_Image;
        this.Full_Name = full_name;
        this.Country = country;
        this.Error_count = error_count;
        this.Email_Subs = email_Subs;
        this.Reg_Date = reg_Date;
        this.SMS_Subs = sMS_Subs;
        this.Last_Login = last_Login;
        this.DOB = dOB;
        this.ActivationStatus_Mail = activationStatus_Mail;
        this.ActivationStatus_Mobile = activationStatus_Mobile;
    }
    public Photo_CustomerRegistrationDetailBL( long mobile, string email, string password, int status, string profile_Image, string full_name, int country, int error_count, int email_Subs, int sMS_Subs, DateTime reg_Date, DateTime last_Login, DateTime dOB, int activationStatus_Mail, int activationStatus_Mobile)
    {
        this.Mobile = mobile;
        this.Email = email;
        this.Password = password;
        this.Status = status;
        this.Profile_Image = profile_Image;
        this.Full_Name = full_name;
        this.Country = country;
        this.Error_count = error_count;
        this.Email_Subs = email_Subs;
        this.Reg_Date = reg_Date;
        this.SMS_Subs = sMS_Subs;
        this.Last_Login = last_Login;
        this.DOB = dOB;
        this.ActivationStatus_Mail = activationStatus_Mail;
        this.ActivationStatus_Mobile = activationStatus_Mobile;
    }
    public Photo_CustomerRegistrationDetailBL(long customer_id)
    {
        this.Customer_id = customer_id;
      
    }
	public Photo_CustomerRegistrationDetailBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public bool Insert()
    {
        return Photo_CustomerRegistrationDetailDL.Insert(this);
    }

    public bool Update()
    {
        return Photo_CustomerRegistrationDetailDL.Update(this);
    }

    public bool Delete()
    {
        return Photo_CustomerRegistrationDetailDL.Delete(this);
    }    
}