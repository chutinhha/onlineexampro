using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class Check : System.Web.UI.Page
{
    #region init settings
    // player width
    private int _W = 640;

    // player height
    private int _H = 505;

    // autoplay disabled
    bool auto = false;
    #endregion

    #region Page Load event
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            #region Start mode customization via Web Query String
            int idx = 0;
            string qry = "";

            // Web Query to set autoplay option
            try
            {
                qry = "auto";
                qry = (Request.QueryString[qry] == null) ? "" : Request.QueryString[qry];
                if (qry != "") { auto = Boolean.Parse(qry); }
            }
            catch { }

            // Web Query to set item index
            try
            {
                qry = "item";
                qry = (Request.QueryString[qry] == null) ? "" : Request.QueryString[qry];
                if (qry != "") { idx = int.Parse(qry); }
            }
            catch { }
            #endregion

            // set selected index
            cmbPlaylist.SelectedIndex = idx;

            // generate script on page load
            Literal1.Text = YouTubeScript.Get(cmbPlaylist.SelectedValue, auto, _W, _H);
        }
        else
        {
            // generate script on page postback
            Literal1.Text = YouTubeScript.Get(cmbPlaylist.SelectedValue, false, _W, _H);
        }
    }
    #endregion

    #region User events
    /// <summary>
    /// Script to start video at predefined time, change border color
    /// </summary>
    protected void Button1_Click(object sender, EventArgs e)
    {
        // set start time = 15 sec, change border colors
        Literal1.Text =
        YouTubeScript.Get(cmbPlaylist.SelectedValue, true,
        _W, _H, true, "maroon", "", 15);
    }

    /// <summary>
    /// Script to start video at predefined time, remove border
    /// </summary>
    protected void Button2_Click(object sender, EventArgs e)
    {
        // set start time = 60 sec, remove border
        Literal1.Text =
        YouTubeScript.Get(cmbPlaylist.SelectedValue, true,
        _W, _H, false, "", "", 60);
    }
    #endregion
}
public static class YouTubeScript
{
    #region YouTube Player default script: no autoplay, 320x240
    /// <summary>
    /// YouTube Player default script: no autoplay, 320x240
    /// </summary>
    /// <param name="id">id</param>
    /// <param name="auto">int</param>
    /// <returns>string</returns>
    public static string Get(string id)
    { return Get(id, false, 320, 240); }
    #endregion

    #region YouTube Player script w/autoplay option (320x240)
    /// <summary>
    /// YouTube Player script w/autoplay option (320x240)
    /// </summary>
    /// <param name="id">id</param>
    /// <param name="auto">bool</param>
    /// <returns>string</returns>
    public static string Get(string id, bool auto)
    { return Get(id, auto, 320, 240); }
    #endregion

    #region YouTube Player script w/autoplay option (320x240)
    /// <summary>
    /// YouTube Player script w/autoplay option (320x240)
    /// </summary>
    /// <param name="id">id</param>
    /// <param name="auto">int</param>
    /// <returns>string</returns>
    public static string Get(string id, int auto)
    { return Get(id, ((auto == 1) ? true : false), 320, 240); }
    #endregion

    #region YouTube Player script w/selectable: autoplay and W/H
    /// <summary>
    /// YouTube Player script w/selectable: autoplay and W/H options
    /// </summary>
    /// <param name="id">id</param>
    /// <param name="auto">bool</param>
    /// <param name="W">int</param>
    /// <param name="H">int</param>
    /// <returns>string</returns>
    public static string Get(string id, bool auto, int W, int H)
    { return Get(id, auto, W, H, true); }
    #endregion

    #region YouTube Player script w/selectable: autoplay, W/H and default border
    /// <summary>
    /// YouTube Player script w/selectable: autoplay, W/H, default border color 
    /// </summary>
    /// <param name="id">id</param>
    /// <param name="auto">bool</param>
    /// <param name="W">int</param>
    /// <param name="H">int</param>
    /// <param name="Border">bool</param>
    /// <returns>string</returns>
    public static string Get(string id, bool auto, int W, int H, bool Border)
    { return Get(id, auto, W, H, Border, "0x2b405b", "0x6b8ab6", 0); }
    #endregion

    #region YouTube Player script w/selectable: autoplay, W/H and border color
    /// <summary>
    /// YouTube Player script w/selectable: autoplay, W/H and border color
    /// </summary>
    /// <param name="id">id</param>
    /// <param name="auto">bool</param>
    /// <param name="W">int</param>
    /// <param name="H">int</param>
    /// <param name="Border">bool</param>
    /// <param name="C1">string</param>
    /// <param name="C2">string</param>
    /// <returns>string</returns>
    public static string Get
            (string id,
            bool auto,
            int W,
            int H,
            string C1,
            string C2)
    { return Get(id, auto, W, H, true, C1, C2, 0); }
    #endregion

    #region YouTube Player script w/selectable: autoplay, W/H and border color
    /// <summary>
    /// YouTube Player script w/selectable: autoplay, W/H and border color
    /// </summary>
    /// <param name="id">id</param>
    /// <param name="auto">bool</param>
    /// <param name="W">int</param>
    /// <param name="H">int</param>
    /// <param name="Border">bool</param>
    /// <param name="C1">string</param>
    /// <param name="C2">string</param>
    /// <returns>string</returns>
    public static string Get
            (string id,
            bool auto,
            int W,
            int H,
            bool Border,
            string C1,
            string C2,
            int Start)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append(@"<embed src='http://www.youtube.com/v/");

        // select the youTube item to play
        sb.Append(id);

        // set autoplay options (indicates number of plays)
        if (auto) sb.Append("&autoplay=1");

        // no related items to display
        sb.Append("&rel=0");

        // set border color 1 and 2
        if (Border)
        {
            sb.Append("&border=1");
            sb.Append("&color1=" + @C1);
            sb.Append("&color2=" + @C2);
        }

        // start position
        if (Start > 0) sb.Append("&start=" + Start.ToString());

        // allow full screen
        sb.Append("&fs=1");

        // closing single quote after parameter list
        sb.Append("' ");


        sb.Append("type='application/x-shockwave-flash' ");

        // add id
        sb.Append("id='youTubePlayer" + DateTime.Now.Millisecond.ToString() + "' ");
        sb.Append("allowscriptaccess='never' enableJavascript ='false' ");

        // set parameters: allowfullscreen
        sb.Append("allowfullscreen='true' ");

        // set width
        sb.Append("width='" + W.ToString() + "' ");

        // set height
        sb.Append("height='" + H.ToString() + "' ");

        sb.Append(@"></embed>");

        // get final script
        string scr = sb.ToString();

        sb = null;
        return scr;
    }
    #endregion
}