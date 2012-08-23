using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_OurCompanyDetailBL
/// </summary>
public class Payroll_OurCompanyDetailBL : Payroll_OurCompanyDetailProperties, IPayroll
{
    public Payroll_OurCompanyDetailBL(int cur_ID, DateTime cur_JoiningDate, decimal cur_SalaryOnJoining, DateTime cur_Relieving, bool cur_Status, string cur_CertificateProvided, decimal cur_SalaryNow, decimal cur_Insentive, string cur_Designation, string cur_ResumeUrl, string cur_Command, int fkEmployee_ID)
    {
        this.Cur_ID = cur_ID;
        this.Cur_JoiningDate = cur_JoiningDate;
        this.Cur_SalaryOnJoining = cur_SalaryOnJoining;
        this.Cur_Relieving = cur_Relieving;
        this.Cur_Status = cur_Status;
        this.Cur_CertificateProvided = cur_CertificateProvided;
        this.Cur_SalaryNow = cur_SalaryNow;
        this.Cur_Insentive = cur_Insentive;
        this.Cur_Designation = cur_Designation;
        this.Cur_ResumeUrl = cur_ResumeUrl;
        this.Cur_Command = cur_Command;
        this.FkEmployee_ID = fkEmployee_ID;
    }
    public Payroll_OurCompanyDetailBL(DateTime cur_JoiningDate, decimal cur_SalaryOnJoining, DateTime cur_Relieving, bool cur_Status, string cur_CertificateProvided, decimal cur_SalaryNow, decimal cur_Insentive, string cur_Designation, string cur_ResumeUrl, string cur_Command, int fkEmployee_ID)
    {
        this.Cur_JoiningDate = cur_JoiningDate;
        this.Cur_SalaryOnJoining = cur_SalaryOnJoining;
        this.Cur_Relieving = cur_Relieving;
        this.Cur_Status = cur_Status;
        this.Cur_CertificateProvided = cur_CertificateProvided;
        this.Cur_SalaryNow = cur_SalaryNow;
        this.Cur_Insentive = cur_Insentive;
        this.Cur_Designation = cur_Designation;
        this.Cur_ResumeUrl = cur_ResumeUrl;
        this.Cur_Command = cur_Command;
        this.FkEmployee_ID = fkEmployee_ID;
    }
    public Payroll_OurCompanyDetailBL(int cur_ID)
    {
        this.Cur_ID = cur_ID;
    }
    public Payroll_OurCompanyDetailBL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool Insert()
    {
        return Payroll_OurCompanyDetailDL.Insert(this);
    }

    public bool Update()
    {
        return Payroll_OurCompanyDetailDL.Update(this);
    }

    public bool Delete()
    {
        return Payroll_OurCompanyDetailDL.Delete(this);
    }
}