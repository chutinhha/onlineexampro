using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

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