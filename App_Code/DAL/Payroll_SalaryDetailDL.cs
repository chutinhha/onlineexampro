using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_SalaryDetailDL
/// </summary>
internal class Payroll_SalaryDetailDL
{

    internal static bool Insert(Payroll_SalaryDetailBL payroll_SalaryDetailBL)
    {
        PayrollHelper.Context.sp_Payroll_SalaryDetailNewInsertCommand(payroll_SalaryDetailBL.Pay, payroll_SalaryDetailBL.No_Days, payroll_SalaryDetailBL.Insentive, payroll_SalaryDetailBL.Extra_Benifits, payroll_SalaryDetailBL.Gross_Pay, payroll_SalaryDetailBL.Basic, payroll_SalaryDetailBL.HRA, payroll_SalaryDetailBL.Total_Amount, payroll_SalaryDetailBL.NETT, payroll_SalaryDetailBL.SalaryAdvanceBalance, payroll_SalaryDetailBL.AdvanceDeduction, payroll_SalaryDetailBL.PF, payroll_SalaryDetailBL.ESI, payroll_SalaryDetailBL.Deduction_Total, payroll_SalaryDetailBL.SalaryOfMonth, payroll_SalaryDetailBL.FkEmployee_ID);
        return true;
    }

    internal static bool Update(Payroll_SalaryDetailBL payroll_SalaryDetailBL)
    {
        PayrollHelper.Context.sp_Payroll_SalaryDetailNewUpdateCommand(payroll_SalaryDetailBL.Pay, payroll_SalaryDetailBL.No_Days, payroll_SalaryDetailBL.Insentive, payroll_SalaryDetailBL.Extra_Benifits, payroll_SalaryDetailBL.Gross_Pay, payroll_SalaryDetailBL.Basic, payroll_SalaryDetailBL.HRA, payroll_SalaryDetailBL.Total_Amount, payroll_SalaryDetailBL.NETT, payroll_SalaryDetailBL.SalaryAdvanceBalance, payroll_SalaryDetailBL.AdvanceDeduction, payroll_SalaryDetailBL.PF, payroll_SalaryDetailBL.ESI, payroll_SalaryDetailBL.Deduction_Total, payroll_SalaryDetailBL.SalaryOfMonth, payroll_SalaryDetailBL.FkEmployee_ID, payroll_SalaryDetailBL.Salary_ID, payroll_SalaryDetailBL.Salary_ID);
        return true;
    }

    internal static bool Delete(Payroll_SalaryDetailBL payroll_SalaryDetailBL)
    {
        PayrollHelper.Context.sp_Payroll_SalaryDetailNewDeleteCommand(payroll_SalaryDetailBL.Salary_ID);
        return true;
    }
}