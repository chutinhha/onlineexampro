using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_AttendanceProperties
/// </summary>
public abstract class Payroll_AttendanceProperties
{
    int attendance_ID, fkEmployee_ID;
    DateTime in_Time, out_Time, reg_Date;


    public int FkEmployee_ID
    {
        get { return fkEmployee_ID; }
        set { fkEmployee_ID = value; }
    }

    public int Attendance_ID
    {
        get { return attendance_ID; }
        set { attendance_ID = value; }
    }

    public DateTime Reg_Date
    {
        get { return reg_Date; }
        set { reg_Date = value; }
    }

    public DateTime Out_Time
    {
        get { return out_Time; }
        set { out_Time = value; }
    }

    public DateTime In_Time
    {
        get { return in_Time; }
        set { in_Time = value; }
    }
}