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
    public partial class HarvestDue : Form
    {
        public HarvestDue()
        {
            InitializeComponent();
        }

        private void textBox1_Leave(object sender, EventArgs e)
        {
            try
            {
                Validationfieldnum(textBox1);
                using (ChurchApplicationDataContext obj = new ChurchApplicationDataContext())
                {
                    if (textBox1.Text != string.Empty)
                    {
                        var name = (from a in obj.Church_MemberDetails where a.CardNo == Convert.ToInt64(textBox1.Text) select a).SingleOrDefault();
                        if (name != null)
                        {
                            Bindingamount();
                            label8.Text = name.MemberName;
                            label7.Text = Convert.ToString(name.Mobile);
                            string[] Address = name.Address.Split(',');
                            label11.Text = Address[0] + ",";
                            label12.Text = Address[1] + ".";
                        }
                        else
                        {
                            label2.Text = "It's not valid Card No!";
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
        }

        private void Bindingamount()
        {
            using (ChurchApplicationDataContext obj = new ChurchApplicationDataContext())
            {
                var Bal = (from a in obj.Church_AuctionStatus where a.Card_No == Convert.ToInt64(textBox1.Text) select a).First();
                label14.Text = Convert.ToString(Bal.Harvest_Total - Bal.Harvest_Payed);

            }
        }
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
                    var bal = from a in churchDB.Church_AuctionStatus where a.Card_No == Convert.ToInt64(textBox1.Text) select a;
                    if (bal.Count() == 1)
                    {
                        Validationfieldnum(textBox2);
                        Validationfieldnumamount(txtCashamount);
                        Validationfieldnumamount(txtChequeAmount);
                        Church_AmountDetail obj = new Church_AmountDetail();
                        if (textBox1.Text != string.Empty)
                        {
                            obj.Card_No = Convert.ToInt64(textBox1.Text);
                        }
                        else
                        {
                            textBox1.Focus();
                            throw new Exception("Enter Card No!");
                        }
                        if (textBox2.Text != string.Empty)
                        {
                            obj.Recipt_No = textBox2.Text;
                        }
                        else
                        {
                            textBox2.Focus();
                            throw new Exception("Enter Recipt_No!");
                        }
                        if (checkBox2.Checked || checkBox1.Checked)
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
                            obj.Payment_Date = Convert.ToDateTime(dateTimePicker1.Text);
                            obj.Register_Date = DateTime.Now;
                            obj.Form_id = 3;
                            churchDB.Church_AmountDetails.InsertOnSubmit(obj);
                            churchDB.SubmitChanges();
                            MessageBox.Show("Submit Successfully");
                            var cal = (from a in churchDB.Church_AuctionStatus where a.Card_No == Convert.ToInt64(textBox1.Text) select a).First();
                            if (txtCashamount.Text==string.Empty)
                            {
                                txtCashamount.Text = Convert.ToString(0);
                            }
                            if (txtChequeAmount.Text==string.Empty)
                            {
                                txtChequeAmount.Text = Convert.ToString(0);
                            }
                            cal.Harvest_Payed = cal.Harvest_Payed + Convert.ToDecimal(txtCashamount.Text) + Convert.ToDecimal(txtChequeAmount.Text);
                            if (cal.Harvest_Total==cal.Harvest_Payed)
                            {
                                cal.Status = 1;
                            }
                            churchDB.SubmitChanges();
                            Bindingamount();
                            emptyfield();
                        }
                        else
                        {
                            throw new Exception("Check any one Cash or Cheque!");
                        }
                    }
                    else
                    {
                        throw new Exception("Person Cann't get any auction!");
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
            textBox2.Text = string.Empty;
            txtCashamount.Text = string.Empty;
            txtBranch.Text = string.Empty;
            txtChequeno.Text = string.Empty;
            txtChequeAmount.Text = string.Empty;
        }

        private void HarvestDue_Load(object sender, EventArgs e)
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
    }
}
