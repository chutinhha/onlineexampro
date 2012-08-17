using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_AdvanceRefundProperties
/// </summary>
public abstract class Payroll_AdvanceRefundProperties
{
    int refund_ID, fkEmployee_ID;
    decimal refund_Amount;
    DateTime due_Date;

    public DateTime Due_Date
    {
        get { return due_Date; }
        set { due_Date = value; }
    }

    public decimal Refund_Amount
    {
        get { return refund_Amount; }
        set { refund_Amount = value; }
    }

    public int FkEmployee_ID
    {
        get { return fkEmployee_ID; }
        set { fkEmployee_ID = value; }
    }

    public int Refund_ID
    {
        get { return refund_ID; }
        set { refund_ID = value; }
    }
}