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
    public partial class GeneralOffering : Form
    {
        public GeneralOffering()
        {
            InitializeComponent();
        }

        public void AccountDetail_Load(object sender, EventArgs e)
        {
            // int a=Convert.ToInt32( txtCashamount.Text);
            textBox1.Text = "0";
            textBox2.Text = "0";
            textBox3.Text = "0";
            textBox4.Text = "0";
            textBox5.Text = "0";
            textBox6.Text = "0";
            textBox7.Text = "0";
            textBox8.Text = "0";
            textBox9.Text = "0";
            checkBox2.Checked = true;
            txtCashamount.Enabled = false;
            txtBranch.Enabled = false;
            txtChequeAmount.Enabled = false;
            txtChequeno.Enabled = false;
            ChequeDate.Enabled = false;
            comboBox2.Enabled = false;
           // comboBox1.Text = "Gentral";
            using (ChurchApplicationDataContext obj = new ChurchApplicationDataContext())
            {
                comboBox3.DataSource = from a in obj.Church_OfferingDetails select a;
                comboBox3.DisplayMember = "Offername";
                comboBox3.ValueMember = "Offering_id";
                comboBox2.DataSource = from a in obj.Church_BankDetails select a;
                comboBox2.DisplayMember = "Bank_name";
                comboBox2.ValueMember = "Bank_id";
            }

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked)
            {
                comboBox2.Enabled = true;
                txtBranch.Enabled = true;
                txtChequeAmount.Enabled = true;
                txtChequeno.Enabled = true;
                ChequeDate.Enabled = true;
            }
            else
            {
                txtBranch.Enabled = false;
                txtChequeAmount.Enabled = false;
                txtChequeno.Enabled = false;
                ChequeDate.Enabled = false;
                comboBox2.Enabled = false;
            }

        }

        //private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    if (comboBox1.SelectedIndex == 1)
        //    {

        //        label18.Visible = true;
        //        txtCardno.Visible = true;
        //        //label19.Visible = true;
        //    }
        //    else
        //    {
        //       // label19.Visible = false;
        //        label18.Visible = false;
        //        txtCardno.Visible = false;
        //    }
        //}

        public void button1_Click(object sender, EventArgs e)
        {
            try
            {
                //Validationfieldnum(txtCardno);
                Validationfieldnum(txtCashamount);
                Validationfieldnum(txtChequeAmount);
                using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
                {

                    Church_GeneralOfferingDetail obj = new Church_GeneralOfferingDetail();
                    Church_AmountDetail obj1 = new Church_AmountDetail();
                    if (comboBox3.Text=="Others")
                    {
                        textBox10.Focus();
                        throw new Exception("Enter Offer Name!");
                    }
                    if (checkBox2.Checked || checkBox1.Checked)
                    {
                        //if (comboBox1.SelectedIndex == 1)
                        //{
                        //    if (txtCardno.Text != string.Empty)
                        //    {
                        //        if ((from a in churchDB.Church_MemberDetails where a.CardNo == Convert.ToInt64(txtCardno.Text) select a.MemberName).SingleOrDefault() != null)
                        //        {
                        //            obj.Cardno = Convert.ToInt64(txtCardno.Text);
                        //            obj.MainCatagory = comboBox1.SelectedIndex;

                        //        }
                        //        else
                        //        {
                        //            obj.MainCatagory = 0;
                        //            if (System.Windows.Forms.MessageBox.Show("it's not a valid Card No;Do you want to Save in general?", "Conformation", System.Windows.Forms.MessageBoxButtons.OKCancel, System.Windows.Forms.MessageBoxIcon.Asterisk, System.Windows.Forms.MessageBoxDefaultButton.Button1) == System.Windows.Forms.DialogResult.OK)
                        //            {
                        //            }
                        //            else
                        //            {
                        //                throw new Exception("Record Discarded!");
                        //            }
                        //        }
                        //    }
                        //    else
                        //    {
                        //        txtCardno.Focus();
                        //        throw new Exception("Enter the Card No!");
                        //    }
                        //}
                        //else
                        //{
                        //    obj.MainCatagory = comboBox1.SelectedIndex;
                        //}
                        if (checkBox2.Checked)
                        {
                            if (txtCashamount.Text != string.Empty)
                            {
                                obj1.Cash_Amount = Convert.ToDecimal(txtCashamount.Text);
                                if (!checkBox3.Checked)
                                {
                                    obj._1000x = Convert.ToInt32(textBox1.Text);
                                    obj._500x = Convert.ToInt32(textBox2.Text);
                                    obj._100x = Convert.ToInt32(textBox3.Text);
                                    obj._50x = Convert.ToInt32(textBox4.Text);
                                    obj._20x = Convert.ToInt32(textBox5.Text);
                                    obj._10x = Convert.ToInt32(textBox6.Text);
                                    obj._5x = Convert.ToInt32(textBox7.Text);
                                    obj._2x = Convert.ToInt32(textBox8.Text);
                                    obj._1x = Convert.ToInt32(textBox9.Text);
                                }
                            }
                            else
                            {
                                txtCashamount.Focus();
                                throw new Exception("Enter Amount!");
                            }
                        }
                        else
                        {
                            txtCashamount.Text = "0";
                            obj1.Cash_Amount = 0;
                        }
                        if (checkBox1.Checked)
                        {
                            if (txtChequeAmount.Text != string.Empty && txtChequeno.Text != string.Empty && txtBranch.Text != string.Empty)
                            {
                                obj1.Bank_Name = Convert.ToInt32(comboBox2.SelectedValue);
                                obj1.Branch_Name = txtBranch.Text;
                                obj1.Cheque_No = txtChequeno.Text;
                                obj1.Cheque_Date = Convert.ToDateTime(ChequeDate.Text);
                                obj1.Cheque_Amount = Convert.ToDecimal(txtChequeAmount.Text);
                            }
                            else
                            {
                                throw new Exception("Fill all cheque enabled fields!");
                            }
                        }
                        else
                        {
                            txtChequeAmount.Text = "0";
                            obj1.Cheque_Amount = 0;
                        }
                        obj.Offering_type = Convert.ToInt32(comboBox3.SelectedValue);
                        obj1.Register_Date = DateTime.Now;
                        obj1.Payment_Date = Convert.ToDateTime(dateTimePicker1.Text);
                        obj1.Form_id = 7;
                        churchDB.Church_AmountDetails.InsertOnSubmit(obj1);
                        churchDB.SubmitChanges();
                        long aa = (from a in churchDB.Church_AmountDetails select a.Amount_Id).Max();
                        obj.FK_Amountid = aa;
                        churchDB.Church_GeneralOfferingDetails.InsertOnSubmit(obj);
                        churchDB.SubmitChanges();
                        var amount = (from a in churchDB.Church_OpeningBalanceDetails where a.Account_type == 1 select a).FirstOrDefault();
                        amount.Opening_Bal_Cash = amount.Opening_Bal_Cash + Convert.ToDecimal(txtCashamount.Text) + Convert.ToDecimal(txtChequeAmount.Text);
                        churchDB.SubmitChanges();
                        MessageBox.Show("Save Successfully!");
                    }
                    else
                    {
                        throw new Exception("Enable check box Cash or Cheque!!");
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

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox2.Checked)
            {
                if (!checkBox3.Checked)
                {
                    textBox1.Enabled = true;
                    textBox2.Enabled = true;
                    textBox3.Enabled = true;
                    textBox4.Enabled = true;
                    textBox5.Enabled = true;
                    textBox6.Enabled = true;
                    textBox7.Enabled = true;
                    textBox8.Enabled = true;
                    textBox9.Enabled = true;
                    txtCashamount.Enabled = false;
                }
                else
                {
                    txtCashamount.Enabled = true;
                }
            }
            else
            {

                textBox1.Enabled = false;
                textBox2.Enabled = false;
                textBox3.Enabled = false;
                textBox4.Enabled = false;
                textBox5.Enabled = false;
                textBox6.Enabled = false;
                textBox7.Enabled = false;
                textBox8.Enabled = false;
                textBox9.Enabled = false;
                txtCashamount.Enabled = false;
            }
        }



        private void textBox1_Leave(object sender, EventArgs e)
        {
            try
            {
                Validationfieldnum(textBox1);

                if(textBox1.Text!="")
                {
                    Calculation();
                }
                else
                {
                    textBox1.Text = "0";
                    Calculation();

                }

            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }


        }

        private void Calculation()
        {
            txtCashamount.Text = Convert.ToString((1000 * Convert.ToInt32(textBox1.Text)) + (500 * Convert.ToInt32(textBox2.Text)) + (100 * Convert.ToInt32(textBox3.Text)) + (50 * Convert.ToInt32(textBox4.Text)) + (20 * Convert.ToInt32(textBox5.Text)) + (10 * Convert.ToInt32(textBox6.Text)) + (5 * Convert.ToInt32(textBox7.Text)) + (2 * Convert.ToInt32(textBox8.Text)) + (1 * Convert.ToInt32(textBox9.Text)));

        }

        private void textBox2_Leave(object sender, EventArgs e)
        {
            try
            {
                Validationfieldnum(textBox2);

                if(textBox2.Text!="")
                {
                    Calculation();
                }
                else
                {
                    textBox2.Text = "0";
                    Calculation();

                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }

        }

        private void textBox3_Leave(object sender, EventArgs e)
        {
            try
            {

                Validationfieldnum(textBox3);

                if(textBox3.Text!="")
                {
                    Calculation();
                }
                else
                {
                    textBox3.Text = "0";
                    Calculation();

                }

            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }

        }

        private void textBox4_Leave(object sender, EventArgs e)
        {
            try
            {

                Validationfieldnum(textBox4);

                if(textBox4.Text!="")
                {
                    Calculation();
                }
                else
                {
                    textBox4.Text = "0";
                    Calculation();

                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }

        }

        private void textBox5_Leave(object sender, EventArgs e)
        {
            try
            {

                Validationfieldnum(textBox5);

                if(textBox5.Text!="")
                {
                    Calculation();
                }
                else
                {
                    textBox5.Text = "0";
                    Calculation();

                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }

        }

        private void textBox6_Leave(object sender, EventArgs e)
        {
            try
            {

                Validationfieldnum(textBox6);

                if(textBox6.Text!="")
                {
                    Calculation();
                }
                else
                {
                    textBox6.Text = "0";
                    Calculation();

                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }

        }

        private void textBox7_Leave(object sender, EventArgs e)
        {
            try
            {

                Validationfieldnum(textBox7);


                if(textBox7.Text!="")
                {
                    Calculation();
                }
                else
                {
                    textBox7.Text = "0";
                    Calculation();

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);


            }

        }

        private void textBox8_Leave(object sender, EventArgs e)
        {
            try
            {

                Validationfieldnum(textBox8);
                if(textBox8.Text!="")
                {
                    Calculation();
                }
                else
                {
                    textBox8.Text = "0";
                    Calculation();

                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);

            }

        }

        private void textBox9_Leave(object sender, EventArgs e)
        {
            try
            {

                Validationfieldnum(textBox9);
                if(textBox9.Text!="")
                {
                    Calculation();
                }
                else
                {
                    textBox9.Text = "0";
                    Calculation();

                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }

        }

        private void checkBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox3.Checked)
            {
                textBox1.Enabled = false;
                textBox2.Enabled = false;
                textBox3.Enabled = false;
                textBox4.Enabled = false;
                textBox5.Enabled = false;
                textBox6.Enabled = false;
                textBox7.Enabled = false;
                textBox8.Enabled = false;
                textBox9.Enabled = false;
                txtCashamount.Enabled = true;
            }
            else
            {
                textBox1.Enabled = true;
                textBox2.Enabled = true;
                textBox3.Enabled = true;
                textBox4.Enabled = true;
                textBox5.Enabled = true;
                textBox6.Enabled = true;
                textBox7.Enabled = true;
                textBox8.Enabled = true;
                textBox9.Enabled = true;
                txtCashamount.Enabled = false;

            }
        }

        //public void txtCardno_Leave(object sender, EventArgs e)
        //{
        //    using (ChurchApplicationDataContext obj = new ChurchApplicationDataContext())
        //    {
        //        if (txtCardno.Text != string.Empty)
        //        {
        //            string name = (from a in obj.Church_MemberDetails where a.CardNo == Convert.ToInt64(txtCardno.Text) select a.MemberName).SingleOrDefault();
        //            if (name != null)
        //            {
        //                label19.Text = name;

        //            }
        //            else
        //            {
        //                label19.Text = "It's not valid Card No!";
        //            }
        //        }
        //    }
        //}

        private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBox3.Text == "Others")
            {
                button2.Visible = true;
                textBox10.Visible = true;
            }
            else
            {
                button2.Visible = false;
                textBox10.Visible = false;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            using (ChurchApplicationDataContext obj = new ChurchApplicationDataContext())
            {
                if (textBox10.Text != string.Empty)
                {
                    var single = from a in obj.Church_OfferingDetails where a.Offername == "Others" select a;
                    obj.Church_OfferingDetails.DeleteOnSubmit(single.SingleOrDefault());
                    obj.SubmitChanges();
                    Church_OfferingDetail church = new Church_OfferingDetail();
                    church.Offername = textBox10.Text;
                    obj.Church_OfferingDetails.InsertOnSubmit(church);
                    obj.SubmitChanges();
                    Church_OfferingDetail church1 = new Church_OfferingDetail();
                    church1.Offername = "Others";
                    obj.Church_OfferingDetails.InsertOnSubmit(church1);
                    obj.SubmitChanges();
                    comboBox3.DataSource = from a in obj.Church_OfferingDetails select a;
                    comboBox3.DisplayMember = "Offername";
                    textBox10.Text = string.Empty;
                    MessageBox.Show("Added Successfully!");
                }
                else
                {
                    MessageBox.Show("Enter Offer Name!");
                }
            }
        }



    }
}
