<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Src="ucServiceList.ascx" TagName="ucServiceList" TagPrefix="uc1" %>
<%@ Register Src="ucImgaeSlider.ascx" TagName="ucImgaeSlider" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/HomeStyle.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
        function PrintContent() {
            var DocumentContainer = document.getElementById('divPrint');
            var WindowObject = window.open('', 'PrintWindow', 'width=750,height=650,top=50,left=50,toolbars=no,scrollbars=yes,status=no,resizable=yes');
            WindowObject.document.writeln(DocumentContainer.innerHTML);
            WindowObject.document.close();
            WindowObject.focus();
            WindowObject.print();
            WindowObject.close();
        }
    </script>
</head>
<body style="background-color: #333300">
    <form id="form1" runat="server">
    <div id="divPrint" align="center">
        <table cellpadding="0" cellspacing="0" width="980px" align="center" style="background-color: #FFFFFF">
            <tr>
                <td align="center" style="background-color: #CCCCCC">
                    <asp:Image ID="Logo" runat="server" ImageUrl="~/Image/Logo.png" Height="250px" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <table cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td width="50%" align="center" valign="top">
                                <table cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td valign="top">
                                            <div>
                                                <uc2:ucImgaeSlider ID="ucImgaeSlider1" runat="server" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="SubHeading">
                                            <asp:Label ID="Label1" runat="server" Text="Image Slider"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="background-color: #CCCCCC">
                                            <table>
                                                <tr>
                                                    <td width="100px">
                                                    </td>
                                                    <td>
                                                        <table cellpadding="0" cellspacing="0">
                                                            <tr>
                                                                <td>
                                                                    <asp:Image ID="Image9" runat="server" Width="50px" Height="50px" ImageUrl="~/Image/brights_icon_50x50.gif" />
                                                                </td>
                                                                <td width="10px">
                                                                </td>
                                                                <td>
                                                                    <asp:Image ID="Image10" runat="server" Width="50px" Height="50px" ImageUrl="~/Image/brights_icon_50x50.gif" />
                                                                </td>
                                                                <td width="10px">
                                                                </td>
                                                                <td>
                                                                    <asp:Image ID="Image11" runat="server" Width="50px" Height="50px" ImageUrl="~/Image/brights_icon_50x50.gif" />
                                                                </td>
                                                                <td width="10px">
                                                                </td>
                                                                <td>
                                                                    <asp:Image ID="Image12" runat="server" Width="50px" Height="50px" ImageUrl="~/Image/brights_icon_50x50.gif" />
                                                                </td>
                                                                <td width="10px">
                                                                </td>
                                                                <td>
                                                                    <asp:Image ID="Image13" runat="server" Width="50px" Height="50px" ImageUrl="~/Image/brights_icon_50x50.gif" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="50%" align="center">
                                <table cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td align="center">
                                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/coda-slider.png" Height="250px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="SubHeading">
                                            <asp:Label ID="Label2" runat="server" Text="Video Slider"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="background-color: #CCCCCC">
                                            <table>
                                                <tr>
                                                    <td width="100px">
                                                    </td>
                                                    <td>
                                                        <table cellpadding="0" cellspacing="0">
                                                            <tr>
                                                                <td>
                                                                    <asp:Image ID="Image14" runat="server" Width="50px" Height="50px" ImageUrl="~/Image/image_preview.jpg" />
                                                                </td>
                                                                <td width="10px">
                                                                </td>
                                                                <td>
                                                                    <asp:Image ID="Image15" runat="server" Width="50px" Height="50px" ImageUrl="~/Image/image_preview.jpg" />
                                                                </td>
                                                                <td width="10px">
                                                                </td>
                                                                <td>
                                                                    <asp:Image ID="Image16" runat="server" Width="50px" Height="50px" ImageUrl="~/Image/image_preview.jpg" />
                                                                </td>
                                                                <td width="10px">
                                                                </td>
                                                                <td>
                                                                    <asp:Image ID="Image17" runat="server" Width="50px" Height="50px" ImageUrl="~/Image/image_preview.jpg" />
                                                                </td>
                                                                <td width="10px">
                                                                </td>
                                                                <td>
                                                                    <asp:Image ID="Image18" runat="server" Width="50px" Height="50px" ImageUrl="~/Image/image_preview.jpg" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
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
                <td>
                    <asp:DataList ID="dlServiceList" runat="server" RepeatColumns="4" CellPadding="5"
                        CellSpacing="5" OnLoad="dlServiceList_Load">
                        <ItemTemplate>
                            <uc1:ucServiceList ID="ucServiceList1" runat="server" />
                        </ItemTemplate>
                    </asp:DataList>
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
                                <asp:ImageButton ID="Image3" ImageUrl="~/Image/Print.jpg" runat="server" />&nbsp;&nbsp;&nbsp;
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
