using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DAL;

/// <summary>
/// Summary description for Payroll_AdvanceManagement
/// </summary>
internal class Payroll_AdvanceManagementDL
{

    internal static bool Insert(Payroll_AdvanceManagementBL payroll_AdvanceManagementBL)
    {
        PayrollHelper.Context.sp_Payroll_AdvanceManagementNewInsertCommand(payroll_AdvanceManagementBL.Salary_Advance, payroll_AdvanceManagementBL.Refund_Advance, payroll_AdvanceManagementBL.Advance_Date, payroll_AdvanceManagementBL.FkEmployee_ID);
        return true;
    }

    internal static bool Update(Payroll_AdvanceManagementBL payroll_AdvanceManagementBL)
    {
        PayrollHelper.Context.sp_Payroll_AdvanceManagementNewUpdateCommand(payroll_AdvanceManagementBL.Salary_Advance, payroll_AdvanceManagementBL.Refund_Advance, payroll_AdvanceManagementBL.Advance_Date, payroll_AdvanceManagementBL.FkEmployee_ID, payroll_AdvanceManagementBL.Advance_ID, payroll_AdvanceManagementBL.Advance_ID);
        return true;
    }

    internal static bool Delete(Payroll_AdvanceManagementBL payroll_AdvanceManagementBL)
    {
        PayrollHelper.Context.sp_Payroll_AdvanceManagementNewDeleteCommand(payroll_AdvanceManagementBL.Advance_ID);
        return true;
    }
}