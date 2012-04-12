using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Net;

namespace churchforms
{
    public partial class church : Form
    {
        public church()
        {
            InitializeComponent();
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            {
                var varify = from a in churchDB.Church_LoginDetails where (a.Login_name==Convert.ToString(txtusername.Text)&&a.Password==Convert.ToString(txtpwd.Text)&&a.Login_type==Convert.ToInt32(comboBox1.SelectedIndex)) select a;
                if(varify.Count()==1)
                {
                     menu obj = new menu(comboBox1.SelectedIndex);
                       //  menu obj = new menu();
                    obj.ShowDialog();
                 emptyfield(); 
                 }
                else
	            {
                    MessageBox.Show("enter valid UserName & Password");
	            }
               
            } 
            //if (txtusername.Text == "admin" && txtpwd.Text == "admin")
            //{
            //    menu obj = new menu(comboBox1.SelectedIndex);
            //  //  menu obj = new menu();
            //    obj.ShowDialog();
            //    emptyfield(); 
  
                
            //}
            //else
            //{
            //    MessageBox.Show("enter valid UserName & Password");
            //}
        }

        private void emptyfield()
        {
            txtpwd.Text = string.Empty;
            txtusername.Text = string.Empty;
        }

        private void church_Load(object sender, EventArgs e)
        {
           
            comboBox1.Text = "Member Login";
            
        }

    }
}
