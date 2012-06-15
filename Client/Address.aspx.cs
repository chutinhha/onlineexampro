using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Address : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Photo_Billing_AddressBL obj = new Photo_Billing_AddressBL(Convert.ToInt32(TextBox9.Text), 1, 1, TextBox5.Text, TextBox8.Text, TextBox10.Text, TextBox11.Text, Convert.ToInt64(TextBox12.Text));
        obj.Insert();
        Photo_Shipping_AddressBL obj1 = new Photo_Shipping_AddressBL(TextBox1.Text, TextBox2.Text, Convert.ToInt32(TextBox3.Text), 1, 1, TextBox4.Text, TextBox7.Text, Convert.ToInt64(TextBox6.Text));
        obj1.Insert();
    }
}