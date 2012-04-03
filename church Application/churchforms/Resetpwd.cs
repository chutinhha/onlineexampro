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
    public partial class Resetpwd : Form
    {
        public Resetpwd()
        {
            InitializeComponent();
        }

        private void Resetpwd_Load(object sender, EventArgs e)
        {
            comboBox1.Text = "Member Login";
        }

        private void btnresetpwd_Click(object sender, EventArgs e)
        {

            using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            {
                var varify = from a in churchDB.Church_LoginDetails where (a.Password == txtOldpwd.Text && a.Login_type == comboBox1.SelectedIndex) select a;
                if (varify.Count() == 1)
                {

                    if (txtNewpwd.Text == txtRenewpwd.Text)
                    {
                        if (System.Windows.Forms.MessageBox.Show("Do you want to Change?", "Conformation", System.Windows.Forms.MessageBoxButtons.OKCancel, System.Windows.Forms.MessageBoxIcon.Asterisk, System.Windows.Forms.MessageBoxDefaultButton.Button1) == System.Windows.Forms.DialogResult.OK)
                        {
                            var updatelist = (varify).SingleOrDefault();
                            updatelist.Password = txtRenewpwd.Text;
                            churchDB.SubmitChanges();
                            MessageBox.Show("Reset Successfully!");
                            this.Close();
                        }
                    }
                    else
                    {
                        txtRenewpwd.Text = string.Empty;
                        MessageBox.Show("Re_enter the new password!!!");
                    }

                }
                else
                {
                    txtOldpwd.Text = string.Empty;
                    txtNewpwd.Text = string.Empty;
                    txtRenewpwd.Text = string.Empty;
                    MessageBox.Show("Check the old password!!!");
                }
            }

        }

    }
}
