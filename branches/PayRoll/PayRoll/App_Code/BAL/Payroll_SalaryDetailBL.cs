using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_SalaryDetailBL
/// </summary>
public class Payroll_SalaryDetailBL : Payroll_SalaryDetailProperties, IPayroll
{
    public Payroll_SalaryDetailBL(int salary_ID, decimal pay, float no_Days, decimal insentive, decimal extra_Benifits, decimal gross_Pay, decimal basic, decimal hRA, decimal total_Amount, decimal nETT, decimal salaryAdvanceBalance, decimal advanceDeduction, decimal pF, decimal eSI, decimal deduction_Total, DateTime salaryOfMonth, int fkEmployee_ID)
    {
        this.Salary_ID = salary_ID;
        this.Pay = pay;
        this.No_Days = no_Days;
        this.Insentive = insentive;
        this.Extra_Benifits = extra_Benifits;
        this.Gross_Pay = gross_Pay;
        this.Basic = basic;
        this.HRA = hRA;
        this.Total_Amount = total_Amount;
        this.NETT = nETT;
        this.SalaryAdvanceBalance = salaryAdvanceBalance;
        this.AdvanceDeduction = advanceDeduction;
        this.PF = pF;
        this.ESI = eSI;
        this.Deduction_Total = deduction_Total;
        this.SalaryOfMonth = salaryOfMonth;
        this.FkEmployee_ID = fkEmployee_ID;
    }
    public Payroll_SalaryDetailBL(decimal pay, float no_Days, decimal insentive, decimal extra_Benifits, decimal gross_Pay, decimal basic, decimal hRA, decimal total_Amount, decimal nETT, decimal salaryAdvanceBalance, decimal advanceDeduction, decimal pF, decimal eSI, decimal deduction_Total, DateTime salaryOfMonth, int fkEmployee_ID)
    {
        this.Pay = pay;
        this.No_Days = no_Days;
        this.Insentive = insentive;
        this.Extra_Benifits = extra_Benifits;
        this.Gross_Pay = gross_Pay;
        this.Basic = basic;
        this.HRA = hRA;
        this.Total_Amount = total_Amount;
        this.NETT = nETT;
        this.SalaryAdvanceBalance = salaryAdvanceBalance;
        this.AdvanceDeduction = advanceDeduction;
        this.PF = pF;
        this.ESI = eSI;
        this.Deduction_Total = deduction_Total;
        this.SalaryOfMonth = salaryOfMonth;
        this.FkEmployee_ID = fkEmployee_ID;
    }
    public Payroll_SalaryDetailBL(int salary_ID)
    {
        this.Salary_ID = salary_ID;

    }
    public Payroll_SalaryDetailBL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool Insert()
    {
        return Payroll_SalaryDetailDL.Insert(this);

    }

    public bool Update()
    {
        return Payroll_SalaryDetailDL.Update(this);
    }

    public bool Delete()
    {
        return Payroll_SalaryDetailDL.Delete(this);
    }
}