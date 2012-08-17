using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_OurCompanyDetailDL
/// </summary>
internal class Payroll_OurCompanyDetailDL
{

    internal static bool Insert(Payroll_OurCompanyDetailBL payroll_OurCompanyDetailBL)
    {
        PayrollHelper.Context.sp_Payroll_OurCompanyDetailNewInsertCommand(payroll_OurCompanyDetailBL.Cur_JoiningDate, payroll_OurCompanyDetailBL.Cur_SalaryOnJoining, payroll_OurCompanyDetailBL.Cur_Relieving, payroll_OurCompanyDetailBL.Cur_Status, payroll_OurCompanyDetailBL.Cur_CertificateProvided, payroll_OurCompanyDetailBL.Cur_SalaryNow, payroll_OurCompanyDetailBL.Cur_Insentive, payroll_OurCompanyDetailBL.Cur_Designation, payroll_OurCompanyDetailBL.Cur_ResumeUrl, payroll_OurCompanyDetailBL.Cur_Command, payroll_OurCompanyDetailBL.FkEmployee_ID);
        return true;
    }

    internal static bool Update(Payroll_OurCompanyDetailBL payroll_OurCompanyDetailBL)
    {
        PayrollHelper.Context.sp_Payroll_OurCompanyDetailNewUpdateCommand(payroll_OurCompanyDetailBL.Cur_JoiningDate, payroll_OurCompanyDetailBL.Cur_SalaryOnJoining, payroll_OurCompanyDetailBL.Cur_Relieving, payroll_OurCompanyDetailBL.Cur_Status, payroll_OurCompanyDetailBL.Cur_CertificateProvided, payroll_OurCompanyDetailBL.Cur_SalaryNow, payroll_OurCompanyDetailBL.Cur_Insentive, payroll_OurCompanyDetailBL.Cur_Designation, payroll_OurCompanyDetailBL.Cur_ResumeUrl, payroll_OurCompanyDetailBL.Cur_Command, payroll_OurCompanyDetailBL.FkEmployee_ID, payroll_OurCompanyDetailBL.Cur_ID, payroll_OurCompanyDetailBL.Cur_ID);
        return true;
    }

    internal static bool Delete(Payroll_OurCompanyDetailBL payroll_OurCompanyDetailBL)
    {
        PayrollHelper.Context.sp_Payroll_OurCompanyDetailNewDeleteCommand(payroll_OurCompanyDetailBL.Cur_ID);
        return true;
    }
}