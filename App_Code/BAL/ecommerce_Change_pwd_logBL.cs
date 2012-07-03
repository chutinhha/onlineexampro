using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ecommerce_Change_pwd_logBL
/// </summary>
public class ecommerce_Change_pwd_logBL:ecommerce_Change_pwd_logProperties,IeCommerce
{
    public ecommerce_Change_pwd_logBL(string new_pwd, string old_pwd, DateTime date, int customer_id)
    {
        this.New_pwd = new_pwd;
        this.Old_pwd = old_pwd;
        this.Date = date;
        this.Customer_id = customer_id;
    }
    public ecommerce_Change_pwd_logBL(int change_pwd_id, string new_pwd, string old_pwd, DateTime date, int customer_id)
	{
        this.Change_pwd_id = change_pwd_id;
        this.New_pwd = new_pwd;
        this.Old_pwd = old_pwd;
        this.Date = date;
        this.Customer_id = customer_id;
	}
    public ecommerce_Change_pwd_logBL(int change_pwd_id)
    {
        this.Change_pwd_id = change_pwd_id;
        
    }
    public ecommerce_Change_pwd_logBL()
    {
    }

    public bool Insert()
    {
        return ecommerce_Change_pwd_logDL.Insert(this);
    }

    public bool Update()
    {
        return ecommerce_Change_pwd_logDL.Update(this);
        
    }

    public bool Delete()
    {
        return ecommerce_Change_pwd_logDL.Delete(this);
    }
}