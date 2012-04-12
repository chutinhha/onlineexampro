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
    public partial class SundayAuction : Form
    {
        public SundayAuction()
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
                Validationfieldnumamount(textBox4);
                using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
                {
                    Church_Auction_Detail obj = new Church_Auction_Detail();
                    if (textBox1.Text != "")
                    {
                        obj.Card_No = Convert.ToInt64(textBox1.Text);
                    }
                    else
                    {
                        textBox1.Focus();
                        throw new Exception("Enter Card No!");
                    }

                    obj.Auction_Type = 2;
                    if (textBox2.Text != "")
                    {
                        obj.Thing_Name = textBox2.Text;
                    }
                    else
                    {
                        textBox2.Focus();
                        throw new Exception("Enter Things Name!");
                    }
                    obj.Auction_Date = Convert.ToDateTime(dateTimePicker1.Text);
                    if (textBox3.Text != "")
                    {
                        obj.Original_Price = Convert.ToDecimal(textBox3.Text);
                    }
                    else
                    {
                        textBox3.Focus();
                        throw new Exception("Enter Orginal Price!");
                    }
                    if (textBox4.Text != "")
                    {
                        obj.inicial_Amount = Convert.ToDecimal(textBox4.Text);
                    }
                    else
                    {
                        textBox4.Focus();
                        throw new Exception("Enter inicial Price!");
                    }
                    obj.Full_Payment = "NO";
                    if (obj.Original_Price == obj.inicial_Amount)
                    {
                        obj.Full_Payment = "YES";
                    }
                    obj.Register_Date = DateTime.Now;
                    churchDB.Church_Auction_Details.InsertOnSubmit(obj);
                    churchDB.SubmitChanges();
                    MessageBox.Show("Submit Successfully!");
                    Emptycontrol();
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
            textBox4.Text = string.Empty;
        }
    }
}
