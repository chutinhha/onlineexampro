using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace churchforms
{
    public partial class AccountDetail : Form
    {
        public AccountDetail()
        {
            InitializeComponent();
        }

        private void AccountDetail_Load(object sender, EventArgs e)
        {

            checkBox2.Checked = true;
            txtBranch.Enabled = false;
            txtChequeAmount.Enabled = false;
            txtChequeno.Enabled = false;
            ChequeDate.Enabled = false;
            comboBox2.Enabled = false;
            comboBox1.Text = "Gentral";
            using (ChurchApplicationDataContext obj= new ChurchApplicationDataContext())
            {
                comboBox3.DataSource = from a in obj.Church_OfferingDetails select a;
                comboBox3.DisplayMember = "Offername";
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
            if (comboBox1.SelectedIndex==1)
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

        private void button1_Click(object sender, EventArgs e)
        {
            using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            {
                Church_Accountdetail obj = new Church_Accountdetail();
                obj.MainCatagory = comboBox1.SelectedIndex;
                obj.Offering_type = comboBox3.SelectedIndex;
                obj.CashAmount =Convert.ToDecimal(txtCashamount.Text);
                obj.Bankname = comboBox2.SelectedIndex;
                obj.Bankbranch = txtBranch.Text;
                obj.Chequeno = txtCardno.Text;
                obj.ChequeDate =Convert.ToDateTime(ChequeDate.Text);
                obj.CashAmount = Convert.ToDecimal(txtChequeAmount.Text);
                obj.RegisteredDate = DateTime.Now;
                obj._1000x = Convert.ToInt32( textBox2.Text);
                obj._500x = Convert.ToInt32(textBox2.Text);
                obj._100x = Convert.ToInt32(textBox2.Text);
                obj._50x = Convert.ToInt32(textBox2.Text);
                obj._20x = Convert.ToInt32(textBox2.Text);
                obj._10x = Convert.ToInt32(textBox2.Text);
                obj._5x = Convert.ToInt32(textBox2.Text);
                obj._2x = Convert.ToInt32(textBox2.Text);
                obj._1x = Convert.ToInt32(textBox2.Text);
                churchDB.Church_Accountdetails.InsertOnSubmit(obj);
                churchDB.SubmitChanges();
            }
        }

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox2.Checked)
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


    }
}
