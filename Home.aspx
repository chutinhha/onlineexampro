﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
    <script type="text/javascript" language="javascript">
        function video(a) {

            document.getElementById('asas').src = a;

        }
    </script>
    <script type="text/javascript" language="javascript">
        $(window)._load(function () {
            $("#form1").next().css("display", "none");
        });
    </script>
</head>
<body style="background-image: url('Images/line.png'); background-repeat: repeat-x;">
    <form id="form1" runat="server">
    <table cellpadding="0" cellspacing="0" width="1000px" align="center" style="border: 7px groove #006600;
        background-image: url('Images/line.png'); background-repeat: repeat-x;">
        <tr>
            <td align="center">
                <img alt="logo" src="Images/07-great-green-logos.jpg" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <div id="menu">
                    <ul class="menu">
                        <li><a href="#" class="parent"><span>Home</span></a>
                            <ul>
                                <li><a href="#" class="parent"><span>Sub Item 1</span></a>
                                    <ul>
                                        <li><a href="#" class="parent"><span>Sub Item 1.1</span></a>
                                            <ul>
                                                <li><a href="#"><span>Sub Item 1.1.1</span></a></li>
                                                <li><a href="#"><span>Sub Item 1.1.2</span></a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#"><span>Sub Item 1.2</span></a></li>
                                        <li><a href="#"><span>Sub Item 1.3</span></a></li>
                                        <li><a href="#"><span>Sub Item 1.4</span></a></li>
                                        <li><a href="#"><span>Sub Item 1.5</span></a></li>
                                        <li><a href="#"><span>Sub Item 1.6</span></a></li>
                                        <li><a href="#" class="parent"><span>Sub Item 1.7</span></a>
                                            <ul>
                                                <li><a href="#"><span>Sub Item 1.7.1</span></a></li>
                                                <li><a href="#"><span>Sub Item 1.7.2</span></a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="#"><span>Sub Item 2</span></a></li>
                                <li><a href="#"><span>Sub Item 3</span></a></li>
                            </ul>
                        </li>
                        <li><a href="#" class="parent"><span>Product Info</span></a>
                            <ul>
                                <li><a href="#" class="parent"><span>Sub Item 1</span></a>
                                    <ul>
                                        <li><a href="#"><span>Sub Item 1.1</span></a></li>
                                        <li><a href="#"><span>Sub Item 1.2</span></a></li>
                                    </ul>
                                </li>
                                <li><a href="#" class="parent"><span>Sub Item 2</span></a>
                                    <ul>
                                        <li><a href="#"><span>Sub Item 2.1</span></a></li>
                                        <li><a href="#"><span>Sub Item 2.2</span></a></li>
                                    </ul>
                                </li>
                                <li><a href="#"><span>Sub Item 3</span></a></li>
                                <li><a href="#"><span>Sub Item 4</span></a></li>
                                <li><a href="#"><span>Sub Item 5</span></a></li>
                                <li><a href="#"><span>Sub Item 6</span></a></li>
                                <li><a href="#"><span>Sub Item 7</span></a></li>
                            </ul>
                        </li>
                        <li><a href="#" class="parent"><span>Product Info</span></a>
                            <ul>
                                <li><a href="#" class="parent"><span>Sub Item 1</span></a>
                                    <ul>
                                        <li><a href="#"><span>Sub Item 1.1</span></a></li>
                                        <li><a href="#"><span>Sub Item 1.2</span></a></li>
                                    </ul>
                                </li>
                                <li><a href="#" class="parent"><span>Sub Item 2</span></a>
                                    <ul>
                                        <li><a href="#"><span>Sub Item 2.1</span></a></li>
                                        <li><a href="#"><span>Sub Item 2.2</span></a></li>
                                    </ul>
                                </li>
                                <li><a href="#"><span>Sub Item 3</span></a></li>
                                <li><a href="#"><span>Sub Item 4</span></a></li>
                                <li><a href="#"><span>Sub Item 5</span></a></li>
                                <li><a href="#"><span>Sub Item 6</span></a></li>
                                <li><a href="#"><span>Sub Item 7</span></a></li>
                            </ul>
                        </li>
                        <li><a href="#" class="parent"><span>Product Info</span></a>
                            <ul>
                                <li><a href="#" class="parent"><span>Sub Item 1</span></a>
                                    <ul>
                                        <li><a href="#"><span>Sub Item 1.1</span></a></li>
                                        <li><a href="#"><span>Sub Item 1.2</span></a></li>
                                    </ul>
                                </li>
                                <li><a href="#" class="parent"><span>Sub Item 2</span></a>
                                    <ul>
                                        <li><a href="#"><span>Sub Item 2.1</span></a></li>
                                        <li><a href="#"><span>Sub Item 2.2</span></a></li>
                                    </ul>
                                </li>
                                <li><a href="#"><span>Sub Item 3</span></a></li>
                                <li><a href="#"><span>Sub Item 4</span></a></li>
                                <li><a href="#"><span>Sub Item 5</span></a></li>
                                <li><a href="#"><span>Sub Item 6</span></a></li>
                                <li><a href="#"><span>Sub Item 7</span></a></li>
                            </ul>
                        </li>
                        <li><a href="#"><span>Help</span></a></li>
                        <li class="last"><a href="#"><span>Contacts</span></a></li>
                    </ul>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td align="left" vb>
                <table>
                    <tr>
                        <td>
                            <table style="background-color: #CCCCCC">
                                <tr>
                                    <td align="center" style="font-family: Calibri; font-size: 18px; color: #006600">
                                        Gallery
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="image" src="Images/asasa.jpg" width="200px" height="100px" onclick="javascript:video('http://www.youtube.com/embed/FFuitd30vH4');" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="image" src="Images/gfgrfg.jpg" width="200px" height="100px" onclick="javascript:video('http://www.youtube.com/v/oIlIVFBBbNw?version=3&feature=player_detailpage');" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="image" src="Images/sfgsdf.jpg" width="200px" height="100px" onclick="javascript:video('http://www.youtube.com/v/2Cers3vJcos?version=3&feature=player_detailpage');" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="image" src="Images/fhgdfsg.jpg" width="200px" height="100px" onclick="javascript:video('http://www.youtube.com/v/ZEtS_lN0bdI?version=3&feature=player_detailpage');" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="image" src="Images/fsdfgadfs.jpg" width="200px" height="100px" onclick="javascript:video('http://www.youtube.com/v/s_PbQuV5H2w?version=3&feature=player_detailpage');" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="background-color: #80BC10">
                            <iframe id="asas" width="600px" height="500px" src="http://www.youtube.com/embed/FFuitd30vH4">
                            </iframe>
                        </td>
                        <td>
                            <img alt="asasddf" src="Images/banner.png" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td style="background-color: #006600; font-family: Calibri; font-size: 14px;" align="center">
                All Rights Recevied &copy;&nbsp;2012
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
