using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_PersonalDetailProperties
/// </summary>
public abstract class Payroll_PersonalDetailProperties
{
    int employee_id, marital_Status; 
    long phone, mobile;
    DateTime dOB;
    string employee_Code, first_Name, last_Name, father_Name, sex, email, password, permanent_Address, present_Address, photo_Url, iD_proof_Url, address_Proof_url, total_Experience;

    public string Total_Experience
    {
        get { return total_Experience; }
        set { total_Experience = value; }
    }

    public string Address_Proof_url
    {
        get { return address_Proof_url; }
        set { address_Proof_url = value; }
    }

    public string ID_proof_Url
    {
        get { return iD_proof_Url; }
        set { iD_proof_Url = value; }
    }

    public string Photo_Url
    {
        get { return photo_Url; }
        set { photo_Url = value; }
    }

    public string Present_Address
    {
        get { return present_Address; }
        set { present_Address = value; }
    }

    public string Permanent_Address
    {
        get { return permanent_Address; }
        set { permanent_Address = value; }
    }

    public string Password
    {
        get { return password; }
        set { password = value; }
    }

    public string Email
    {
        get { return email; }
        set { email = value; }
    }

    public string Sex
    {
        get { return sex; }
        set { sex = value; }
    }

    public string Father_Name
    {
        get { return father_Name; }
        set { father_Name = value; }
    }

    public string Last_Name
    {
        get { return last_Name; }
        set { last_Name = value; }
    }

    public string First_Name
    {
        get { return first_Name; }
        set { first_Name = value; }
    }

    public string Employee_Code
    {
        get { return employee_Code; }
        set { employee_Code = value; }
    }

    public long Mobile
    {
        get { return mobile; }
        set { mobile = value; }
    }

    public long Phone
    {
        get { return phone; }
        set { phone = value; }
    }


    public DateTime DOB
    {
        get { return dOB; }
        set { dOB = value; }
    }
    public int Marital_Status
    {
        get { return marital_Status; }
        set { marital_Status = value; }
    }

    public int Employee_id
    {
        get { return employee_id; }
        set { employee_id = value; }
    }
}