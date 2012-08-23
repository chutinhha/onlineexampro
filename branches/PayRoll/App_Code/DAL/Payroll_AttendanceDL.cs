using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payroll_AttendanceDL
/// </summary>
internal class Payroll_AttendanceDL
{


    internal static bool Insert(Payroll_AttendanceBL payroll_AttendanceBL)
    {
        PayrollHelper.Context.sp_Payroll_AttendanceNewInsertCommand(payroll_AttendanceBL.In_Time, payroll_AttendanceBL.Out_Time, payroll_AttendanceBL.Reg_Date, payroll_AttendanceBL.FkEmployee_ID);
        return true;
    }

    internal static bool Update(Payroll_AttendanceBL payroll_AttendanceBL)
    {
        PayrollHelper.Context.sp_Payroll_AttendanceNewUpdateCommand(payroll_AttendanceBL.In_Time, payroll_AttendanceBL.Out_Time, payroll_AttendanceBL.Reg_Date, payroll_AttendanceBL.FkEmployee_ID, payroll_AttendanceBL.Attendance_ID, payroll_AttendanceBL.Attendance_ID);
        return true;
    }

    internal static bool Delete(Payroll_AttendanceBL payroll_AttendanceBL)
    {
        PayrollHelper.Context.sp_Payroll_AttendanceNewDeleteCommand(payroll_AttendanceBL.Attendance_ID);
        return true;
    }
}