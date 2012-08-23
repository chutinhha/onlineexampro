using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_AttendanceBL
/// </summary>
public class Payroll_AttendanceBL : Payroll_AttendanceProperties, IPayroll
{
    public Payroll_AttendanceBL(int attendance_ID, DateTime in_Time, DateTime out_Time, DateTime reg_Date, int fkEmployee_ID)
    {
        this.Attendance_ID = attendance_ID;
        this.In_Time = in_Time;
        this.Out_Time = out_Time;
        this.Reg_Date = reg_Date;
        this.FkEmployee_ID = fkEmployee_ID;
    }
    public Payroll_AttendanceBL(DateTime in_Time, DateTime out_Time, DateTime reg_Date, int fkEmployee_ID)
    {
        this.In_Time = in_Time;
        this.Out_Time = out_Time;
        this.Reg_Date = reg_Date;
        this.FkEmployee_ID = fkEmployee_ID;
    }
    public Payroll_AttendanceBL(int attendance_ID)
    {
        this.Attendance_ID = attendance_ID;
    }
    public Payroll_AttendanceBL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool Insert()
    {
        return Payroll_AttendanceDL.Insert(this);
    }

    public bool Update()
    {
        return Payroll_AttendanceDL.Update(this);
    }

    public bool Delete()
    {
        return Payroll_AttendanceDL.Delete(this);
    }
}