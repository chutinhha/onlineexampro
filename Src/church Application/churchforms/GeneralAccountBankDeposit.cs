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
    public partial class GeneralAccountBankDeposit : Form
    {
        public GeneralAccountBankDeposit()
        {
            InitializeComponent();
        }

        private void GeneralAccountBankDeposit_Load(object sender, EventArgs e)
        {
            using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            {
                var amount = (from a in churchDB.Church_OpeningBalanceDetails where a.Account_type == 1 select a).FirstOrDefault();
                label15.Text = Convert.ToString(amount.Opening_Bal_Cash);
                label16.Text = Convert.ToString(amount.Opening_Bal_Account);
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
                Validationfieldnumamount(textBox2);
                if (textBox2.Text=="")
                {
                    throw new Exception("Enter Amount!");
                }
                if (Convert.ToDecimal(textBox2.Text)>Convert.ToDecimal(label15.Text))
                {
                    throw new Exception("Enter valid Amount!");
                }
                using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
                {
                    var amount = (from a in churchDB.Church_OpeningBalanceDetails where a.Account_type == 1 select a).FirstOrDefault();
                    amount.Opening_Bal_Cash = amount.Opening_Bal_Cash - Convert.ToDecimal(textBox2.Text);
                    amount.Opening_Bal_Account = amount.Opening_Bal_Account + Convert.ToDecimal(textBox2.Text);
                    label15.Text=Convert.ToString(amount.Opening_Bal_Cash);
                    label16.Text = Convert.ToString(amount.Opening_Bal_Account);
                    churchDB.SubmitChanges();
                    Church_Deposit_Detail obj = new Church_Deposit_Detail();
                    obj.Payment_Date = Convert.ToDateTime(dateTimePicker1.Text);
                    obj.Amount = Convert.ToDecimal(textBox2.Text);
                    obj.Register_Date = DateTime.Now;
                    obj.Account_type = 1;
                    churchDB.Church_Deposit_Details.InsertOnSubmit(obj);
                    churchDB.SubmitChanges();
                    MessageBox.Show("Deposit Successfully!");
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
            textBox2.Text = string.Empty;
        }
    }
}
