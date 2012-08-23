using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_Previous_CompanyDetailBL
/// </summary>
public class Payroll_Previous_CompanyDetailBL : Payroll_Previous_CompanyDetailProperties, IPayroll
{
    public Payroll_Previous_CompanyDetailBL(int pre_ID, string pre_Name, string pre_Address, string pre_ContactPerson, long pre_Mobile, long pre_Phone, string pre_Email, string pre_Website, decimal pre_Salary, int fkEmployee_id)
    {
        this.Pre_ID = pre_ID;
        this.Pre_Name = pre_Name;
        this.Pre_Address = pre_Address;
        this.Pre_ContactPerson = pre_ContactPerson;
        this.Pre_Mobile = pre_Mobile;
        this.Pre_Phone = pre_Phone;
        this.Pre_Email = pre_Email;
        this.Pre_Website = pre_Website;
        this.Pre_Salary = pre_Salary;
        this.FkEmployee_id = fkEmployee_id;
    }
    public Payroll_Previous_CompanyDetailBL(string pre_Name, string pre_Address, string pre_ContactPerson, long pre_Mobile, long pre_Phone, string pre_Email, string pre_Website, decimal pre_Salary, int fkEmployee_id)
    {
        this.Pre_Name = pre_Name;
        this.Pre_Address = pre_Address;
        this.Pre_ContactPerson = pre_ContactPerson;
        this.Pre_Mobile = pre_Mobile;
        this.Pre_Phone = pre_Phone;
        this.Pre_Email = pre_Email;
        this.Pre_Website = pre_Website;
        this.Pre_Salary = pre_Salary;
        this.FkEmployee_id = fkEmployee_id;
    }
    public Payroll_Previous_CompanyDetailBL(int pre_ID)
    {
        this.Pre_ID = pre_ID;

    }
    public Payroll_Previous_CompanyDetailBL()
    {
       
    }

    public bool Insert()
    {
        return Payroll_Previous_CompanyDetailDL.Insert(this);
    }

    public bool Update()
    {
        return Payroll_Previous_CompanyDetailDL.Update(this);
    }

    public bool Delete()
    {
        return Payroll_Previous_CompanyDetailDL.Delete(this);
    }
}