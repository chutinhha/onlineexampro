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

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
                {
                    Church_OtherIncome obj = new Church_OtherIncome();
                    if (textBox1.Text != "" && textBox2.Text != "" && textBox3.Text != "")
                    {
                        Validationfieldnumamount(textBox3);
                        obj.Name = textBox1.Text;
                        obj.Towards = textBox2.Text;
                        obj.Amount = Convert.ToDecimal(textBox3.Text);
                        obj.Date = Convert.ToDateTime(dateTimePicker1.Text);
                        obj.Register_Date = DateTime.Now;
                        churchDB.Church_OtherIncomes.InsertOnSubmit(obj);
                        churchDB.SubmitChanges();
                        MessageBox.Show("Submit Successfully!");
                    }
                    else
                    {
                       throw new Exception("All Fields are mandatory!");
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
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
    }
}
