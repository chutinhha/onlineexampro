using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_AdvanceRefund
/// </summary>
public class Payroll_AdvanceRefundBL : Payroll_AdvanceRefundProperties, IPayroll
{
    public Payroll_AdvanceRefundBL(int refund_ID, decimal refund_Amount, DateTime due_Date, int fkEmployee_ID)
    {
        this.Refund_ID = refund_ID;
        this.Refund_Amount = refund_Amount;
        this.Due_Date = due_Date;
        this.FkEmployee_ID = fkEmployee_ID;
    }
    public Payroll_AdvanceRefundBL(decimal refund_Amount, DateTime due_Date, int fkEmployee_ID)
    {
        this.Refund_Amount = refund_Amount;
        this.Due_Date = due_Date;
        this.FkEmployee_ID = fkEmployee_ID;
    }
    public Payroll_AdvanceRefundBL(int refund_ID)
    {
        this.Refund_ID = refund_ID;
    }
    public Payroll_AdvanceRefundBL()
    {
       
    }

    public bool Insert()
    {
        return Payroll_AdvanceRefundDL.Insert(this);
    }

    public bool Update()
    {
        return Payroll_AdvanceRefundDL.Update(this);
    }

    public bool Delete()
    {
        return Payroll_AdvanceRefundDL.Delete(this);

    }
}