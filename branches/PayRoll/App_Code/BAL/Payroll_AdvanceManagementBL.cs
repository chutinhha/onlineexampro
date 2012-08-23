using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DAL;

/// <summary>
/// Summary description for Payroll_AdvanceManagement
/// </summary>
public class Payroll_AdvanceManagementBL : Payroll_AdvanceManagementProperties, IPayroll
{
    public Payroll_AdvanceManagementBL(int advance_ID, decimal salary_Advance, decimal refund_Advance, DateTime advance_Date, int fkEmployee_ID)
    {
        this.Advance_ID = advance_ID;
        this.Salary_Advance = salary_Advance;
        this.Refund_Advance = refund_Advance;
        this.Advance_Date = advance_Date;
        this.FkEmployee_ID = fkEmployee_ID;
    }
    public Payroll_AdvanceManagementBL(decimal salary_Advance, decimal refund_Advance, DateTime advance_Date, int fkEmployee_ID)
    {

        this.Salary_Advance = salary_Advance;
        this.Refund_Advance = refund_Advance;
        this.Advance_Date = advance_Date;
        this.FkEmployee_ID = fkEmployee_ID;
    }
    public Payroll_AdvanceManagementBL(int advance_ID)
    {
        this.Advance_ID = advance_ID;
    }
    public Payroll_AdvanceManagementBL()
    {
    }

    public bool Insert()
    {
        return Payroll_AdvanceManagementDL.Insert(this);
    }

    public bool Update()
    {
        return Payroll_AdvanceManagementDL.Update(this);
    }

    public bool Delete()
    {
        return Payroll_AdvanceManagementDL.Delete(this);
    }
}