<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Result" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://maps.google.com/maps?file=api&v=2&key=ABQIAAAA7j_Q-rshuWkc8HyFI4V2HxQYPm-xtd00hTQOC0OXpAMO40FHAxT29dNBGfxqMPq5zwdeiDSHEPL89A"
        type="text/javascript"></script>
    <script type="text/javascript">
        var geocoder, location1, location2;
        function initialize() {
            geocoder = new GClientGeocoder();
        }
        function showLocation() {
            var ad1 = document.getElementById('<%=HiddenField1.ClientID%>');
            geocoder.getLocations(ad1.value, function (response) {
                if (!response || response.Status.code != 200) {
                    alert("Sorry, we were unable to geocode the first address");
                }
                else {
                    location1 = { lat: response.Placemark[0].Point.coordinates[1], lon: response.Placemark[0].Point.coordinates[0], address: response.Placemark[0].address };
                    var ad2 = document.getElementById('<%=HiddenField2.ClientID%>');
                    geocoder.getLocations(ad2.value, function (response) {
                        if (!response || response.Status.code != 200) {
                            alert("Sorry, we were unable to geocode the second address");
                        }
                        else {
                            location2 = { lat: response.Placemark[0].Point.coordinates[1], lon: response.Placemark[0].Point.coordinates[0], address: response.Placemark[0].address };
                            calculateDistance();
                        }
                    });
                }
            });
        }
        function calculateDistance() {
            try {
                var glatlng1 = new GLatLng(location1.lat, location1.lon);
                var glatlng2 = new GLatLng(location2.lat, location2.lon);
                var miledistance = glatlng1.distanceFrom(glatlng2, 3959).toFixed(1);
                var kmdistance = (miledistance * 1.609344).toFixed(1);

                document.getElementById('results').innerHTML = '<strong>Distance: </strong>' + miledistance + ' miles (or ' + kmdistance + ' kilometers)';
            }
            catch (error) {
                alert(error);
            }
        }
    </script>
</head>
<body onload="initialize()">
    <form action="#" onsubmit="showLocation(); return false;" id="form1" runat="server">
    <div>
        <p>
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <asp:HiddenField ID="HiddenField2" runat="server" />
            <input type="submit" name="find" value="Search" />
        </p>
    </div>
    </form>
    <p id="results">
    </p>
</body>
</html>
