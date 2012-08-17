using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_PersonalDetailBL
/// </summary>
public class Payroll_PersonalDetailBL : Payroll_PersonalDetailProperties, IPayroll
{
    public Payroll_PersonalDetailBL(int employee_id, string employee_Code, string first_Name, string last_Name, string father_Name, DateTime dOB, string sex, int marital_Status, long phone, long mobile, string email, string password, string permanent_Address, string present_Address, string photo_Url, string iD_proof_Url, string address_Proof_url, string total_Experience)
    {
        this.Employee_id = employee_id;
        this.Employee_Code = employee_Code;
        this.First_Name = first_Name;
        this.Last_Name = last_Name;
        this.Father_Name = father_Name;
        this.DOB = dOB;
        this.Sex = sex;
        this.Marital_Status = marital_Status;
        this.Phone = phone;
        this.Mobile = mobile;
        this.Email = email;
        this.Password = password;
        this.Present_Address = present_Address;
        this.Permanent_Address = permanent_Address;
        this.Photo_Url = photo_Url;
        this.ID_proof_Url = ID_proof_Url;
        this.Address_Proof_url = address_Proof_url;
        this.Total_Experience = total_Experience;

    }
    public Payroll_PersonalDetailBL(string employee_Code, string first_Name, string last_Name, string father_Name, DateTime dOB, string sex, int marital_Status, long phone, long mobile, string email, string password, string permanent_Address, string present_Address, string photo_Url, string iD_proof_Url, string address_Proof_url, string total_Experience)
    {
        this.Employee_Code = employee_Code;
        this.First_Name = first_Name;
        this.Last_Name = last_Name;
        this.Father_Name = father_Name;
        this.DOB = dOB;
        this.Sex = sex;
        this.Marital_Status = marital_Status;
        this.Phone = phone;
        this.Mobile = mobile;
        this.Email = email;
        this.Password = password;
        this.Present_Address = present_Address;
        this.Permanent_Address = permanent_Address;
        this.Photo_Url = photo_Url;
        this.ID_proof_Url = ID_proof_Url;
        this.Address_Proof_url = address_Proof_url;
        this.Total_Experience = total_Experience;
    }
    public Payroll_PersonalDetailBL(int employee_id)
    {
        this.Employee_id = employee_id;
    }
    public Payroll_PersonalDetailBL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool Insert()
    {
        return Payroll_PersonalDetailDL.Insert(this);
    }

    public bool Update()
    {
        return Payroll_PersonalDetailDL.Update(this);
    }

    public bool Delete()
    {
        return Payroll_PersonalDetailDL.Delete(this);
    }
}