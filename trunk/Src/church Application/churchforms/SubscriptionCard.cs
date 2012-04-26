using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Text.RegularExpressions;
using System.Data.SqlClient;

namespace churchforms
{
    public partial class SubscriptionCard : Form
    {
        public SubscriptionCard()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
                {
                    Church_AmountDetail obj = new Church_AmountDetail();
                    if (textBox1.Text == "")
                    {
                        textBox1.Focus();
                        throw new Exception("Enter the Card No!");
                    }
                    if (checkBox2.Checked)
                    {
                        if (textBox18.Text != txtCashamount.Text)
                        {
                            throw new Exception("Total Amount & cash Amount Not Tally!");
                        }
                        if (textBox18.Text == "")
                        {
                            textBox18.Focus();
                            throw new Exception("Enter the Amount!");
                        }
                        else
                        {
                            obj.Cash_Amount = Convert.ToDecimal(txtCashamount.Text);
                        }
                    }
                    else
                    {
                        obj.Cash_Amount = 0;
                    }
                    if (checkBox1.Checked)
                    {
                        if (textBox18.Text != txtChequeAmount.Text)
                        {
                            throw new Exception("Total Amount & cheque Amount Not Tally!");
                        }
                        if (txtBranch.Text == "" || txtChequeno.Text == "" || txtChequeAmount.Text == "")
                        {
                            throw new Exception("Enter Cheque all Fields!");
                        }
                        else
                        {
                            obj.Bank_Name = Convert.ToInt32(comboBox2.SelectedValue);
                            obj.Branch_Name = txtBranch.Text;
                            obj.Cheque_No = txtChequeno.Text;
                            obj.Cheque_Date = Convert.ToDateTime(ChequeDate.Text);
                            obj.Cheque_Amount = Convert.ToDecimal(txtChequeAmount.Text);
                        }
                    }
                    else
                    {
                        obj.Cheque_Amount = 0;
                    }
                    obj.Card_No = Convert.ToInt64(textBox1.Text);
                    obj.Payment_Date = Convert.ToDateTime(dateTimePicker1.Text);
                    obj.Register_Date = DateTime.Now;
                    obj.Form_id = 1;
                    churchDB.Church_AmountDetails.InsertOnSubmit(obj);
                    churchDB.SubmitChanges();
                    long aa = (from a in churchDB.Church_AmountDetails select a.Amount_Id).Max();
                    Church_SubscriptionDetail subobj = new Church_SubscriptionDetail();
                    subobj.MonthlyOffer = Convert.ToDecimal(textBox2.Text);
                    subobj.Harvest = Convert.ToDecimal(textBox16.Text);
                    subobj.ThanksGiving = Convert.ToDecimal(textBox3.Text);
                    subobj.NewBuildingFund = Convert.ToDecimal(textBox4.Text);
                    subobj.WomensFellowShip = Convert.ToDecimal(textBox5.Text);
                    subobj.MensFellowShip = Convert.ToDecimal(textBox6.Text);
                    subobj.YouthFellowShip = Convert.ToDecimal(textBox7.Text);
                    subobj.SundaySchool = Convert.ToDecimal(textBox8.Text);
                    subobj.EducationFund = Convert.ToDecimal(textBox9.Text);
                    subobj.PoorFund = Convert.ToDecimal(textBox10.Text); ;
                    subobj.I_M_S = Convert.ToDecimal(textBox11.Text);
                    subobj.N_M_S = Convert.ToDecimal(textBox12.Text);
                    subobj.BibleSociety = Convert.ToDecimal(textBox13.Text);
                    subobj.D_B_M = Convert.ToDecimal(textBox14.Text);
                    subobj.Meetings = Convert.ToDecimal(textBox15.Text);
                    subobj.Others = Convert.ToDecimal(textBox17.Text);
                    subobj.FK_AmountId = aa;
                    churchDB.Church_SubscriptionDetails.InsertOnSubmit(subobj);
                    churchDB.SubmitChanges();
                    var cal = (from a in churchDB.Church_AuctionStatus where a.Card_No == Convert.ToInt64(textBox1.Text) select a).FirstOrDefault();
                    if (cal != null)
                    {
                        cal.Harvest_Payed = cal.Harvest_Payed + Convert.ToDecimal(textBox16.Text);
                        if (cal.Harvest_Total == cal.Harvest_Payed)
                        {
                            cal.Status = 1;
                        }
                        churchDB.SubmitChanges();
                    }
                    var amount = (from a in churchDB.Church_OpeningBalanceDetails where a.Account_type == 1 select a).FirstOrDefault();
                    amount.Opening_Bal_Cash = amount.Opening_Bal_Cash + Convert.ToDecimal(textBox2.Text) + Convert.ToDecimal(textBox3.Text) + Convert.ToDecimal(textBox4.Text) + Convert.ToDecimal(textBox8.Text) + Convert.ToDecimal(textBox16.Text);
                    churchDB.SubmitChanges();
                    var mission = (from a in churchDB.Church_OpeningBalanceDetails where a.Account_type == 2 select a).FirstOrDefault();
                    mission.Opening_Bal_Cash = mission.Opening_Bal_Cash + Convert.ToDecimal(textBox6.Text) + Convert.ToDecimal(textBox7.Text) + Convert.ToDecimal(textBox9.Text) + Convert.ToDecimal(textBox10.Text) + Convert.ToDecimal(textBox11.Text) + Convert.ToDecimal(textBox12.Text) + Convert.ToDecimal(textBox13.Text) + Convert.ToDecimal(textBox14.Text) + Convert.ToDecimal(textBox15.Text) + Convert.ToDecimal(textBox17.Text);
                    churchDB.SubmitChanges();
                    MessageBox.Show("Submit Successfully!");
                    Bindingamount();
                    emptyfield();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void emptyfield()
        {
            textBox2.Text = "0";
            textBox3.Text = "0";
            textBox4.Text = "0";
            textBox5.Text = "0";
            textBox6.Text = "0";
            textBox7.Text = "0";
            textBox8.Text = "0";
            textBox9.Text = "0";
            textBox10.Text = "0";
            textBox11.Text = "0";
            textBox12.Text = "0";
            textBox13.Text = "0";
            textBox14.Text = "0";
            textBox15.Text = "0";
            textBox16.Text = "0";
            textBox17.Text = "0";
            textBox18.Text = string.Empty;

            txtCashamount.Text = string.Empty;
            txtBranch.Text = string.Empty;
            txtChequeAmount.Text = string.Empty;
            txtChequeno.Text = string.Empty;
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
        private void textBox1_Leave(object sender, EventArgs e)
        {
            using (ChurchApplicationDataContext obj = new ChurchApplicationDataContext())
            {
                try
                {
                    if (textBox1.Text != string.Empty)
                    {
                        Validationfieldnum(textBox1);
                        var name = (from a in obj.Church_MemberDetails where a.CardNo == Convert.ToInt64(textBox1.Text) select a).SingleOrDefault();
                        comboBox1.Text = (from a in obj.Church_MemberDetails where a.CardNo == Convert.ToInt64(textBox1.Text) select a.MemberName).FirstOrDefault();
                        if (name != null)
                        {
                            Bindingamount();
                            label2.Text = name.MemberName;
                            label3.Text = Convert.ToString(name.Mobile);
                            string[] Address = name.Address.Split(',');
                            label26.Text = Address[0] + ",";
                            label27.Text = Address[1] + ".";
                        }
                        else
                        {
                            label31.Text = "It's not valid Card No!";
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }
        }
        private void Bindingamount()
        {
            using (ChurchApplicationDataContext obj = new ChurchApplicationDataContext())
            {
                var Bal = (from a in obj.Church_AuctionStatus where a.Card_No == Convert.ToInt64(textBox1.Text) select a).SingleOrDefault();
                if (Bal != null)
                {
                    label30.Text = Convert.ToString(Bal.Harvest_Total - Bal.Harvest_Payed);
                }
                else
                {
                    label30.Text = "0";
                }
            }
        }

        private void textBox2_Leave(object sender, EventArgs e)
        {
            try
            {
                Validationfieldnumamount(textBox2);
                if (textBox2.Text != "")
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

        private void Calculation()
        {
            if (checkBox1.Checked)
            {
                txtCashamount.Text = string.Empty;
                txtChequeAmount.Text = Convert.ToString(Convert.ToDecimal(textBox2.Text) + Convert.ToDecimal(textBox16.Text) + Convert.ToDecimal(textBox3.Text) + Convert.ToDecimal(textBox4.Text) + Convert.ToDecimal(textBox5.Text) + Convert.ToDecimal(textBox6.Text) + Convert.ToDecimal(textBox7.Text) + Convert.ToDecimal(textBox8.Text) + Convert.ToDecimal(textBox9.Text) + Convert.ToDecimal(textBox10.Text) + Convert.ToDecimal(textBox11.Text) + Convert.ToDecimal(textBox12.Text) + Convert.ToDecimal(textBox13.Text) + Convert.ToDecimal(textBox14.Text) + Convert.ToDecimal(textBox15.Text) + Convert.ToDecimal(textBox17.Text));
            }
            else
            {
                txtChequeAmount.Text = string.Empty;
                txtCashamount.Text = Convert.ToString(Convert.ToDecimal(textBox2.Text) + Convert.ToDecimal(textBox16.Text) + Convert.ToDecimal(textBox3.Text) + Convert.ToDecimal(textBox4.Text) + Convert.ToDecimal(textBox5.Text) + Convert.ToDecimal(textBox6.Text) + Convert.ToDecimal(textBox7.Text) + Convert.ToDecimal(textBox8.Text) + Convert.ToDecimal(textBox9.Text) + Convert.ToDecimal(textBox10.Text) + Convert.ToDecimal(textBox11.Text) + Convert.ToDecimal(textBox12.Text) + Convert.ToDecimal(textBox13.Text) + Convert.ToDecimal(textBox14.Text) + Convert.ToDecimal(textBox15.Text) + Convert.ToDecimal(textBox17.Text));
            }
        }

        private void textBox16_Leave(object sender, EventArgs e)
        {
            try
            {
                Validationfieldnumamount(textBox16);
                if (textBox16.Text != "")
                {
                    Calculation();
                }
                else
                {
                    textBox16.Text = "0";
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
                Validationfieldnumamount(textBox3);
                if (textBox3.Text != "")
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
                Validationfieldnumamount(textBox4);
                if (textBox4.Text != "")
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
                Validationfieldnumamount(textBox5);
                if (textBox5.Text != "")
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
                Validationfieldnumamount(textBox6);
                if (textBox6.Text != "")
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
                Validationfieldnumamount(textBox7);
                if (textBox7.Text != "")
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
                Validationfieldnumamount(textBox8);
                if (textBox8.Text != "")
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
                Validationfieldnumamount(textBox9);
                if (textBox9.Text != "")
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

        private void textBox10_Leave(object sender, EventArgs e)
        {
            try
            {
                Validationfieldnumamount(textBox10);
                if (textBox10.Text != "")
                {
                    Calculation();
                }
                else
                {
                    textBox10.Text = "0";
                    Calculation();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void textBox11_Leave(object sender, EventArgs e)
        {
            try
            {
                Validationfieldnumamount(textBox11);
                if (textBox11.Text != "")
                {
                    Calculation();
                }
                else
                {
                    textBox11.Text = "0";
                    Calculation();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void textBox12_Leave(object sender, EventArgs e)
        {
            try
            {
                Validationfieldnumamount(textBox12);
                if (textBox12.Text != "")
                {
                    Calculation();
                }
                else
                {
                    textBox12.Text = "0";
                    Calculation();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void textBox13_Leave(object sender, EventArgs e)
        {
            try
            {
                Validationfieldnumamount(textBox13);
                if (textBox13.Text != "")
                {
                    Calculation();
                }
                else
                {
                    textBox13.Text = "0";
                    Calculation();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void textBox14_Leave(object sender, EventArgs e)
        {
            try
            {
                Validationfieldnumamount(textBox14);
                if (textBox14.Text != "")
                {
                    Calculation();
                }
                else
                {
                    textBox14.Text = "0";
                    Calculation();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void textBox15_Leave(object sender, EventArgs e)
        {
            try
            {
                Validationfieldnumamount(textBox15);
                if (textBox15.Text != "")
                {
                    Calculation();
                }
                else
                {
                    textBox15.Text = "0";
                    Calculation();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void textBox17_Leave(object sender, EventArgs e)
        {
            try
            {
                Validationfieldnumamount(textBox17);
                if (textBox17.Text != "")
                {
                    Calculation();
                }
                else
                {
                    textBox17.Text = "0";
                    Calculation();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void SubscriptionCard_Load(object sender, EventArgs e)
        {
            comboBox2.Enabled = false;
            txtBranch.Enabled = false;
            txtChequeno.Enabled = false;
            ChequeDate.Enabled = false;
            checkBox2.Checked = true;
            txtCashamount.Enabled = false;
            txtChequeAmount.Enabled = false;
            textBox2.Text = "0";
            textBox16.Text = "0";
            textBox3.Text = "0";
            textBox4.Text = "0";
            textBox5.Text = "0";
            textBox6.Text = "0";
            textBox7.Text = "0";
            textBox8.Text = "0";
            textBox9.Text = "0";
            textBox10.Text = "0";
            textBox11.Text = "0";
            textBox12.Text = "0";
            textBox13.Text = "0";
            textBox14.Text = "0";
            textBox15.Text = "0";
            textBox17.Text = "0";
            using (ChurchApplicationDataContext obj = new ChurchApplicationDataContext())
            {
                comboBox2.DataSource = from a in obj.Church_BankDetails select a;
                comboBox2.DisplayMember = "Bank_name";
                comboBox2.ValueMember = "Bank_id";
                comboBox1.DataSource = from a in obj.Church_MemberDetails select a;
                comboBox1.DisplayMember = "MemberName";
                comboBox1.ValueMember = "MemberId";
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

            }
            else
            {
                comboBox2.Enabled = false;
                txtBranch.Enabled = false;
                txtChequeno.Enabled = false;
                ChequeDate.Enabled = false;
            }
        }

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox2.Checked)
            {
                txtCashamount.Text = txtChequeAmount.Text;
                txtChequeAmount.Text = string.Empty;
                checkBox1.Checked = false;
            }
        }

        //private void comboBox1_KeyDown(object sender, KeyEventArgs e)
        //{
        //    using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
        //    {
        //        var name = churchDB.sp_Church_NameSearch(comboBox1.Text);
        //        comboBox1.DataSource = name;
        //        foreach (var item in name)
        //        {
        //            comboBox1.DisplayMember = item.MemberName;
        //            comboBox1.ValueMember = Convert.ToString(item.MemberId);
        //        }
        //    }
        //    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=ChurchApplication;Integrated Security=True");
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("sp_Church_NameSearch", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@name", Convert.ToString(comboBox1.Text));
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    con.Close();
        //    comboBox1.DataSource = ds.Tables[0];
        //    comboBox1.DisplayMember = Convert.ToString(ds.Tables[0].Rows[0]["name"]);
        //    //comboBox2.ValueMember = Convert.ToString(ds.Tables[0].Rows[0]["id"]);

        //}

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (ChurchApplicationDataContext obj = new ChurchApplicationDataContext())
            {
                try
                {
                    if (comboBox1.SelectedIndex != -1)
                    {
                        Int64 ff = 0;
                        try
                        {
                            ff = Convert.ToInt64(comboBox1.SelectedValue);

                            var name = (from a in obj.Church_MemberDetails where a.MemberId == ff select a).FirstOrDefault();
                            if (name != null)
                            {
                                textBox1.Text = Convert.ToString(name.CardNo);
                                label2.Text = name.MemberName;
                                label3.Text = Convert.ToString(name.Mobile);
                                string[] Address = name.Address.Split(',');
                                label26.Text = Address[0] + ",";
                                label27.Text = Address[1] + ".";
                            }

                            else
                            {
                                label31.Text = "It's not valid Card No!";
                            }
                        }
                        catch (Exception)
                        {
                            return;
                        }
                    }
                }

                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }

        }

        private void comboBox1_TextUpdate(object sender, EventArgs e)
        {
            using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            {
                //MessageBox.Show(comboBox1.Text);
                var name = churchDB.Church_MemberDetails.Where(a => a.MemberName.Contains(comboBox1.Text));
                //churchDB.sp_Church_NameSearch(comboBox1.Text);
                comboBox1.DataSource = name;

            }
            ////SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=ChurchApplication;Integrated Security=True");
            ////con.Open();
            ////SqlCommand cmd = new SqlCommand("sp_Church_NameSearch", con);
            ////cmd.CommandType = CommandType.StoredProcedure;
            ////cmd.Parameters.AddWithValue("@name", Convert.ToString(comboBox1.Text));
            ////SqlDataAdapter da = new SqlDataAdapter(cmd);
            ////DataSet ds = new DataSet();
            ////da.Fill(ds);
            ////con.Close();
            ////comboBox1.DataSource = ds.Tables[0];
            ////comboBox1.DisplayMember = Convert.ToString(ds.Tables[0].Rows[0]["name"]);
            ////comboBox1.ValueMember = Convert.ToString(ds.Tables[0].Rows[0]["id"]);
        }


    }
}
