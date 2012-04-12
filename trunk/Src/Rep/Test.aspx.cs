using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Xml.Linq;

using Subgurim.Controles;


public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GMap1.addControl(new GControl(GControl.preBuilt.GOverviewMapControl));

        GMap1.addControl(new GControl(GControl.preBuilt.LargeMapControl));

        GMarker marker = new GMarker(new GLatLng(39.5, -3.2));
        GInfoWindow window = new GInfoWindow(marker, "<center><b>GoogleMaps.Subgurim.NET</b></center>", true);
        GMap1.addInfoWindow(window); 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        IPAddress[] ip = Dns.GetHostAddresses(TextBox1.Text);
        TextBox2.Text = ip[0].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        LocationInfo location = HostIpToLocation(TextBox2.Text);
        lblcity.Text = location.CityName;
        lblCountryCode.Text = location.CountryCode;
        lblcountryname.Text = location.CountryName;
        lbldstoffset.Text = location.Timezone.Dstoffset.ToString();
        lblgmtoffset.Text = location.Timezone.Gmtoffset.ToString();
        lblIP.Text = TextBox2.Text;
        lblisdst.Text ="";
        lbllatitude.Text = location.Position.Latitude.ToString();
        lbllongitude.Text = location.Position.Longitude.ToString();
        lblregioncode.Text = "";
        lblregionname.Text = location.RegionName;
        lbltimezonename.Text = location.Timezone.TimezoneName;
        lblzippostalcode.Text = location.ZipPostalCode;
    }

    private static LocationInfo HostIpToLocation(string ip)
    {
        string url = "http://api.ipinfodb.com/v2/ip_query.php?key={0}&ip={1}&timezone=true";
        //string url = "http://whatismyipaddress.com/ip/{0}";

        url = String.Format(url, "be6194c9d46a295256e1695bd5338bbe1a6c36ef013f8344fb9e10d1b83e8485", ip);
        //url = String.Format(url, ip);

        HttpWebRequest httpWRequest = (HttpWebRequest)WebRequest.Create(url);
        using (HttpWebResponse httpWResponse = (HttpWebResponse)httpWRequest.GetResponse())
        {
            var result = XDocument.Load(httpWResponse.GetResponseStream());

            var location = (from x in result.Descendants("Response")
                            select new LocationInfo
                            {
                                CountryCode = (string)x.Element("CountryCode"),
                                CountryName = (string)x.Element("CountryName"),
                                RegionName = (string)x.Element("RegionName"),
                                CityName = (string)x.Element("City"),
                                ZipPostalCode = (string)x.Element("ZipPostalCode"),
                                Timezone = new TimezoneInfo
                                {
                                    TimezoneName = (string)x.Element("TimezoneName"),
                                    Gmtoffset = (float)x.Element("Gmtoffset"),
                                    Dstoffset = (bool)x.Element("Dstoffset")
                                },
                                Position = new LatLongInfo
                                {
                                    Latitude = (float)x.Element("Latitude"),
                                    Longitude = (float)x.Element("Longitude")
                                }
                            }).First();

            return location;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = Dns.GetHostEntry(TextBox2.Text).HostName;
    }
}
public class LatLongInfo
{
    public float Latitude { get; set; }
    public float Longitude { get; set; }
}
public class TimezoneInfo
{
    public string TimezoneName { get; set; }
    public float Gmtoffset { get; set; }
    public bool Dstoffset { get; set; }
}
public class LocationInfo
{
    public string CountryCode { get; set; }
    public string CountryName { get; set; }
    public string RegionName { get; set; }
    public string CityName { get; set; }
    public string ZipPostalCode { get; set; }
    public TimezoneInfo Timezone { get; set; }
    public LatLongInfo Position { get; set; }
}