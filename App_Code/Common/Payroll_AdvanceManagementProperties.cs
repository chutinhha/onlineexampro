using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_AdvanceManagementProperties
/// </summary>
public abstract class Payroll_AdvanceManagementProperties
{
    int advance_ID, fkEmployee_ID;
    decimal salary_Advance, refund_Advance;
    DateTime advance_Date;

    public DateTime Advance_Date
    {
        get { return advance_Date; }
        set { advance_Date = value; }
    }

    public decimal Refund_Advance
    {
        get { return refund_Advance; }
        set { refund_Advance = value; }
    }

    public decimal Salary_Advance
    {
        get { return salary_Advance; }
        set { salary_Advance = value; }
    }

    public int FkEmployee_ID
    {
        get { return fkEmployee_ID; }
        set { fkEmployee_ID = value; }
    }

    public int Advance_ID
    {
        get { return advance_ID; }
        set { advance_ID = value; }
    }

}