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
    public partial class CashBook : Form
    {
        public CashBook()
        {
            InitializeComponent();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            SubscriptionCard subscription = new SubscriptionCard();
            subscription.ShowDialog();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Rew_HouseVisit RewHouse = new Rew_HouseVisit();
            RewHouse.ShowDialog();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            HarvestDue harvest = new HarvestDue();
            harvest.ShowDialog();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            SundayAuctionDue sunday = new SundayAuctionDue();
            sunday.ShowDialog();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            OtherIncome other = new OtherIncome();
            other.ShowDialog();
        }

        private void btnGentraloffering_Click(object sender, EventArgs e)
        {
            GeneralOffering general = new GeneralOffering();
            general.ShowDialog();
        }
    }
}
