using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Advance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        var employeeid = PayrollHelper.Context.Payroll_PersonalDetails.Where(a => a.Employee_Code == txtEmployeeCode.Text).Select(a => a.Employee_id).First();
        Payroll_AdvanceManagementBL obj = new Payroll_AdvanceManagementBL(Convert.ToDecimal(txtAdvance.Text), 0, Convert.ToDateTime(txtdate.Text), employeeid);
        if (obj.Insert())
        {

        }

    }
}