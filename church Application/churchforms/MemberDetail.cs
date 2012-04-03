using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace churchforms
{
    public partial class MemberDetail : Form
    {
        public MemberDetail()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {

            String marital = "Married";
            if (cbUnmarried.Checked)
            {
                marital = "Unmarried";
            }

            using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            {
                Church_MemberDetail obj = new Church_MemberDetail();
                obj.MemberName = txtName.Text;
                if (txtCardno.Text == "")
                {
                    obj.CardNo = null;
                }
                else
                {
                    obj.CardNo = Convert.ToInt64(txtCardno.Text);
                }

                obj.FamilyNo = Convert.ToInt32(txtFamilyno.Text);
                obj.Address = Convert.ToString(txtAddress.Text);
                obj.Gender = Convert.ToString(comboBox1.Text);
                obj.Telephone = Convert.ToInt64(txtTelephone.Text);
                obj.Mobile = Convert.ToInt64(txtMobile.Text);
                obj.Occupation = txtOccupation.Text;
                obj.DOB = Convert.ToDateTime(dateTimePickerDOB.Text);
                obj.MaritalStatus = marital;
                obj.RegisterDate = DateTime.Now;
                if (marital == "Unmarried")
                {
                    obj.MarriageDate = null;

                }
                else
                {
                    obj.MarriageDate = Convert.ToDateTime(dateTimePickerMarriage.Text);
                }
                churchDB.Church_MemberDetails.InsertOnSubmit(obj);
                churchDB.SubmitChanges();
                Cardno();
                emptyfield();
                //  dataGridView1.Refresh();
            }
        }

        private void emptyfield()
        {
            txtName.Text = string.Empty;

            txtMobile.Text = string.Empty;
            txtOccupation.Text = string.Empty;

        }

        private void button4_Click(object sender, EventArgs e)
        {
            //Random ran = new Random();
            //txtFamilyno.Text = ran.Next(100, 999).ToString();
            txtAddress.Text = string.Empty;
            txtTelephone.Text = string.Empty;
            txtFamilyno.Text = txtCardno.Text;
        }

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            cbMarried.Checked = false;
            dateTimePickerMarriage.Enabled = false;
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            cbUnmarried.Checked = false;
            dateTimePickerMarriage.Enabled = true;
        }

        private void MemberDetail_Load(object sender, EventArgs e)
        {
            dataGridView2.Visible = false;
            // TODO: This line of code loads data into the 'churchApplicationDataSet2.Church_MemberDetail' table. You can move, or remove it, as needed.
            this.church_MemberDetailTableAdapter.Fill(this.churchApplicationDataSet2.Church_MemberDetail);



            Cardno();
            Familyno();
            comboBox1.Text = "Male";
        }

        private void Familyno()
        {
            using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            {
                string max_value = (from a in churchDB.Church_MemberDetails select a.FamilyNo).Max().ToString();
                txtFamilyno.Text = max_value;
            }
        }

        private void Cardno()
        {
            using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            {
                var number = from a in churchDB.Church_MemberDetails select a;
                if (number.Count() == 0)
                {
                    txtCardno.Text = Convert.ToString(1);

                }
                else
                {
                    long max_value = Convert.ToInt64((from a in churchDB.Church_MemberDetails select a.CardNo).Max());
                    txtCardno.Text = Convert.ToString(max_value + 1);
                }
                var nonadult = from b in churchDB.Church_MemberDetails where b.CardNo == null select b;
                lbCount.Text = Convert.ToString("(" + nonadult.Count() + ")");
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            txtCardno.Text = string.Empty;
        }

        private void cardholderToolStripButton_Click(object sender, EventArgs e)
        {
            dataGridView2.Visible = false;
            try
            {
                this.church_MemberDetailTableAdapter.Cardholder(this.churchApplicationDataSet2.Church_MemberDetail);
            }
            catch (System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }

        }

        private void non_AdultToolStripButton_Click(object sender, EventArgs e)
        {
            dataGridView2.Visible = false;
            try
            {
                this.church_MemberDetailTableAdapter.non_Adult(this.churchApplicationDataSet2.Church_MemberDetail);
            }
            catch (System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }

        }

        private void button5_Click(object sender, EventArgs e)
        {
            dataGridView2.Visible = true;
            using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            {
                var member = churchDB.sp_Church_MemberDetailBirthdatepick(Convert.ToDateTime(dateTimePicker1.Text), Convert.ToDateTime(dateTimePicker2.Text));


                dataGridView2.DataSource = member;
                //dataGridView1.datab

            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            dataGridView2.Visible = true;
            using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            {
                var member = churchDB.sp_Church_MemberDetailMarriagedatepick(Convert.ToDateTime(dateTimePicker1.Text), Convert.ToDateTime(dateTimePicker2.Text));
                dataGridView2.DataSource = member;
                //dataGridView1.datab

            }
        }

        private void button7_Click(object sender, EventArgs e)
        {

            if (System.Windows.Forms.MessageBox.Show("Do you want to Save?.", "Conformation", System.Windows.Forms.MessageBoxButtons.OKCancel, System.Windows.Forms.MessageBoxIcon.Asterisk, System.Windows.Forms.MessageBoxDefaultButton.Button1) == System.Windows.Forms.DialogResult.OK)
            {
                church_MemberDetailTableAdapter.Update(churchApplicationDataSet2);
            }

        }

        private void button8_Click(object sender, EventArgs e)
        {
            dataGridView2.Visible = false;
            this.church_MemberDetailTableAdapter.Fill(this.churchApplicationDataSet2.Church_MemberDetail);
        }







    }
}
