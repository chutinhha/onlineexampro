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
    public partial class menu : Form
    {
        int a;
        public menu(int logintype)
        {
            a = logintype;
            InitializeComponent();
        }
        //public menu()
        //{

        //    InitializeComponent();
        //}

        private void btnmember_Click(object sender, EventArgs e)
        {
            MemberDetail member = new MemberDetail();
            member.ShowDialog();
        }

        private void btnAccounts_Click(object sender, EventArgs e)
        {
            if (a == 1)
            {
                CashBook cashobj = new CashBook();
                cashobj.ShowDialog();
                //AccountDetailLogin accdetaillogin = new AccountDetailLogin();
                //accdetaillogin.Show();
            }
            else
            {
                AccountDetailLogin accdetaillogin = new AccountDetailLogin();
                accdetaillogin.Show();

                //  MessageBox.Show(Convert.ToString(a));
                //MessageBox.Show("Enter with Account login");
            }

        }

        private void btnResetpwd_Click(object sender, EventArgs e)
        {
           
                Resetpwd reset = new Resetpwd();
                reset.ShowDialog();

           
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Harvest har = new Harvest();
            har.ShowDialog();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SundayAuction sunobj = new SundayAuction();
            sunobj.ShowDialog();
        }


    }
}
