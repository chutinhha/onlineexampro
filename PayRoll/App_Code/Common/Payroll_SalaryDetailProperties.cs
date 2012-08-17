using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_SalaryDetailProperties
/// </summary>
public abstract class Payroll_SalaryDetailProperties
{
    int salary_ID, fkEmployee_ID;
    float no_Days;
    DateTime salaryOfMonth;
    decimal pay, insentive, extra_Benifits, gross_Pay, basic, hRA, total_Amount, nETT, salaryAdvanceBalance, advanceDeduction, pF, eSI, deduction_Total;

    public decimal Deduction_Total
    {
        get { return deduction_Total; }
        set { deduction_Total = value; }
    }

    public decimal ESI
    {
        get { return eSI; }
        set { eSI = value; }
    }

    public decimal PF
    {
        get { return pF; }
        set { pF = value; }
    }

    public decimal AdvanceDeduction
    {
        get { return advanceDeduction; }
        set { advanceDeduction = value; }
    }

    public decimal SalaryAdvanceBalance
    {
        get { return salaryAdvanceBalance; }
        set { salaryAdvanceBalance = value; }
    }

    public decimal NETT
    {
        get { return nETT; }
        set { nETT = value; }
    }

    public decimal Total_Amount
    {
        get { return total_Amount; }
        set { total_Amount = value; }
    }

    public decimal HRA
    {
        get { return hRA; }
        set { hRA = value; }
    }

    public decimal Basic
    {
        get { return basic; }
        set { basic = value; }
    }

    public decimal Gross_Pay
    {
        get { return gross_Pay; }
        set { gross_Pay = value; }
    }

    public decimal Extra_Benifits
    {
        get { return extra_Benifits; }
        set { extra_Benifits = value; }
    }

    public decimal Insentive
    {
        get { return insentive; }
        set { insentive = value; }
    }

    public decimal Pay
    {
        get { return pay; }
        set { pay = value; }
    }
    public DateTime SalaryOfMonth
    {
        get { return salaryOfMonth; }
        set { salaryOfMonth = value; }
    }
   
    public float No_Days
    {
        get { return no_Days; }
        set { no_Days = value; }
    }
   
    public int FkEmployee_ID
    {
        get { return fkEmployee_ID; }
        set { fkEmployee_ID = value; }
    }

    public int Salary_ID
    {
        get { return salary_ID; }
        set { salary_ID = value; }
    }
    
}