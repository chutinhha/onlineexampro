using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for Common
/// </summary>
public class Common
{
    public Common()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static void Clear(Page pge)
    {
        foreach (Control item in pge.Controls)
        {
            if (item.HasControls())
            {
                foreach (Control item1 in item.Controls)
                {
                    if (item1 is TextBox)
                    {
                        TextBox txt = (TextBox)item1;
                        txt.Text = string.Empty;
                    }
                }
            }
        }
    }
}