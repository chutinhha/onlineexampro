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
    public partial class SubscriptionCard : Form
    {
        public SubscriptionCard()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_Leave(object sender, EventArgs e)
        {
            using (ChurchApplicationDataContext obj = new ChurchApplicationDataContext())
            {
                if (textBox1.Text != string.Empty)
                {
                    var name = (from a in obj.Church_MemberDetails where a.CardNo == Convert.ToInt64(textBox1.Text) select a).SingleOrDefault();
                    if (name != null)
                    {
                        label2.Text = name.MemberName;
                        label3.Text = Convert.ToString(name.Mobile);
                       string[] Address = name.Address.Split(',');
                       label26.Text = Address[0]+",";
                       label27.Text = Address[1]+".";
                    }
                    else
                    {
                        label2.Text = "It's not valid Card No!";
                    }
                }
            }
        }
    }
}
