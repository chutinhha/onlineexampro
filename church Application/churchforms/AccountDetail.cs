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
    public partial class AccountDetail : Form
    {
        public AccountDetail()
        {
            InitializeComponent();
        }

        public void AccountDetail_Load(object sender, EventArgs e)
        {
            // int a=Convert.ToInt32( txtCashamount.Text);
            txtCashamount.Text = "0";
            checkBox2.Checked = true;
            txtBranch.Enabled = false;
            txtChequeAmount.Enabled = false;
            txtChequeno.Enabled = false;
            ChequeDate.Enabled = false;
            comboBox2.Enabled = false;
            comboBox1.Text = "Gentral";
            using (ChurchApplicationDataContext obj = new ChurchApplicationDataContext())
            {
                comboBox3.DataSource = from a in obj.Church_OfferingDetails select a;
                comboBox3.DisplayMember = "Offername";
                //  comboBox3.ValueMember = "Offertype";
                comboBox2.DataSource = from a in obj.Church_BankDetails select a;
                comboBox2.DisplayMember = "Bank_name";
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

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBox1.SelectedIndex == 1)
            {
                label18.Visible = true;
                txtCardno.Visible = true;
            }
            else
            {
                label18.Visible = false;
                txtCardno.Visible = false;
            }
        }

        public void button1_Click(object sender, EventArgs e)
        {
            try
            {
                Validationfieldnum(txtCardno);


                using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
                {

                    Church_Accountdetail obj = new Church_Accountdetail();
                    if (comboBox1.SelectedIndex == 1)
                    {
                        if (txtCardno.Text != string.Empty)
                        {
                            if ((from a in churchDB.Church_MemberDetails where a.CardNo == Convert.ToInt64(txtCardno.Text) select a.MemberName).SingleOrDefault() != null)
                            {
                                obj.Cardno = Convert.ToInt64(txtCardno.Text);
                                obj.MainCatagory = comboBox1.SelectedIndex;

                            }
                            else
                            {
                                obj.MainCatagory = 0;
                                MessageBox.Show("it's not a valid Card No Record save in general");
                            }
                        }
                        else
                        {
                            txtCardno.Focus();
                            MessageBox.Show("Enter the Card No!");
                        }
                    }
                    else
                    {
                        obj.MainCatagory = comboBox1.SelectedIndex;
                    }
                    if (checkBox2.Checked)
                    {
                        if (txtCashamount.Text != string.Empty)
                        {
                            obj.CashAmount = Convert.ToDecimal(txtCashamount.Text);
                            if (!checkBox3.Checked)
                            {
                                if (textBox1.Text != string.Empty || textBox2.Text != string.Empty || textBox3.Text != string.Empty || textBox4.Text != string.Empty || textBox5.Text != string.Empty || textBox6.Text != string.Empty || textBox7.Text != string.Empty || textBox8.Text != string.Empty || textBox9.Text != string.Empty)
                                {
                                    if (textBox1.Text != string.Empty)
                                    {
                                        obj._1000x = Convert.ToInt32(textBox1.Text);
                                    }
                                    if (textBox2.Text != string.Empty)
                                    {
                                        obj._500x = Convert.ToInt32(textBox2.Text);
                                    }
                                    if (textBox3.Text != string.Empty)
                                    {
                                        obj._100x = Convert.ToInt32(textBox3.Text);
                                    }
                                    if (textBox4.Text != string.Empty)
                                    {
                                        obj._50x = Convert.ToInt32(textBox4.Text);
                                    }
                                    if (textBox5.Text != string.Empty)
                                    {
                                        obj._20x = Convert.ToInt32(textBox5.Text);
                                    }
                                    if (textBox6.Text != string.Empty)
                                    {
                                        obj._10x = Convert.ToInt32(textBox6.Text);
                                    }
                                    if (textBox7.Text != string.Empty)
                                    {
                                        obj._5x = Convert.ToInt32(textBox7.Text);
                                    }
                                    if (textBox8.Text != string.Empty)
                                    {
                                        obj._2x = Convert.ToInt32(textBox8.Text);
                                    }
                                    if (textBox9.Text != string.Empty)
                                    {
                                        obj._1x = Convert.ToInt32(textBox9.Text);
                                    }
                                }
                                else
                                {
                                    MessageBox.Show("Fill any one cash enabled fields!");
                                }
                            }
                        }
                        else
                        {
                            txtCashamount.Focus();
                            MessageBox.Show("Enter Amount!");
                        }


                    }
                    if (checkBox1.Checked)
                    {
                        if (txtChequeAmount.Text != string.Empty && txtChequeno.Text != string.Empty && txtBranch.Text != string.Empty)
                        {
                            obj.Bankname = comboBox2.SelectedIndex;
                            obj.Bankbranch = txtBranch.Text;
                            obj.Chequeno = txtChequeno.Text;
                            obj.ChequeDate = Convert.ToDateTime(ChequeDate.Text);
                            obj.ChequeAmount = Convert.ToDecimal(txtChequeAmount.Text);
                        }
                        else
                        {
                            MessageBox.Show("Fill all cheque enabled fields!");
                        }

                    }

                    obj.Offering_type = Convert.ToInt32(comboBox3.SelectedIndex);
                    obj.RegisteredDate = DateTime.Now;
                    churchDB.Church_Accountdetails.InsertOnSubmit(obj);
                    churchDB.SubmitChanges();
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
                    txtCashamount.Enabled = true;
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
                if (textBox1.Text != "")
                {
                    txtCashamount.Text = Convert.ToString(Convert.ToInt32(txtCashamount.Text) + (1000 * Convert.ToInt32(textBox1.Text)));
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }


        }

        private void textBox2_Leave(object sender, EventArgs e)
        {
            try
            {
                Validationfieldnum(textBox2);
                if (textBox2.Text != "")
                {
                    txtCashamount.Text = Convert.ToString(Convert.ToInt32(txtCashamount.Text) + (500 * Convert.ToInt32(textBox2.Text)));

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
                if (textBox3.Text != "")
                {
                    txtCashamount.Text = Convert.ToString(Convert.ToInt32(txtCashamount.Text) + (100 * Convert.ToInt32(textBox3.Text)));

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
                if (textBox4.Text != "")
                {
                    txtCashamount.Text = Convert.ToString(Convert.ToInt32(txtCashamount.Text) + (50 * Convert.ToInt32(textBox4.Text)));

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
                if (textBox5.Text != "")
                {
                    txtCashamount.Text = Convert.ToString(Convert.ToInt32(txtCashamount.Text) + (20 * Convert.ToInt32(textBox5.Text)));

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
                if (textBox6.Text != "")
                {
                    txtCashamount.Text = Convert.ToString(Convert.ToInt32(txtCashamount.Text) + (10 * Convert.ToInt32(textBox6.Text)));

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
                if (textBox7.Text != "")
                {
                    txtCashamount.Text = Convert.ToString(Convert.ToInt32(txtCashamount.Text) + (5 * Convert.ToInt32(textBox7.Text)));

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
                if (textBox8.Text != "")
                {
                    txtCashamount.Text = Convert.ToString(Convert.ToInt32(txtCashamount.Text) + (2 * Convert.ToInt32(textBox8.Text)));

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
                if (textBox9.Text != "")
                {
                    txtCashamount.Text = Convert.ToString(Convert.ToInt32(txtCashamount.Text) + (1 * Convert.ToInt32(textBox9.Text)));

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
            }
        }

        public void txtCardno_Leave(object sender, EventArgs e)
        {
            using (ChurchApplicationDataContext obj = new ChurchApplicationDataContext())
            {
                if (txtCardno.Text!=string.Empty)
                {
                    string name = (from a in obj.Church_MemberDetails where a.CardNo == Convert.ToInt64(txtCardno.Text) select a.MemberName).SingleOrDefault();
                    if (name != null)
                    {
                        label19.Text = name;
                    }
                    else
                    {
                        label19.Text = "It's not valid Card No!";
                    }
                }
            }
        }


    }
}
