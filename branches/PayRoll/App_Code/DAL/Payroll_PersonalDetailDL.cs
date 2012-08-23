using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_PersonalDetailDL
/// </summary>
internal class Payroll_PersonalDetailDL
{

    internal static bool Insert(Payroll_PersonalDetailBL payroll_PersonalDetailBL)
    {
        PayrollHelper.Context.sp_Payroll_PersonalDetailNewInsertCommand(payroll_PersonalDetailBL.Employee_Code, payroll_PersonalDetailBL.First_Name, payroll_PersonalDetailBL.Last_Name, payroll_PersonalDetailBL.Last_Name, payroll_PersonalDetailBL.DOB, payroll_PersonalDetailBL.Sex, payroll_PersonalDetailBL.Marital_Status, payroll_PersonalDetailBL.Phone, payroll_PersonalDetailBL.Mobile, payroll_PersonalDetailBL.Email, payroll_PersonalDetailBL.Password, payroll_PersonalDetailBL.Permanent_Address, payroll_PersonalDetailBL.Present_Address, payroll_PersonalDetailBL.Photo_Url, payroll_PersonalDetailBL.ID_proof_Url, payroll_PersonalDetailBL.Address_Proof_url, payroll_PersonalDetailBL.Total_Experience);
        return true;
    }

    internal static bool Update(Payroll_PersonalDetailBL payroll_PersonalDetailBL)
    {
        PayrollHelper.Context.sp_Payroll_PersonalDetailNewUpdateCommand(payroll_PersonalDetailBL.Employee_Code, payroll_PersonalDetailBL.First_Name, payroll_PersonalDetailBL.Last_Name, payroll_PersonalDetailBL.Last_Name, payroll_PersonalDetailBL.DOB, payroll_PersonalDetailBL.Sex, payroll_PersonalDetailBL.Marital_Status, payroll_PersonalDetailBL.Phone, payroll_PersonalDetailBL.Mobile, payroll_PersonalDetailBL.Email, payroll_PersonalDetailBL.Password, payroll_PersonalDetailBL.Permanent_Address, payroll_PersonalDetailBL.Present_Address, payroll_PersonalDetailBL.Photo_Url, payroll_PersonalDetailBL.ID_proof_Url, payroll_PersonalDetailBL.Address_Proof_url, payroll_PersonalDetailBL.Total_Experience,payroll_PersonalDetailBL.Employee_id,payroll_PersonalDetailBL.Employee_id);
        return true;
    }

    internal static bool Delete(Payroll_PersonalDetailBL payroll_PersonalDetailBL)
    {
        PayrollHelper.Context.sp_Payroll_PersonalDetailNewDeleteCommand(payroll_PersonalDetailBL.Employee_id);
        return true;
    }
}