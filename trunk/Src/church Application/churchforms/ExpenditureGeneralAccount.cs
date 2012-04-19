using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Text.RegularExpressions;

namespace churchforms
{
    public partial class ExpenditureGeneralAccount : Form
    {
        public ExpenditureGeneralAccount()
        {
            InitializeComponent();
        }

        private void ExpenditureGeneralAccount_Load(object sender, EventArgs e)
        {
            checkBox2.Checked = true;
            comboBox2.Enabled = false;
            txtBranch.Enabled = false;
            txtChequeno.Enabled = false;
            ChequeDate.Enabled = false;
            txtChequeAmount.Enabled = false;
            using (ChurchApplicationDataContext obj = new ChurchApplicationDataContext())
            {
                comboBox2.DataSource = from a in obj.Church_BankDetails select a;
                comboBox2.DisplayMember = "Bank_name";
                comboBox2.ValueMember = "Bank_id";
                comboBox1.DataSource = from a in obj.Church_GeneralExpenditureType_Details select a;
                comboBox1.DisplayMember = "Expenditure_Name";
                comboBox1.ValueMember = "Expenditure_id";
            }
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBox1.Text == "Others")
            {
                button2.Visible = true;
                textBox2.Visible = true;
            }
            else
            {
                button2.Visible = false;
                textBox2.Visible = false;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            using (ChurchApplicationDataContext obj = new ChurchApplicationDataContext())
            {
                if (textBox2.Text != string.Empty)
                {
                    var single = from a in obj.Church_GeneralExpenditureType_Details where a.Expenditure_Name == "Others" select a;
                    obj.Church_GeneralExpenditureType_Details.DeleteOnSubmit(single.SingleOrDefault());
                    obj.SubmitChanges();
                    Church_GeneralExpenditureType_Detail church = new Church_GeneralExpenditureType_Detail();
                    church.Expenditure_Name = textBox2.Text;
                    obj.Church_GeneralExpenditureType_Details.InsertOnSubmit(church);
                    obj.SubmitChanges();
                    Church_GeneralExpenditureType_Detail church1 = new Church_GeneralExpenditureType_Detail();
                    church1.Expenditure_Name = "Others";
                    obj.Church_GeneralExpenditureType_Details.InsertOnSubmit(church1);
                    obj.SubmitChanges();
                    comboBox1.DataSource = from a in obj.Church_GeneralExpenditureType_Details select a;
                    comboBox1.DisplayMember = "Expenditure_Name";
                    comboBox1.ValueMember = "Expenditure_id";
                    textBox2.Text = string.Empty;
                    MessageBox.Show("Added Successfully!");
                }
                else
                {
                    MessageBox.Show("Enter Expenditure Name!");
                }
            }
        }

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox2.Checked)
            {
                txtCashamount.Text = txtChequeAmount.Text;
                txtChequeAmount.Text = string.Empty;
                checkBox1.Checked = false;
                txtCashamount.Enabled = true;
            }
            else
            {
                txtCashamount.Enabled = false;
            }
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked)
            {
                txtChequeAmount.Text = txtCashamount.Text;
                txtCashamount.Text = string.Empty;
                checkBox2.Checked = false;
                comboBox2.Enabled = true;
                txtBranch.Enabled = true;
                txtChequeno.Enabled = true;
                ChequeDate.Enabled = true;
                txtChequeAmount.Enabled = true;
            }
            else
            {
                comboBox2.Enabled = false;
                txtBranch.Enabled = false;
                txtChequeno.Enabled = false;
                ChequeDate.Enabled = false;
                txtChequeAmount.Enabled = false;
            }
        }
        private void Validationfieldnum(TextBox textBoxControl1)
        {
            Regex rx = new Regex("[^0-9|^.|^\t]");
            if (rx.IsMatch(textBoxControl1.Text))
            {
                textBoxControl1.Text = string.Empty;
                textBoxControl1.Focus();
                throw new Exception("Enter Number only!");
            }
        }
        private void button1_Click(object sender, EventArgs e)
        {

            try
            {
                using (ChurchApplicationDataContext chruchDB = new ChurchApplicationDataContext())
                {
                    Church_ExpenditureAmount_Detail obj = new Church_ExpenditureAmount_Detail();
                    if (comboBox1.Text != "Others")
                    {
                        if (checkBox2.Checked)
                        {
                            if (txtCashamount.Text != string.Empty)
                            {
                                Validationfieldnum(txtCashamount);
                                obj.Cash_Amount = Convert.ToDecimal(txtCashamount.Text);
                            }
                            else
                            {
                                throw new Exception("Enter Cash Amount!");
                            }
                        }
                        if (checkBox1.Checked)
                        {
                            if (txtChequeAmount.Text != string.Empty && txtBranch.Text != string.Empty && txtChequeno.Text != string.Empty)
                            {
                                Validationfieldnum(txtChequeAmount);
                                obj.Cheque_Amount = Convert.ToDecimal(txtChequeAmount.Text);
                                obj.Bank_Name = Convert.ToInt32(comboBox2.SelectedValue);
                                obj.Branch_Name = txtBranch.Text;
                                obj.Cheque_No = txtChequeno.Text;
                                obj.Cheque_Date = Convert.ToDateTime(ChequeDate.Text);
                            }
                            else
                            {
                                throw new Exception("Enter Cheque Enabled Fields!");
                            }
                        }
                        obj.Towards = textBox1.Text;
                        obj.Payment_Date = Convert.ToDateTime(dateTimePicker1.Text);
                        obj.ExpenditureType = Convert.ToInt32(comboBox1.SelectedValue);
                        obj.Formid = 5;
                        obj.Register_Date = DateTime.Now;
                        
                        chruchDB.Church_ExpenditureAmount_Details.InsertOnSubmit(obj);
                        chruchDB.SubmitChanges();
                        MessageBox.Show("Submit Successfully!");
                        emptyfield();
                    }
                    else
                    {
                        textBox2.Focus();
                        throw new Exception("Enter Expenditure Type!");
                    }
                }
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void emptyfield()
        {
            textBox1.Text = string.Empty;
            txtCashamount.Text = string.Empty;
            txtBranch.Text = string.Empty;
            txtChequeAmount.Text = string.Empty;
            txtChequeno.Text = string.Empty;
        }
    }
}
