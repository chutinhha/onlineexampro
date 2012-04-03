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
    public partial class AccountDetailLogin : Form
    {
        public AccountDetailLogin()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            int logintype = 1;
            using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            {
                var varify = from a in churchDB.Church_LoginDetails where (a.Login_type == logintype && a.Login_name == txtaccountnamager.Text && a.Password == txtPassword.Text) select a;
                if (varify.Count() == 1)
                {
                    this.Close();
                    AccountDetail accdetail = new AccountDetail();
                    accdetail.ShowDialog();
                  
                    
                }
                else
                {
                    MessageBox.Show("Enter valid Username&Password!!!");
                }
            }

        }
    }
}
