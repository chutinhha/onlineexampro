using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace churchforms
{
    public partial class Income_and_Expenditure_Mission : Form
    {
        public Income_and_Expenditure_Mission()
        {
            InitializeComponent();
        }

        private void Income_and_Expenditure_Mission_Load(object sender, EventArgs e)
        {
            using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            {
                var amount = (from a in churchDB.Church_OpeningBalanceDetails where a.Account_type == 2 select a).FirstOrDefault();
                label1.Text = Convert.ToString(amount.Opening_Bal_Cash);
                label4.Text = Convert.ToString(amount.Opening_Bal_Account);
            }
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
                    label6.Text = Convert.ToString(item.I_M_S);
                    label5.Text = Convert.ToString(item.N_M_S);
                    label29.Text = Convert.ToString(item.BibleSociety);
                    label30.Text = Convert.ToString(item.D_B_M);
                    label31.Text = Convert.ToString(item.Meetings);
                    label32.Text = Convert.ToString(item.Others);
                }
                Validationfieldnum(label20);
                Validationfieldnum(label21);
                Validationfieldnum(label23);
                Validationfieldnum(label26);
                Validationfieldnum(label6);
                Validationfieldnum(label5);
                Validationfieldnum(label29);
                Validationfieldnum(label30);
                Validationfieldnum(label31);
                Validationfieldnum(label32);
                label40.Text = Convert.ToString(Convert.ToDecimal(label20.Text) + Convert.ToDecimal(label21.Text) + Convert.ToDecimal(label23.Text) + Convert.ToDecimal(label26.Text) + Convert.ToDecimal(label6.Text) + Convert.ToDecimal(label5.Text) + Convert.ToDecimal(label29.Text) + Convert.ToDecimal(label30.Text) + Convert.ToDecimal(label31.Text) + Convert.ToDecimal(label32.Text));
            }
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=ChurchApplication;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_Church_Mission_Expenditure", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@fromdate", Convert.ToDateTime(dateTimePicker2.Text));
            cmd.Parameters.AddWithValue("@todate", Convert.ToDateTime(dateTimePicker3.Text));
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();

            label64.Text = Convert.ToString(ds.Tables[0].Rows[0]["Mens_Cash"]);
            label52.Text = Convert.ToString(ds.Tables[0].Rows[0]["Mens_Cheque"]);
            label63.Text = Convert.ToString(ds.Tables[1].Rows[0]["Youth_Cash"]);
            label51.Text = Convert.ToString(ds.Tables[1].Rows[0]["Youth_Cheque"]);
            label62.Text = Convert.ToString(ds.Tables[2].Rows[0]["Edu_Cash"]);
            label50.Text = Convert.ToString(ds.Tables[2].Rows[0]["Edu_Cheque"]);
            label61.Text = Convert.ToString(ds.Tables[3].Rows[0]["Poor_Cash"]);
            label49.Text = Convert.ToString(ds.Tables[3].Rows[0]["Poor_Cheque"]);
            label60.Text = Convert.ToString(ds.Tables[4].Rows[0]["IMS_Cash"]);
            label48.Text = Convert.ToString(ds.Tables[4].Rows[0]["IMS_Cheque"]);
            label59.Text = Convert.ToString(ds.Tables[5].Rows[0]["NMS_Cash"]);
            label47.Text = Convert.ToString(ds.Tables[5].Rows[0]["NMS_Cheque"]);
            label58.Text = Convert.ToString(ds.Tables[6].Rows[0]["Bible_Cash"]);
            label46.Text = Convert.ToString(ds.Tables[6].Rows[0]["Bible_Cheque"]);
            label57.Text = Convert.ToString(ds.Tables[7].Rows[0]["DBM_Cash"]);
            label45.Text = Convert.ToString(ds.Tables[7].Rows[0]["DBM_Cheque"]);
            label56.Text = Convert.ToString(ds.Tables[8].Rows[0]["Meeting_Cash"]);
            label44.Text = Convert.ToString(ds.Tables[8].Rows[0]["Meeting_Cheque"]);
            label55.Text = Convert.ToString(ds.Tables[9].Rows[0]["Miscellaneous_Cash"]);
            label43.Text = Convert.ToString(ds.Tables[9].Rows[0]["Miscellaneous_Cheque"]);
            Validationfieldnum(label64);
            Validationfieldnum(label52);
            Validationfieldnum(label63);
            Validationfieldnum(label51);
            Validationfieldnum(label62);
            Validationfieldnum(label50);
            Validationfieldnum(label61);
            Validationfieldnum(label49);
            Validationfieldnum(label60);
            Validationfieldnum(label48);
            Validationfieldnum(label59);
            Validationfieldnum(label47);
            Validationfieldnum(label58);
            Validationfieldnum(label46);
            Validationfieldnum(label57);
            Validationfieldnum(label45);
            Validationfieldnum(label56);
            Validationfieldnum(label44);
            Validationfieldnum(label55);
            Validationfieldnum(label43);

            label41.Text = Convert.ToString(Convert.ToDecimal(label64.Text) + Convert.ToDecimal(label52.Text) + Convert.ToDecimal(label63.Text) + Convert.ToDecimal(label51.Text) +
                Convert.ToDecimal(label62.Text) + Convert.ToDecimal(label50.Text) + Convert.ToDecimal(label61.Text) + Convert.ToDecimal(label49.Text) + Convert.ToDecimal(label60.Text) + Convert.ToDecimal(label48.Text) + Convert.ToDecimal(label59.Text) + Convert.ToDecimal(label47.Text) +
                Convert.ToDecimal(label58.Text) + Convert.ToDecimal(label46.Text) + Convert.ToDecimal(label57.Text) + Convert.ToDecimal(label45.Text) + Convert.ToDecimal(label56.Text) + Convert.ToDecimal(label44.Text) + Convert.ToDecimal(label55.Text) + Convert.ToDecimal(label43.Text));
        }
        private void Validationfieldnum(Label labelControl1)
        {
            if (labelControl1.Text == "")
            {
                labelControl1.Text = "0";
            }
        }
    }
}
