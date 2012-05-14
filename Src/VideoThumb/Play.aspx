<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Play.aspx.cs" Inherits="Play" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Play</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   <div>
   Generated Thumbnail:<br />
    <img src="Video/Thumb/Eati1.jpg" />
   </div>
    <div>
    Video:<br />
    <embed src="Players/flvplayer.swf" width="425" height="355"
           bgcolor="#FFFFFF" type="application/x-shockwave-flash"
           pluginspage="http://www.macromedia.com/go/getflashplayer"
           flashvars="file=Video/SWF/Eati.swf&autostart=false&frontcolor=0xCCCCCC&backcolor=0x000000&lightcolor=0x996600&showdownload=false&showeq=false&repeat=false&volume=100&useaudio=false&usecaptions=false&usefullscreen=true&usekeys=true"></embed>
    </div>
       
    </form>
</body>
</html>
