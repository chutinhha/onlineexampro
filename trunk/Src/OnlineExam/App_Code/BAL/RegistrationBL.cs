using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RegistrationBL
/// </summary>
public class RegistrationBL:RegistrationProperties,IOnlinExam
{
    public RegistrationBL(long userId, string name, long mobile, string email, DateTime date)
	{
        this.UserId = userId;
        this.Name = name;
        this.Mobile = mobile;
        this.Email = email;
        this.Date = date;
	}
    public RegistrationBL(string name, long mobile, string email, DateTime date)
    {
        this.Name = name;
        this.Mobile = mobile;
        this.Email = email;
        this.Date = date;
    }
    public RegistrationBL(long userId)
    {
        this.UserId = userId;
    }
    public RegistrationBL()
    {
    }

    public bool Insert()
    {
        return RegistrationDL.Insert(this);
    }

    public bool Update()
    {
        return RegistrationDL.Update(this);
    }

    public bool Delete()
    {
        return RegistrationDL.Delete(this);
    }
}