using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace churchforms
{
    public partial class Income_and_Expenditure_general : Form
    {
        public Income_and_Expenditure_general()
        {
            InitializeComponent();
        }

        private void Income_and_Expenditure_general_Load(object sender, EventArgs e)
        {
            using (ChurchApplicationDataContext churchDB = new ChurchApplicationDataContext())
            {
                var amount = (from a in churchDB.Church_OpeningBalanceDetails where a.Account_type == 1 select a).FirstOrDefault();
                label1.Text = Convert.ToString(amount.Opening_Bal_Cash);
                label4.Text = Convert.ToString(amount.Opening_Bal_Account);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=ChurchApplication;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_Church_General_Income_Expenditure", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@fromdate", Convert.ToDateTime(dateTimePicker2.Text));
            cmd.Parameters.AddWithValue("@todate", Convert.ToDateTime(dateTimePicker3.Text));
            SqlParameter sp = new SqlParameter();
            sp.Direction = ParameterDirection.Output;
            sp.ParameterName = "@ThanksGivingcash";
            sp.SqlDbType = SqlDbType.Decimal;
            cmd.Parameters.Add(sp);
            SqlParameter sp1 = new SqlParameter();
            sp1.Direction = ParameterDirection.Output;
            sp1.ParameterName = "@SundaySchoolcash";
            sp1.SqlDbType = SqlDbType.Decimal;
            cmd.Parameters.Add(sp1);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            label22.Text = Convert.ToString(ds.Tables[0].Rows[0]["MonthlyOffer"]);
            label18.Text = Convert.ToString(ds.Tables[0].Rows[0]["NewBuildingFund"]);
            label6.Text=Convert.ToString(ds.Tables[1].Rows[0]["harvestcash"]);
            label43.Text = Convert.ToString(ds.Tables[1].Rows[0]["harvestcheque"]);
            label21.Text = Convert.ToString(ds.Tables[2].Rows[0]["sundayauctioncash"]);
            label34.Text = Convert.ToString(ds.Tables[2].Rows[0]["sundayauctioncheque"]);
            label5.Text = Convert.ToString(sp.Value);
            label42.Text = Convert.ToString(ds.Tables[3].Rows[0]["thanksgivingcheque"]);
            label13.Text = Convert.ToString(ds.Tables[4].Rows[0]["sundayofferingcash"]);
            label40.Text = Convert.ToString(ds.Tables[4].Rows[0]["sundayofferingcheque"]);
            label14.Text = Convert.ToString(sp1.Value);
            label39.Text = Convert.ToString(ds.Tables[5].Rows[0]["sundayschoolcheque"]);
            label15.Text = Convert.ToString(ds.Tables[6].Rows[0]["Birth_Marriage_Cash"]);
            label38.Text = Convert.ToString(ds.Tables[6].Rows[0]["Birth_Marriage_Cheque"]);
            label16.Text = Convert.ToString(ds.Tables[7].Rows[0]["House_Visit_Cash"]);
            label37.Text = Convert.ToString(ds.Tables[7].Rows[0]["House_Visit_Cheque"]);
            label17.Text = Convert.ToString(ds.Tables[8].Rows[0]["InterestReceived_Cash"]);
            label36.Text = Convert.ToString(ds.Tables[8].Rows[0]["InterestReceived_Cheque"]);
            label19.Text = Convert.ToString(ds.Tables[9].Rows[0]["fixeddeposit_Cash"]);
            label35.Text = Convert.ToString(ds.Tables[9].Rows[0]["fixeddeposit_Cheque"]);
            label73.Text = Convert.ToString(ds.Tables[10].Rows[0]["others_Cash"]);
            label75.Text = Convert.ToString(ds.Tables[10].Rows[0]["others_Cheque"]);
            Validationfieldnum(label22);
            Validationfieldnum(label18);
            Validationfieldnum(label6);
            Validationfieldnum(label43);
            Validationfieldnum(label21);
            Validationfieldnum(label34);
            Validationfieldnum(label5);
            Validationfieldnum(label42);
            Validationfieldnum(label13);
            Validationfieldnum(label40);
            Validationfieldnum(label14);
            Validationfieldnum(label39);
            Validationfieldnum(label15);
            Validationfieldnum(label38);
            Validationfieldnum(label16);
            Validationfieldnum(label37);
            Validationfieldnum(label17);
            Validationfieldnum(label36);
            Validationfieldnum(label19);
            Validationfieldnum(label35);

            Validationfieldnum(label73);
            Validationfieldnum(label75);

            label30.Text = Convert.ToString( Convert.ToDecimal( label22.Text) +Convert.ToDecimal( label18.Text) +Convert.ToDecimal( label6.Text )+Convert.ToDecimal( label43.Text )+Convert.ToDecimal( label21.Text )+ Convert.ToDecimal(label34.Text )+Convert.ToDecimal( label5.Text )+ Convert.ToDecimal(label42.Text )+Convert.ToDecimal( label13.Text )+ Convert.ToDecimal(label40.Text )+Convert.ToDecimal( label14.Text )+Convert.ToDecimal( label39.Text) +Convert.ToDecimal( label15.Text )+Convert.ToDecimal( label38.Text )+Convert.ToDecimal( label16.Text) + Convert.ToDecimal(label37.Text )+Convert.ToDecimal( label17.Text) + Convert.ToDecimal(label36.Text )+ Convert.ToDecimal(label19.Text )+Convert.ToDecimal( label35.Text )+Convert.ToDecimal( label73.Text )+ Convert.ToDecimal(label75.Text));
            label50.Text = Convert.ToString(ds.Tables[11].Rows[0]["rev_salary_cash"]);
            label51.Text = Convert.ToString(ds.Tables[11].Rows[0]["rev_salary_Cheque"]);
            label49.Text = Convert.ToString(ds.Tables[12].Rows[0]["Sexton_salary_cash"]);
            label52.Text = Convert.ToString(ds.Tables[12].Rows[0]["Sexton_salary_Cheque"]);
            label54.Text = Convert.ToString(ds.Tables[13].Rows[0]["rev_house_rent_cash"]);
            label55.Text = Convert.ToString(ds.Tables[13].Rows[0]["rev_house_rent_cheque"]);
            label58.Text = Convert.ToString(ds.Tables[14].Rows[0]["Church_Eb_Tele_Cash"]);
            label57.Text = Convert.ToString(ds.Tables[14].Rows[0]["Church_Eb_Tele_Cheque"]);
            label61.Text = Convert.ToString(ds.Tables[15].Rows[0]["House_Eb_Tele_Cash"]);
            label60.Text = Convert.ToString(ds.Tables[15].Rows[0]["House_Eb_Tele_Cheque"]);
            label64.Text = Convert.ToString(ds.Tables[16].Rows[0]["Printing_cash"]);
            label63.Text = Convert.ToString(ds.Tables[16].Rows[0]["Printing_cheque"]);
            label67.Text = Convert.ToString(ds.Tables[17].Rows[0]["Miscellaneous_cash"]);
            label66.Text = Convert.ToString(ds.Tables[17].Rows[0]["Miscellaneous_cheque"]);
            label72.Text = Convert.ToString(ds.Tables[18].Rows[0]["Fixeddeposit_Cash"]);
            label71.Text = Convert.ToString(ds.Tables[18].Rows[0]["Fixeddeposit_Cheque"]);
            Validationfieldnum(label30);
            Validationfieldnum(label50);
            Validationfieldnum(label51);
            Validationfieldnum(label49);
            Validationfieldnum(label52);
            Validationfieldnum(label54);
            Validationfieldnum(label55);
            Validationfieldnum(label58);
            Validationfieldnum(label57);
            Validationfieldnum(label61);
            Validationfieldnum(label60);
            Validationfieldnum(label64);
            Validationfieldnum(label63);
            Validationfieldnum(label67);
            Validationfieldnum(label66);
            Validationfieldnum(label72);
            Validationfieldnum(label71);
            label68.Text = Convert.ToString(Convert.ToDecimal(label50.Text) + Convert.ToDecimal(label51.Text )+Convert.ToDecimal( label49.Text )+Convert.ToDecimal( label52.Text )+Convert.ToDecimal( label54.Text) + Convert.ToDecimal(label55.Text) + Convert.ToDecimal(label58.Text) + Convert.ToDecimal(label57.Text )+ Convert.ToDecimal(label61.Text )+ Convert.ToDecimal(label60.Text )+ Convert.ToDecimal(label64.Text )+ Convert.ToDecimal(label63.Text )+ Convert.ToDecimal(label67.Text )+Convert.ToDecimal( label66.Text )+ Convert.ToDecimal(label72.Text )+Convert.ToDecimal( label71.Text));
        }

        private void Validationfieldnum(Label labelControl1)
        {
            if (labelControl1.Text=="")
            {
                labelControl1.Text = "0";
            }
        }

    }
}
