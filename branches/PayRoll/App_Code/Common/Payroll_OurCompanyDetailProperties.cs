using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_OurCompanyDetailProperties
/// </summary>
public abstract class Payroll_OurCompanyDetailProperties
{
    int cur_ID, fkEmployee_ID;
    DateTime cur_JoiningDate, cur_Relieving;
    decimal cur_SalaryOnJoining, cur_SalaryNow, cur_Insentive;
    string cur_CertificateProvided, cur_Designation, cur_ResumeUrl, cur_Command;
    bool cur_Status;

    public int FkEmployee_ID
    {
        get { return fkEmployee_ID; }
        set { fkEmployee_ID = value; }
    }

    public int Cur_ID
    {
        get { return cur_ID; }
        set { cur_ID = value; }
    }


    public DateTime Cur_Relieving
    {
        get { return cur_Relieving; }
        set { cur_Relieving = value; }
    }

    public DateTime Cur_JoiningDate
    {
        get { return cur_JoiningDate; }
        set { cur_JoiningDate = value; }
    }


    public decimal Cur_Insentive
    {
        get { return cur_Insentive; }
        set { cur_Insentive = value; }
    }

    public decimal Cur_SalaryNow
    {
        get { return cur_SalaryNow; }
        set { cur_SalaryNow = value; }
    }

    public decimal Cur_SalaryOnJoining
    {
        get { return cur_SalaryOnJoining; }
        set { cur_SalaryOnJoining = value; }
    }


    public bool Cur_Status
    {
        get { return cur_Status; }
        set { cur_Status = value; }
    }


    public string Cur_Command
    {
        get { return cur_Command; }
        set { cur_Command = value; }
    }

    public string Cur_ResumeUrl
    {
        get { return cur_ResumeUrl; }
        set { cur_ResumeUrl = value; }
    }

    public string Cur_Designation
    {
        get { return cur_Designation; }
        set { cur_Designation = value; }
    }

    public string Cur_CertificateProvided
    {
        get { return cur_CertificateProvided; }
        set { cur_CertificateProvided = value; }
    }
}