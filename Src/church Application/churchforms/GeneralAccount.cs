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
    public partial class GeneralAccount : Form
    {
        public GeneralAccount()
        {
            InitializeComponent();
        }

        private void btnGentraloffering_Click(object sender, EventArgs e)
        {
            CriditGeneralAccount obj = new CriditGeneralAccount();
            obj.ShowDialog();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ExpenditureGeneralAccount obj = new ExpenditureGeneralAccount();
            obj.ShowDialog();
        }
    }
}
