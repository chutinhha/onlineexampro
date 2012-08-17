using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_Previous_CompanyDetailDL
/// </summary>
internal class Payroll_Previous_CompanyDetailDL
{

    internal static bool Insert(Payroll_Previous_CompanyDetailBL payroll_Previous_CompanyDetailBL)
    {
        PayrollHelper.Context.sp_Payroll_Previous_CompanyDetailNewInsertCommand(payroll_Previous_CompanyDetailBL.Pre_Name, payroll_Previous_CompanyDetailBL.Pre_Address, payroll_Previous_CompanyDetailBL.Pre_ContactPerson, payroll_Previous_CompanyDetailBL.Pre_Mobile, payroll_Previous_CompanyDetailBL.Pre_Phone, payroll_Previous_CompanyDetailBL.Pre_Email, payroll_Previous_CompanyDetailBL.Pre_Website, payroll_Previous_CompanyDetailBL.Pre_Salary, payroll_Previous_CompanyDetailBL.FkEmployee_id);
        return true;
    }

    internal static bool Update(Payroll_Previous_CompanyDetailBL payroll_Previous_CompanyDetailBL)
    {
        PayrollHelper.Context.sp_Payroll_Previous_CompanyDetailNewUpdateCommand(payroll_Previous_CompanyDetailBL.Pre_Name, payroll_Previous_CompanyDetailBL.Pre_Address, payroll_Previous_CompanyDetailBL.Pre_ContactPerson, payroll_Previous_CompanyDetailBL.Pre_Mobile, payroll_Previous_CompanyDetailBL.Pre_Phone, payroll_Previous_CompanyDetailBL.Pre_Email, payroll_Previous_CompanyDetailBL.Pre_Website, payroll_Previous_CompanyDetailBL.Pre_Salary, payroll_Previous_CompanyDetailBL.FkEmployee_id, payroll_Previous_CompanyDetailBL.Pre_ID, payroll_Previous_CompanyDetailBL.Pre_ID);
        return true;
    }

    internal static bool Delete(Payroll_Previous_CompanyDetailBL payroll_Previous_CompanyDetailBL)
    {
        PayrollHelper.Context.sp_Payroll_Previous_CompanyDetailNewDeleteCommand(payroll_Previous_CompanyDetailBL.Pre_ID);
        return true;
    }
}