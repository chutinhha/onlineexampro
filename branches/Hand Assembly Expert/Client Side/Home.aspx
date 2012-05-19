<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Src="~/ucImageSlider.ascx" TagName="ucImgaeSlider" TagPrefix="uc2" %>
<%@ Register Src="ucServiceList.ascx" TagName="ucServiceList" TagPrefix="uc1" %>
<%@ Register Src="ucVideoSlider.ascx" TagName="ucVideoSlider" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/style.css" rel="stylesheet" type="text/css" />
    <link href="Style/HomeStyle.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
        function PrintContent() {
            //var DocumentContainer = document.getElementById(‘divPrint’);
            //var WindowObject = window.open('', 'PrintWindow','width=750,height=650,top=50,left=50,toolbars=no,scrollbars=yes,status=no,resizable=yes');
            //WindowObject.document.writeln(DocumentContainer.innerHTML);
            //WindowObject.document.close();
            //WindowObject.focus();
            //WindowObject.print();
            //WindowObject.close();
            window.print();
        }
    </script>
</head>
<body style="background-color: #333300">
    <form id="form1" runat="server">
    <div id="divPrint" align="center">
        <table cellpadding="0" cellspacing="0" width="1000px" align="center" style="background-color: #FFFFFF">
            <tr>
                <td align="center" style="background-color: #CCCCCC">
                    <div>
                        <%--<img src='~/Site Logo/<%=logo[0].Name %>' class="nav-thumb" alt="temp-thumb" height="250px" />--%>
                        <asp:Image ID="Logo" runat="server" ImageUrl="~/SiteLogo/Logo.png" Height="250px" />
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
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td valign="top">
                                <uc2:ucImgaeSlider ID="ucImgaeSlider1" runat="server" />
                            </td>
                            <td valign="top">
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
                <td align="center" style="background-color: #CCCCCC">
                    <table>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
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
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/goto_blog_button.jpg"
                                    Width="157px" Height="69px" />
                                &nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <a href="javascript:window.print()">
                                    <img src="images/Print.jpg" alt="print"></a>&nbsp;&nbsp;&nbsp;
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
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <%for (int i = 0; i < logo.Length; i++)
                              {
                            %>
                            <td width="110px">
                                <img width="100px" height="70px" src="CustomerLogo/<%=logo[i].Name %>" alt="<%=logo[i].Name %>" />
                            </td>
                            <% 
                              } %>
                        </tr>
                        <tr>
                            <td>
                                <br />
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
                                &nbsp; All rights reserved &copy;
                                <%=DateTime.Now.Year %>
                            </td>
                            <td class="subHeadingcontent">
                                No. of visitors:1000
                            </td>
                            <td width="135px">
                                <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                            </td>
                            <td align="left" class="subHeadingcontent">
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Search.png" />
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
