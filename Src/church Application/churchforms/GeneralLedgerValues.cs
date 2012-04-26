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
    public partial class GeneralLedgerValues : Form
    {
        public GeneralLedgerValues()
        {
            InitializeComponent();
        }



        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=ChurchApplication;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_Church_GeneralLedgerValues", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@fromdate", Convert.ToDateTime(dateTimePicker2.Text));
            cmd.Parameters.AddWithValue("@todate", Convert.ToDateTime(dateTimePicker3.Text));
            SqlParameter sp = new SqlParameter();
            sp.Direction = ParameterDirection.Output;
            sp.ParameterName = "@ThanksGiving";
            sp.SqlDbType = SqlDbType.Decimal;
            cmd.Parameters.Add(sp);
            SqlParameter sp1 = new SqlParameter();
            sp1.Direction = ParameterDirection.Output;
            sp1.ParameterName = "@SundaySchool";
            sp1.SqlDbType = SqlDbType.Decimal;
            cmd.Parameters.Add(sp1);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();

            label1.Text = Convert.ToString(ds.Tables[0].Rows[0]["MonthlyOffer"]);
            label18.Text = Convert.ToString(ds.Tables[0].Rows[0]["NewBuildingFund"]);
            label13.Text = Convert.ToString(ds.Tables[1].Rows[0]["Sunday_offering"]);
            label15.Text = Convert.ToString(ds.Tables[2].Rows[0]["Birth_Marriage"]);
            label16.Text = Convert.ToString(ds.Tables[3].Rows[0]["House_Visit"]);
            label17.Text = Convert.ToString(ds.Tables[4].Rows[0]["InterestReceived"]);
            label2.Text = Convert.ToString(ds.Tables[5].Rows[0]["Harvest"]);
            label21.Text = Convert.ToString(ds.Tables[6].Rows[0]["sunday_auction"]);
            label22.Text = Convert.ToString(ds.Tables[7].Rows[0]["others"]);
            label3.Text = Convert.ToString(sp.Value);
            label14.Text = Convert.ToString(sp1.Value);
            label19.Text = Convert.ToString(ds.Tables[8].Rows[0]["fixeddeposit"]);
        }
    }
}
