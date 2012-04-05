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

        }


    }
}
