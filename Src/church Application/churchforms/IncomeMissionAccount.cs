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
    public partial class IncomeMissionAccount : Form
    {
        public IncomeMissionAccount()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            {
                var all = churchDB.sp_Church_CriditMissionAccount(Convert.ToDateTime(dateTimePicker2.Text), Convert.ToDateTime(dateTimePicker3.Text));
                foreach (var item in all)
                {
                    label20.Text = Convert.ToString(item.MensFellowShip);
                    label21.Text = Convert.ToString(item.YouthFellowShip);
                    label23.Text = Convert.ToString(item.EducationFund);
                    label26.Text = Convert.ToString(item.PoorFund);
                    label27.Text = Convert.ToString(item.I_M_S);
                    label28.Text = Convert.ToString(item.N_M_S);
                    label29.Text = Convert.ToString(item.BibleSociety);
                    label30.Text = Convert.ToString(item.D_B_M);
                    label31.Text = Convert.ToString(item.Meetings);
                    label32.Text = Convert.ToString(item.Others);
                }
            }
        }
    }
}
