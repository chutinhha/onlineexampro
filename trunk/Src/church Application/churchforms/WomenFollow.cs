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
    public partial class WomenFollow : Form
    {
        public WomenFollow()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            {
                var all = churchDB.sp_Church_WomensFollowShip(Convert.ToDateTime(dateTimePicker1.Text), Convert.ToDateTime(dateTimePicker2.Text));
                foreach (var item in all)
                {
                    label19.Text = Convert.ToString(item.WomensFellowShip);
                }
            }
        }
    }
}
