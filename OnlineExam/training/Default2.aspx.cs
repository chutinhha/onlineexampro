using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //char[] a = "72776300000000000401".ToCharArray();
        //int i = Convert.ToInt32(a[a.Length - 1]);
        //if (i != 9)
        //{
        //    i = i + 1;
        //    a[a.Length - 1] = (char)i;
        //}
        //else
        //{
        //    string r = a[a.Length - 1].ToString() + a[a.Length - 2].ToString();
        //    int y = Convert.ToInt32(r);
        //}
        //string aaa = Base36Encode(727763000000000004);
        var a1 = 727763000000000004;
        a1 = a1 + 1;
    }
    public static string Base36Encode(long value)
    {
        char[] base36Chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
        string returnValue = "";
        while (value != 0)
        {
            returnValue = base36Chars[value % base36Chars.Length] + returnValue;
            value /= 36;
        }
        return returnValue;
    }
}