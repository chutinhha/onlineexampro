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
    public partial class Harvest : Form
    {
        public Harvest()
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
                            label2.Text = name.MemberName;
                            label3.Text = Convert.ToString(name.Mobile);
                            string[] Address = name.Address.Split(',');
                            label9.Text = Address[0] + ",";
                            label10.Text = Address[1] + ".";
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

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                Validationfieldnumamount(textBox3);
                Validationfieldnumamount(txtCashamount);
                Validationfieldnumamount(txtChequeAmount);
                using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
                {
                    Church_AmountDetail obj = new Church_AmountDetail();
                    Church_Auction_Detail obj1 = new Church_Auction_Detail();
                    if (checkBox2.Checked || checkBox1.Checked)
                    {
                        if (textBox1.Text != "")
                        {
                            obj.Card_No = Convert.ToInt64(textBox1.Text);
                        }
                        else
                        {
                            textBox1.Focus();
                            throw new Exception("Enter Card No!");
                        }
                        if (textBox2.Text != "")
                        {
                            obj1.Thing_Name = textBox2.Text;
                        }
                        else
                        {
                            textBox2.Focus();
                            throw new Exception("Enter Things Name!");
                        }
                        if (textBox3.Text == "")
                        {
                            textBox3.Focus();
                            throw new Exception("Enter the Original Prize!");
                        }
                        if (textBox4.Text == "")
                        {
                            textBox4.Focus();
                            throw new Exception("Enter the receipt No!");
                        }
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
                        obj1.Auction_Type = 1;
                        obj.Payment_Date = Convert.ToDateTime(dateTimePicker1.Text);
                        if (textBox3.Text != "")
                        {
                            obj1.Original_Price = Convert.ToDecimal(textBox3.Text);
                        }
                        else
                        {
                            textBox3.Focus();
                            throw new Exception("Enter Orginal Price!");
                        }
                        obj.Form_id = 9;
                        obj.Register_Date = DateTime.Now;
                        obj.Recipt_No = textBox4.Text;
                        churchDB.Church_AmountDetails.InsertOnSubmit(obj);
                        churchDB.SubmitChanges();
                        long aa = (from a in churchDB.Church_AmountDetails select a.Amount_Id).Max();
                        obj1.FK_Amountid = aa;
                        churchDB.Church_Auction_Details.InsertOnSubmit(obj1);
                        churchDB.SubmitChanges();
                        if (txtChequeAmount.Text == "")
                        {
                            txtChequeAmount.Text = "0";
                        }
                        if (txtCashamount.Text == "")
                        {
                            txtCashamount.Text = "0";
                        }
                        var num = from a in churchDB.Church_AuctionStatus where a.Card_No == Convert.ToInt64(textBox1.Text) select a;
                        if (num.Count() == 0)
                        {
                            Church_AuctionStatus status = new Church_AuctionStatus();
                            status.Card_No = Convert.ToInt64(textBox1.Text);
                            status.Harvest_Total = Convert.ToDecimal(textBox3.Text);
                            status.Harvest_Payed = Convert.ToDecimal(txtCashamount.Text) + Convert.ToDecimal(txtChequeAmount.Text);
                            status.Status = 0;
                            if (status.Harvest_Total == status.Harvest_Payed)
                            {
                                status.Status = 1;
                            }
                            churchDB.Church_AuctionStatus.InsertOnSubmit(status);
                            churchDB.SubmitChanges();
                        }
                        else
                        {
                            var num1 = (from a in churchDB.Church_AuctionStatus where a.Card_No == Convert.ToInt64(textBox1.Text) select a).First();
                            if (num1.Harvest_Total == null && num1.Harvest_Payed == null)
                            {
                                num1.Harvest_Total = 0;
                                num1.Harvest_Payed = 0;
                            }
                            num1.Harvest_Total = num1.Harvest_Total + Convert.ToDecimal(textBox3.Text);
                            num1.Harvest_Payed = num1.Harvest_Payed + Convert.ToDecimal(txtCashamount.Text) + Convert.ToDecimal(txtChequeAmount.Text);
                            num1.Status = 0;
                            if (num1.Harvest_Total == num1.Harvest_Payed)
                            {
                                num1.Status = 1;
                            }
                            churchDB.SubmitChanges();
                        }
                        MessageBox.Show("Submit Successfully!");
                        Emptycontrol();
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

        private void Emptycontrol()
        {
            label2.Text = string.Empty;
            label3.Text = string.Empty;
            label9.Text = string.Empty;
            label10.Text = string.Empty;
            textBox1.Text = string.Empty;
            textBox2.Text = string.Empty;
            textBox3.Text = string.Empty;
        }

        private void Harvest_Load(object sender, EventArgs e)
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
