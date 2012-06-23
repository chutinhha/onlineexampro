<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="Home" %>

<%@ Register Src="~/ucImageSlider.ascx" TagName="ucImgaeSlider" TagPrefix="uc2" %>
<%@ Register Src="~/ucServiceList.ascx" TagName="ucServiceList" TagPrefix="uc1" %>
<%@ Register Src="~/ucVideo.ascx" TagName="ucVideoSlider" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/style.css" rel="stylesheet" type="text/css" />
    <link href="Style/HomeStyle.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
        function PrintContent() {
            var printdata = document.getElementById("<%= divPrint.ClientID%>");
            if (/Opera[\/\s](\d+\.\d+)/.test(navigator.userAgent)) {

                var mywindow = window.open('', 'PrintPreview', 'width=750,top=25,left=25,toolbars=no,scrollbars=yes,status=no,resizable=yes');
                mywindow.document.write(printdata.innerHTML);
                mywindow.focus();
                mywindow.print();
            }

            else {
                var mywindow1 = window.open('', 'PrintPreview', 'width=750,height=500,top=25,left=25,toolbars=no,scrollbars=yes,status=no,resizable=yes');
                mywindow1.document.write(printdata.innerHTML);
                mywindow1.document.close();
                mywindow1.focus();
                //mywindow1.moveTo(300, 200);
                mywindow1.print();
                mywindow1.close();
            }
        }
    </script>
</head>
<body style="background-color: #333300">
    <form id="form1" runat="server">
    <div align="center">
        <table cellpadding="0" cellspacing="0" width="1000px" align="center" style="background-color: #FFFFFF">
            <tr>
                <td align="center" style="background-color: #CCCCCC">
                    <div>
                        <%--<img src='~/Site Logo/<%=logo[0].Name %>' class="nav-thumb" alt="temp-thumb" height="250px" />--%>
                        <%for (int i = 0; i < Sitelogo.Length; i++)
                          {
                        %>
                        <img src="SiteLogo/<%=Sitelogo[i].Name %>" height="473px" width="588px" alt="<%=Sitelogo[i].Name %>" />
                        <%} %>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <%-- <cc1:AlwaysVisibleControlExtender ID="ace" runat="server" TargetControlID="hgfg"
                VerticalSide="Middle" HorizontalSide="Right" HorizontalOffset="50" />--%>
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
            <tr class="Heading" align="center" style="font-size: 28px">
                <td align="center">
                    <table>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                Service List
                            </td>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:ImageButton ID="btnPrint" runat="server" ImageUrl="~/images/Print.jpg" OnClientClick="javascript:PrintContent();"
                                    Width="26px" heigth="21px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" style="background-color: #CCCCCC">
                    <table>
                        <tr>
                            <td style="font-family: Calibri; font-size: 24px; visibility: collapse; overflow: auto;"
                                colspan="2" align="center">
                                Service List
                            </td>
                        </tr>
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
                            <td style="text-decoration: blink; font-family: Calibri; font-size: 18px; font-weight: bold"
                                align="center">
                                <table>
                                    <tr>
                                        <td>
                                            WHAT'S NEW...
                                        </td>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/goto_blog_button.jpg"
                                    Width="157px" Height="69px" />
                                &nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="Heading" align="center">
                    Company Address:
                </td>
            </tr>
            <tr>
                <td class="subHeadingcontent" style="background-color: #CCCCCC" align="center">
                    <table>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                            <td>
                                The Hand Assembly Experts<br />
                                &nbsp;&nbsp; 5595 Finch Ave E, Unit 1.<br />
                                Scarborough, ON. M1B-2T9<br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" style="background-color: #CCCCCC">
                    <table>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                            <td class="subHeadingcontent" align="center">
                                Tel: 416 572-5222 Fax: 416 609-0670<br />
                                Email- <a href="mailto:burl@pppcorp.ca">burl@pppcorp.ca</a>
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
                                <table>
                                    <tr>
                                        <td>
                                            No. of visitors:
                                        </td>
                                        <td>
                                            <img alt="metter" src="images/Metter.png" />
                                        </td>
                                    </tr>
                                </table>
                                <%-- No. of visitors:<%=Application["myCount"]%>--%>
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
      <%--      <tr>
                <td>
                    <table id="hgfg" runat="server">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/face.gif" AlternateText="face book" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/twitter.gif"
                                    AlternateText="twitter" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/in.gif" AlternateText="Linkedin" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>--%>
        </table>
        <div id="divPrint" runat="server" style="display: none">
            <table cellpadding="0" cellspacing="0" width="1000px" align="center" style="background-color: #FFFFFF;">
                <tr>
                    <td style="font-family: Calibri; font-size: 24px; overflow: auto;" colspan="2" align="center">
                        Service List
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <uc1:ucServiceList ID="ucServiceList2" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    The Hand Assembly Experts<br />
                                    5595 Finch Ave E, Unit 1.<br />
                                    Scarborough, ON. M1B-2T9<br />
                                    Tel: 416 572-5222 Fax: 416 609-0670<br />
                                    Email- <a href="mailto:burl@pppcorp.ca">burl@pppcorp.ca</a>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
