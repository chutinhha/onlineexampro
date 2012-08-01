using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

public partial class Address : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (string.IsNullOrEmpty(Convert.ToString(Session["Email"])))
            {
                ModalPopupExtender md = (ModalPopupExtender)((UserControl)Page.Master.FindControl("ucLoginandLogout1")).FindControl("mdlLogin");
                md.Show();
                Response.Redirect("Home.aspx");
            }
            else
            {
                string[] email = (Convert.ToString(Session["Email"])).Split('|');
                int customer_id = InfinitiHelper.Context.Infiniti_CustomerRegistrations.Where(a => a.Email == Convert.ToString(email[0])).Select(a => a.Customer_id).First();
                ViewState["customer_id"] = customer_id;
                var getBillingAddress = InfinitiHelper.Context.Infiniti_Billing_Addresses.Where(a => a.fk_Customerid == customer_id).Select(a => a);
                var getShipingAddress = InfinitiHelper.Context.Infiniti_Shipping_Addresses.Where(a => a.fk_Customerid == customer_id).Select(a => a);
                foreach (var item in getBillingAddress)
                {
                    TextBox1.Text = item.bil_Name;
                    TextBox2.Text = item.bill_Address;
                    TextBox3.Text = Convert.ToString(item.bill_zipcode);
                    TextBox4.Text = item.bill_City;
                    TextBox7.Text = item.bill_Mail;
                    TextBox6.Text = Convert.ToString(item.bill_Phone);
                }
                foreach (var item in getShipingAddress)
                {
                    TextBox5.Text = item.ship_Name;
                    TextBox8.Text = item.ship_Address;
                    TextBox9.Text = Convert.ToString(item.ship_Zipcode);
                    TextBox10.Text = item.ship_City;
                    TextBox11.Text = item.ship_Mail;
                    TextBox12.Text = Convert.ToString(item.ship_Phone);
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ecommerce_Billing_AddressBL obj = new ecommerce_Billing_AddressBL(TextBox1.Text, TextBox2.Text, Convert.ToInt32(TextBox3.Text), TextBox4.Text, 1, 1, TextBox7.Text, Convert.ToInt64(TextBox6.Text), Convert.ToInt32(ViewState["customer_id"]));
        obj.Insert();
        ecommerce_Shipping_AddressBL obj1 = new ecommerce_Shipping_AddressBL(TextBox5.Text, TextBox8.Text, Convert.ToInt32(TextBox9.Text), TextBox10.Text, 1, 1, TextBox11.Text, Convert.ToInt64(TextBox12.Text), Convert.ToInt32(ViewState["customer_id"]));
        obj1.Insert();
    }
}