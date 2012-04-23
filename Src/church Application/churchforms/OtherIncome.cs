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
    public partial class OtherIncome : Form
    {
        public OtherIncome()
        {
            InitializeComponent();
        }

        //private void button1_Click(object sender, EventArgs e)
        //{
            //try
            //{
            //    using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            //    {
            //        Church_OtherIncome obj = new Church_OtherIncome();
            //        if (textBox1.Text != "" && textBox2.Text != "" && textBox3.Text != "")
            //        {
            //            Validationfieldnumamount(textBox3);
            //            obj.Name = textBox1.Text;
            //            obj.Towards = textBox2.Text;
            //            obj.Amount = Convert.ToDecimal(textBox3.Text);
            //            obj.Date = Convert.ToDateTime(dateTimePicker1.Text);
            //            obj.Register_Date = DateTime.Now;
            //            churchDB.Church_OtherIncomes.InsertOnSubmit(obj);
            //            churchDB.SubmitChanges();
            //            MessageBox.Show("Submit Successfully!");
            //        }
            //        else
            //        {
            //           throw new Exception("All Fields are mandatory!");
            //        }
            //    }
            //}
            //catch (Exception ex)
            //{
            //    MessageBox.Show(ex.Message);
            //}
            
        //}
        private void Validationfieldnum(TextBox textBoxControl1)
        {
            Regex rx = new Regex("[^0-9|^\t]");
            if (rx.IsMatch(textBoxControl1.Text))
            {
                textBoxControl1.Text = string.Empty;
                textBoxControl1.Focus();
                throw new Exception("Enter Number only!");
            }
        }
        private void Validationfieldnumamount(TextBox textBoxControl1)
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
                using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
                {
                    Church_AmountDetail obj = new Church_AmountDetail();
                    Church_OtherIncome obj1 = new Church_OtherIncome();
                    if (textBox3.Text=="")
                    {
                        textBox3.Focus();
                        throw new Exception("Enter the Receipt no!");
                    }
                    Validationfieldnum(textBox3);
                    if (textBox1.Text == "")
                    {
                        textBox1.Focus();
                        throw new Exception("Enter the Name!");
                    }
                    if (textBox2.Text == "")
                    {
                        textBox2.Focus();
                        throw new Exception("Enter Towards!");
                    }
                    Validationfieldnumamount(txtCashamount);
                    Validationfieldnumamount(txtChequeAmount);
                    if (checkBox1.Checked||checkBox2.Checked)
                    {
                        if (checkBox2.Checked)
                            {
                                if (txtCashamount.Text != string.Empty)
                                {
                                    obj.Cash_Amount = Convert.ToDecimal(txtCashamount.Text);
                                }
                                else
                                {
                                    txtCashamount.Focus();
                                    throw new Exception("Enter Amount!");
                                }
                            }
                        else
                        {
                            obj.Cash_Amount = 0;
                        }
                            if (checkBox1.Checked)
                            {
                                if (txtChequeAmount.Text != string.Empty && txtChequeno.Text != string.Empty && txtBranch.Text != string.Empty)
                                {
                                    obj.Bank_Name = Convert.ToInt32(comboBox2.SelectedValue);
                                    obj.Branch_Name = txtBranch.Text;
                                    obj.Cheque_No = txtChequeno.Text;
                                    obj.Cheque_Date = Convert.ToDateTime(ChequeDate.Text);
                                    obj.Cheque_Amount = Convert.ToDecimal(txtChequeAmount.Text);
                                }
                                else
                                {
                                    throw new Exception("Fill all cheque enabled fields!");
                                }
                            }
                            else
                            {
                                obj.Cheque_Amount = 0;
                            }
                            obj.Recipt_No = textBox3.Text;
                            obj.Payment_Date = Convert.ToDateTime(dateTimePicker1.Text);
                            obj.Form_id = 8;
                            obj.Register_Date = DateTime.Now;
                            churchDB.Church_AmountDetails.InsertOnSubmit(obj);
                            churchDB.SubmitChanges();
                            long aa = (from a in churchDB.Church_AmountDetails select a.Amount_Id).Max();
                            obj1.Name = textBox1.Text;
                            obj1.Towards = textBox2.Text;
                            obj1.FK_Amountid = aa;
                            churchDB.Church_OtherIncomes.InsertOnSubmit(obj1);
                            churchDB.SubmitChanges();
                            MessageBox.Show("Submit Successfully!");
                    }
                    else
                    {
                        throw new Exception("Check any one Cash or Cheque!");
                    }


                    
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox2.Checked)
            {
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

        private void OtherIncome_Load(object sender, EventArgs e)
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
            }
        }
    }
}
