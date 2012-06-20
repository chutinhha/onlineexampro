using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_Customer_registrationBL
/// </summary>
public class ecommerce_Customer_registrationBL:ecommerce_Customer_registrationProperties,IeCommerce
{

    public ecommerce_Customer_registrationBL(string email, string password, long mobile, string city, DateTime date, DateTime last_login, int error_count, string cus_Status, string profile_image, string first_name, string last_name, string dOB, string email_Subs, string sms_Subs)
    {
        this.Email = email;
        this.Password = password;
        this.Mobile = mobile;
        this.City = city;
        this.Date = date;
        this.Last_login = last_login;
        this.Error_count = error_count;
        this.Cus_Status = cus_Status;
        this.Profile_image = profile_image;
        this.First_name = first_name;
        this.Last_name = last_name;
        this.DOB = dOB;
        this.Email_Subs = email_Subs;
        this.Sms_Subs = sms_Subs;

    }
    
    public ecommerce_Customer_registrationBL(int customer_id, string email, string password, long mobile, string city, DateTime date, DateTime last_login, int error_count, string cus_Status, string profile_image, string first_name, string last_name, string dOB, string email_Subs, string sms_Subs)
	{
        this.Customer_id = customer_id;
        this.Email = email;
        this.Password = password;
        this.Mobile = mobile;
        this.City = city;
        this.Date = date;
        this.Last_login = last_login;
        this.Error_count = error_count;
        this.Cus_Status = cus_Status;
        this.Profile_image = profile_image;
        this.First_name = first_name;
        this.Last_name = last_name;
        this.DOB = dOB;
        this.Email_Subs = email_Subs;
        this.Sms_Subs = sms_Subs;
		
	}
    public ecommerce_Customer_registrationBL(int customer_id)
    {
        this.Customer_id = customer_id;
    }
    public ecommerce_Customer_registrationBL()
    {
       
    }

    public bool Insert()
    {
        return ecommerce_Customer_registrationDL.Insert(this);
        
    }

    public bool Update()
    {
        return ecommerce_Customer_registrationDL.Update(this);

    }

    public bool Delete()
    {
        return ecommerce_Customer_registrationDL.Delete(this);

    }
}