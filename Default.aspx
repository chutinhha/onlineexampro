<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div id="gallery">
        <div id="imagearea">
            <div id="image">
                <a href="javascript:slideShow.nav(-1)" class="imgnav " id="previmg"></a><a href="javascript:slideShow.nav(1)"
                    class="imgnav " id="nextimg"></a>
                <img alt="asd" id="1" style="opacity: 1;" src="fullsize/1.jpg"/></div>
        </div>
        <div id="thumbwrapper">
            <div id="thumbarea">
                <ul id="thumbs" style="left: -243px;">
                    <li value="1">
                        <img src="thumbs/1.jpg" width="179" height="100" alt=""/></li>
                    <li value="2">
                        <img src="thumbs/2.jpg" width="179" height="100" alt=""/></li>
                    <li value="3">
                        <img src="thumbs/3.jpg" width="179" height="100" alt=""/></li>
                    <li value="4">
                        <img src="thumbs/4.jpg" width="179" height="100" alt=""/></li>
                    <li value="5">
                        <img src="thumbs/5.jpg" width="179" height="100" alt=""/></li>
                </ul>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        var imgid = 'image';
        var imgdir = 'fullsize';
        var imgext = '.jpg';
        var thumbid = 'thumbs';
        var auto = true;
        var autodelay = 5;
    </script>
    <script type="text/javascript" src="slide.js"></script>
    </form>
</body>
</html>
