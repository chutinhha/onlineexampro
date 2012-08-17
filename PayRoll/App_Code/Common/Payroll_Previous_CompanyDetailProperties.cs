using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_Previous_CompanyDetailProperties
/// </summary>
public abstract class Payroll_Previous_CompanyDetailProperties
{
    int pre_ID, fkEmployee_id;
    string pre_Name, pre_Address, pre_Email, pre_Website, pre_ContactPerson;
    long pre_Mobile, pre_Phone;
    decimal pre_Salary;

    public decimal Pre_Salary
    {
        get { return pre_Salary; }
        set { pre_Salary = value; }
    }
    public long Pre_Phone
    {
        get { return pre_Phone; }
        set { pre_Phone = value; }
    }

    public long Pre_Mobile
    {
        get { return pre_Mobile; }
        set { pre_Mobile = value; }
    }

    public string Pre_ContactPerson
    {
        get { return pre_ContactPerson; }
        set { pre_ContactPerson = value; }
    }

    public string Pre_Website
    {
        get { return pre_Website; }
        set { pre_Website = value; }
    }

    public string Pre_Email
    {
        get { return pre_Email; }
        set { pre_Email = value; }
    }

    public string Pre_Address
    {
        get { return pre_Address; }
        set { pre_Address = value; }
    }

    public string Pre_Name
    {
        get { return pre_Name; }
        set { pre_Name = value; }
    }

    public int FkEmployee_id
    {
        get { return fkEmployee_id; }
        set { fkEmployee_id = value; }
    }

    public int Pre_ID
    {
        get { return pre_ID; }
        set { pre_ID = value; }
    }

}