using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;

public partial class Personal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindMarital();
        }
    }

    private void BindMarital()
    {
        ddlMarital.DataSource = PayrollHelper.Context.Payroll_MaritalStatus.Select(a => a);
        ddlMarital.DataTextField = "Marital_Name";
        ddlMarital.DataValueField = "Marital_Id";
        ddlMarital.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        var source = PayrollHelper.Context.Payroll_PersonalDetails.Where(a => a.Email == txtEmail.Text).Select(a => a);
        if (source.Count() == 0)
        {
            File.Copy(Server.MapPath(Convert.ToString(Session["Photo_Url_Path_Temp"])), Server.MapPath(Session["Photo_Url_Path"].ToString()));
            ClearFolder("~/Temp/Photo_Url/");
            File.Copy(Server.MapPath(Session["Id_Proof_Path_Temp"].ToString()), Server.MapPath(Session["Id_ProofPath"].ToString()));
            ClearFolder("~/Temp/Id_Proof/");
            File.Copy(Server.MapPath(Session["Address_Proof_Path_Temp"].ToString()), Server.MapPath(Session["Address_Proof_Path"].ToString()));
            ClearFolder("~/Temp/Address_Proof/");
            File.Copy(Server.MapPath(Session["resumePath_Temp"].ToString()), Server.MapPath(Session["resumePath"].ToString()));
            ClearFolder("~/Temp/Resume/");
            Payroll_PersonalDetailBL obj = new Payroll_PersonalDetailBL(txtEmployeeCode.Text, txtFirstName.Text, txtLastName.Text, txtFatherName.Text, Convert.ToDateTime(txtDOB.Text), ddlGender.SelectedItem.Text, Convert.ToInt32(ddlMarital.SelectedValue), Convert.ToInt64(txtPhone.Text), Convert.ToInt64(txtMobile.Text), txtEmail.Text, txtMobile.Text, txtPerAddress.Text, txtPreAddress.Text, Convert.ToString(Session["Photo_Url_Path"]), Convert.ToString(Session["Id_ProofPath"]), Convert.ToString(Session["Address_Proof_Path"]), txtExperiance.Text);
            if (obj.Insert())
            {
                int employee_id = PayrollHelper.Context.Payroll_PersonalDetails.Select(a => a.Employee_id).Max();
                Payroll_Previous_CompanyDetailBL preObj = new Payroll_Previous_CompanyDetailBL(txtOfficeName.Text, txtOfficeAddress.Text, txtPerson.Text, Convert.ToInt64(txtoffMoblie.Text), Convert.ToInt64(txtoffPhone.Text), txtOffEmail.Text, txtoffWebsite.Text, Convert.ToDecimal(txtoffSalary.Text), Convert.ToInt32(employee_id));
                if (preObj.Insert())
                {
                    bool active = false;
                    if (chkActive.Checked)
                    {
                        active = true;
                    }
                    Payroll_OurCompanyDetailBL ourObj = new Payroll_OurCompanyDetailBL(Convert.ToDateTime(txtJoinDate.Text), Convert.ToDecimal(txtannualSalary.Text), Convert.ToDateTime(txtReliDate.Text), active, txtCertificate.Text, Convert.ToDecimal(txtCurrentSalary.Text), Convert.ToDecimal(txtInsentive.Text), txtDesignation.Text, Convert.ToString(Session["resumePath"]), txtComments.Text, employee_id);
                    if (ourObj.Insert())
                    {
                        lbResponse.Text = "Insert Successfully!";
                        //EmptyTextBoxes(this);
                    }
                }
            }
        }
        else
        {
            lbResponse.Text = "Already Exit!";
        }


    }
    public void EmptyTextBoxes(Control parent)
    {
        foreach (Control c in parent.Controls)
        {
            if (c is TextBox)
            {
                TextBox textBox = c as TextBox;
                //if (c != txtDiscount)
                //{
                ((TextBox)(c)).Text = "";
                //}
            }
            if (c.HasControls())
            {
                EmptyTextBoxes(c);
            }
        }
    }

    protected void fuPhoto_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
    {
        ClearFolder("~/Temp/Photo_Url/");
        string Photo_Extention;
        //string Photo_Url_Path;
        Photo_Extention = Path.GetExtension(fuPhoto.PostedFile.FileName);
        Session["Photo_Url_Path_Temp"] = "~/Temp/Photo_Url/" + txtEmployeeCode.Text + Photo_Extention;
        fuPhoto.SaveAs(Server.MapPath(Session["Photo_Url_Path_Temp"].ToString()));
        Session["Photo_Url_Path"] = "~/Upload/Photo_Url/" + txtEmployeeCode.Text + Photo_Extention;

    }
    private void ClearFolder(string FolderName)
    {
        DirectoryInfo dir = new DirectoryInfo(Server.MapPath(FolderName));

        foreach (FileInfo fi in dir.GetFiles())
        {
            fi.IsReadOnly = false;
            fi.Delete();
        }

        foreach (DirectoryInfo di in dir.GetDirectories())
        {
            ClearFolder(di.FullName);
            di.Delete();
        }
    }

    protected void fuIProof_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
    {
        ClearFolder("~/Temp/Id_Proof/");
        string Id_proof_Extention;
        // string Id_Proof_Path;
        Id_proof_Extention = Path.GetExtension(fuPhoto.PostedFile.FileName);
        Session["Id_Proof_Path_Temp"] = "~/Temp/Id_Proof/" + txtEmployeeCode.Text + Id_proof_Extention;
        fuIProof.SaveAs(Server.MapPath(Session["Id_Proof_Path_Temp"].ToString()));
        Session["Id_ProofPath"] = "~/Upload/Id_Proof/" + txtEmployeeCode.Text + Id_proof_Extention;
    }
    protected void fuAProof_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
    {
        ClearFolder("~/Temp/Address_Proof/");
        string Address_Proof_Extention;
        //string Address_Proof_Path;
        Address_Proof_Extention = Path.GetExtension(fuPhoto.PostedFile.FileName);
        Session["Address_Proof_Path_Temp"] = "~/Temp/Address_Proof/" + txtEmployeeCode.Text + Address_Proof_Extention;
        fuAProof.SaveAs(Server.MapPath(Session["Address_Proof_Path_Temp"].ToString()));
        Session["Address_Proof_Path"] = "~/Upload/Address_Proof/" + txtEmployeeCode.Text + Address_Proof_Extention;
    }
    protected void fuResume_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
    {
        ClearFolder("~/Temp/Resume/");
        string resume_Extention;
        //string resumePath;
        resume_Extention = Path.GetExtension(fuPhoto.PostedFile.FileName);
        Session["resumePath_Temp"] = "~/Temp/Resume/" + txtEmployeeCode.Text + resume_Extention;
        fuResume.SaveAs(Server.MapPath(Session["resumePath_Temp"].ToString()));
        Session["resumePath"] = "~/Upload/Resume/" + txtEmployeeCode.Text + resume_Extention;
    }
}