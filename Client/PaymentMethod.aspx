<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="PaymentMethod.aspx.cs" Inherits="PaymentMethod" %>

<%@ Register Src="ucSideMenu.ascx" TagName="ucSideMenu" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <cc1:ToolkitScriptManager ID="sdfsd" EnablePageMethods="true" runat="server">
        <Services>
            <asp:ServiceReference Path="~/AssignCart.asmx" />
        </Services>
    </cc1:ToolkitScriptManager>
    Confirm Order:
    <hr />
    <br />
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
                                        <div id="t3" class="otherbackcolor">
                                            3. ORDER SUMMARY
                                        </div>
                                    </td>
                                    <td>
                                        <div id="t4" class="currentbackcolor">
                                            4. CONFIRM ORDER
                                        </div>
                                    </td>
                                    <td>
                                        <div id="t5" class="otherbackcolor">
                                            5. CHOOSE PAYMENT METHOD
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; color: #000000; font-weight: bold; font-size: 24px">
                            Confirm Order:
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <table>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton1" runat="server" Text="PayPal" />
                                    </td>
                                    <td>
                                        <img alt="Paypal" src="Images/paypal2.png" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
    <hr />
    <br />
    <br />
    <br />
</asp:Content>
