using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_AdvanceRefundDL
/// </summary>
internal class Payroll_AdvanceRefundDL
{

    internal static bool Insert(Payroll_AdvanceRefundBL payroll_AdvanceRefundBL)
    {
        PayrollHelper.Context.sp_Payroll_AdvanceRefundNewInsertCommand(payroll_AdvanceRefundBL.Refund_Amount, payroll_AdvanceRefundBL.Due_Date, payroll_AdvanceRefundBL.FkEmployee_ID);
        return true;
    }

    internal static bool Update(Payroll_AdvanceRefundBL payroll_AdvanceRefundBL)
    {
        PayrollHelper.Context.sp_Payroll_AdvanceRefundNewUpdateCommand(payroll_AdvanceRefundBL.Refund_Amount, payroll_AdvanceRefundBL.Due_Date, payroll_AdvanceRefundBL.FkEmployee_ID, payroll_AdvanceRefundBL.Refund_ID, payroll_AdvanceRefundBL.Refund_ID);
        return true;
    }

    internal static bool Delete(Payroll_AdvanceRefundBL payroll_AdvanceRefundBL)
    {
        PayrollHelper.Context.sp_Payroll_AdvanceRefundNewDeleteCommand(payroll_AdvanceRefundBL.Refund_ID);
        return true;
    }
}