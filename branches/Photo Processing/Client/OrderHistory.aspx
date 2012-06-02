<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="OrderHistory.aspx.cs" Inherits="OrderHistory" %>

<%@ Register Src="ucSideMenu.ascx" TagName="ucSideMenu" TagPrefix="uc1" %>
<%--<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Style/BackColorStyleSheet.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        var divSelected = null;
        function SelectOrUnSelect(x) {
            if (divSelected != null) divSelected.className = 'otherbackcolor';
            divSelected = document.getElementById(x);
            document.getElementById(x).className = 'currentbackcolor';
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td valign="top" width="15%">
                <uc1:ucSideMenu ID="ucSideMenu1" runat="server" />
            </td>
            <td valign="top" width="85%">
                <table>
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td>
                                        <div id="t1" class="otherbackcolor">
                                            1. UPLOAD PHOTOS
                                        </div>
                                    </td>
                                    <td>
                                        <div id="t2" class="otherbackcolor">
                                            2. CHOOSE LEVEL OF SERVICE
                                        </div>
                                    </td>
                                    <td>
                                        <div id="t3" class="currentbackcolor">
                                            3. ORDER SUMMARY
                                        </div>
                                    </td>
                                    <td>
                                        <div id="t4" class="otherbackcolor">
                                            4. CONFIRM ORDER
                                        </div>
                                    </td>
                                    <td>
                                        <div id="t5" class="otherbackcolor">
                                            5. CHOOSE PAYMENT METHOD
                                        </div>
                                    </td>
                                </tr>
                                <%--<tr>
                        <td colspan="5">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#" onclick="SelectOrUnSelect('t1');">Upload</a>
                        </td>
                        <td>
                            <a href="#" onclick="SelectOrUnSelect('t2');">Services</a>
                        </td>
                        <td>
                            <a href="#" onclick="SelectOrUnSelect('t3');">Summery</a>
                        </td>
                        <td>
                            <a href="#" onclick="SelectOrUnSelect('t4');">Confirm</a>
                        </td>
                        <td>
                            <a href="#" onclick="SelectOrUnSelect('t5');">Payment</a>
                        </td>
                    </tr>--%>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; color: #000000; font-weight: bold; font-size: 24px">
                            My Order History:
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: dotted; border-bottom-width: 1px">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ListView ID="ListView1" runat="server">
                                <ItemTemplate>
                                    <table width="100%" cellpadding="0" cellspacing="0" style="background-color: #00FFCC">
                                        <tr>
                                            <td class="pic">
                                                <img src="" alt="image" style="width: 130px; height: 97px">
                                            </td>
                                            <td style="padding-left: 10px" valign="middle">
                                                &nbsp;
                                            </td>
                                            <td class="indent">
                                                <h3 class="title">
                                                    &nbsp;Bronze Service</h3>
                                                <p class="bullet">
                                                    Color Correction</p>
                                            </td>
                                            <td align="center">
                                                <a href="#" onclick="removefromcart(1813,1429,'del','order')">Remove</a>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:ListView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
