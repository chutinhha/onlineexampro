using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Net;
using System.IO;
using LepiPele.PayPal.PDT;

public partial class PaymentSuccess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            var authToken = WebConfigurationManager.AppSettings["PDTToken"];

            //read in txn token from querystring
            var txToken = Request.QueryString.Get("tx");


            var query = string.Format("cmd=_notify-synch&tx={0}&at={1}", txToken, authToken);

            // Create the request back
            string url = WebConfigurationManager.AppSettings["PayPalSubmitUrl"];
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(url);

            // Set values for the request back
            req.Method = "POST";
            req.ContentType = "application/x-www-form-urlencoded";
            req.ContentLength = query.Length;

            // Write the request back IPN strings
            StreamWriter stOut = new StreamWriter(req.GetRequestStream(),
                                     System.Text.Encoding.ASCII);
            stOut.Write(query);
            stOut.Close();

            // Do the request to PayPal and get the response
            StreamReader stIn = new StreamReader(req.GetResponse().GetResponseStream());
            var strResponse = stIn.ReadToEnd();
            stIn.Close();

            // sanity check
            //Label2.Text = strResponse;

            // If response was SUCCESS, parse response string and output details
            if (strResponse.StartsWith("SUCCESS"))
            {
                PDTHolder pdt = PDTHolder.Parse(strResponse);
                //Label1.Text =
                //    string.Format("Thank you {0} {1} [{2}] for your payment of {3} {4}!",
                //    pdt.PayerFirstName, pdt.PayerLastName,
                //    pdt.PayerEmail, pdt.GrossTotal, pdt.Currency);
            }
            else
            {
                //Label1.Text = "Oooops, something went wrong...";
            }
        }
    }
}