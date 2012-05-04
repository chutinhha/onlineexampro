using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CountryStateCity
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private SqlConnection conn = new SqlConnection("Data source=.; uid=sa; pwd=Password$2; database=CountryStateCity");

        public void Bind_ddlCountry()
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand("select County,CountryId from Country", conn);

            SqlDataReader dr = cmd.ExecuteReader();

            ddlcountry.DataSource = dr;

            ddlcountry.Items.Clear();

            ddlcountry.Items.Add("--Please Select country--");

            ddlcountry.DataTextField = "County";

            ddlcountry.DataValueField = "CountryId";

            ddlcountry.DataBind();

            conn.Close();

        }

        public void Bind_ddlState()
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand("select State,StateID from countryState where CountryId='" + ddlcountry.SelectedValue + "'", conn);

            SqlDataReader dr = cmd.ExecuteReader();

            ddlstate.DataSource = dr;

            ddlstate.Items.Clear();

            ddlstate.Items.Add("--Please Select state--");

            ddlstate.DataTextField = "State";

            ddlstate.DataValueField = "StateID";

            ddlstate.DataBind();

            conn.Close();

        }

        public void Bind_ddlCity()
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand("select * from stateCity where StateId ='" + ddlstate.SelectedValue + "'", conn);

            SqlDataReader dr = cmd.ExecuteReader();

            ddlcity.DataSource = dr;

            ddlcity.Items.Clear();

            ddlcity.Items.Add("--Please Select city--");

            ddlcity.DataTextField = "City";

            ddlcity.DataValueField = "CityID";

            ddlcity.DataBind();

            conn.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Bind_ddlCountry();

            }
        }

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            Bind_ddlState();
        }

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            Bind_ddlCity();

        }
    }

}