﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Src="~/ucImgaeSlider.ascx" TagName="ucImgaeSlider" TagPrefix="uc2" %>
<%@ Register Src="ucServiceList.ascx" TagName="ucServiceList" TagPrefix="uc1" %>
<%@ Register Src="ucVideoSlider.ascx" TagName="ucVideoSlider" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="Style/HomeStyle.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
        function printDiv() {
            window.print();
        }
    </script>
</head>
<body style="background-color: #333300">
    <form id="form1" runat="server">
    <div id="divPrint" align="center">
        <table cellpadding="0" cellspacing="0" width="980px" align="center" style="background-color: #FFFFFF">
            <tr>
                <td align="center" style="background-color: #CCCCCC">
                    <div>
                        <%--<img src='~/Site Logo/<%=logo[0].Name %>' class="nav-thumb" alt="temp-thumb" height="250px" />--%>
                        <asp:Image ID="Logo" runat="server" ImageUrl="~/Image/Logo.png" Height="250px" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <table cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td width="50%" align="center">
                                <table cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td>
                                            <div>
                                                <uc2:ucImgaeSlider ID="ucImgaeSlider1" runat="server" />
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="50%" align="center">
                                <uc3:ucVideoSlider ID="ucVideoSlider1" runat="server" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="Heading">
                <td>
                    Service List:
                </td>
            </tr>
            <tr>
                <td align="center">
                    <table>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td id="dd">
                                <uc1:ucServiceList ID="ucServiceList1" runat="server" />
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
                <td align="right" valign="middle">
                    <table>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/goto_blog_button.jpg"
                                    Width="157px" Height="69px" />
                                &nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <input id="Button1" type="button" onclick="printDiv()" value="button" />
                                <asp:ImageButton ID="Image3" ImageUrl="~/Image/Print.jpg" runat="server" OnClick="Image3_Click" />&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="Heading">
                    Company Address:
                </td>
            </tr>
            <tr>
                <td class="subHeadingcontent" style="background-color: #CCCCCC">
                    &nbsp;&nbsp; 5595 Finch Ave E,<br />
                    &nbsp;&nbsp; Unit 1 Scarborough,<br />
                    &nbsp;&nbsp; ON. M1B 2T9.<br />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="Heading">
                    Customer Logo:
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">
                    <table cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td>
                                <asp:Image ID="Image4" runat="server" Width="196px" Height="200px" ImageUrl="~/Image/customer-promise-logo.jpg" />
                            </td>
                            <td>
                                <asp:Image ID="Image5" runat="server" Width="196px" Height="200px" ImageUrl="~/Image/customer-promise-logo.jpg" />
                            </td>
                            <td>
                                <asp:Image ID="Image6" runat="server" Width="196px" Height="200px" ImageUrl="~/Image/customer-promise-logo.jpg" />
                            </td>
                            <td>
                                <asp:Image ID="Image7" runat="server" Width="196px" Height="200px" ImageUrl="~/Image/customer-promise-logo.jpg" />
                            </td>
                            <td>
                                <asp:Image ID="Image8" runat="server" Width="196px" Height="200px" ImageUrl="~/Image/customer-promise-logo.jpg" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">
                    <table cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td class="subHeadingcontent">
                                &nbsp; All rights reserved &copy; 2012
                            </td>
                            <td class="subHeadingcontent">
                                No. of visitors:1000
                            </td>
                            <td width="135px">
                                <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                            </td>
                            <td align="left" class="subHeadingcontent">
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/Search.png" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
