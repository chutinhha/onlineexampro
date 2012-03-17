<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MapTest1.aspx.cs" Inherits="MapTest1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
        html
        {
            height: 100%;
        }
        body
        {
            height: 100%;
            margin: 0;
            padding: 0;
        }
        #map_canvas
        {
            height: 100%;
        }
    </style>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyC9WCXddEQjikGQo7IfbItcTgfiIhPm50E&sensor=false">
    </script>
    <script type="text/javascript">
        function initialize() {
            var myOptions = {
                center: new google.maps.LatLng(-34.397, 150.644),
                zoom: 8,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("map_canvas"),
            myOptions);
        }
    </script>
</head>
<body onload="initialize()">
    <form id="form1" runat="server">
    <div id="map_canvas" style="width: 100%; height: 100%">
    </div>
    </form>
</body>
</html>
