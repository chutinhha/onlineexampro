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
    public partial class MissionAccount : Form
    {
        public MissionAccount()
        {
            InitializeComponent();
        }

        private void btnGentraloffering_Click(object sender, EventArgs e)
        {
            CriditMissionAccount obj = new CriditMissionAccount();
            obj.ShowDialog();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ExpenditureMissionAccount obj = new ExpenditureMissionAccount();
            obj.ShowDialog();
        }
    }
}
