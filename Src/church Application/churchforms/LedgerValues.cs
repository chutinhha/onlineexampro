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
    public partial class LedgerValues : Form
    {
        public LedgerValues()
        {
            InitializeComponent();
        }



        private void button1_Click(object sender, EventArgs e)
        {
            using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            {
                var all = churchDB.sp_Church_LedgerValuesFromTo(Convert.ToDateTime(dateTimePicker2.Text), Convert.ToDateTime(dateTimePicker3.Text));
                foreach (var item in all)
                {
                    label1.Text = Convert.ToString(item.MonthlyOffer);
                    label2.Text = Convert.ToString(item.Harvest);
                    label3.Text = Convert.ToString(item.ThanksGiving);
                    label18.Text = Convert.ToString(item.NewBuildingFund);
                    label19.Text = Convert.ToString(item.WomensFellowShip);
                    label20.Text = Convert.ToString(item.MensFellowShip);
                    label21.Text = Convert.ToString(item.YouthFellowShip);
                    label22.Text = Convert.ToString(item.SundaySchool);
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
