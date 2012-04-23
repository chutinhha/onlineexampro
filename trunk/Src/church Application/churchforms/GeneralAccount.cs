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
            IncomeGeneralAccount obj = new IncomeGeneralAccount();
            obj.ShowDialog();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ExpenditureGeneralAccount obj = new ExpenditureGeneralAccount();
            obj.ShowDialog();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Income_and_Expenditure_general obj = new Income_and_Expenditure_general();
            obj.ShowDialog();
        }
    }
}
