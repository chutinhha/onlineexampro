using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        var employeeid = PayrollHelper.Context.Payroll_PersonalDetails.Where(a => a.Employee_Code == txtEmployCode.Text).Select(a => a.Employee_id).First();
        Payroll_AdvanceRefundBL obj = new Payroll_AdvanceRefundBL(Convert.ToDecimal(txtAdvanceDeduction.Text), DateTime.Now, employeeid);
        if (obj.Insert())
        {
            
        }
    }
}