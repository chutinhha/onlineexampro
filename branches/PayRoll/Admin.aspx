<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true"
    CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Styles/Admin.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="dfsdf" runat="server">
    </asp:ScriptManager>
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td style="background-color: #3D6A26">
                <table cellpadding="0" cellspacing="0" 
                    style="font-family: Calibri; color: #FFFFFF">
                    <tr>
                        <td style="padding-left: 20px">
                            <asp:LinkButton ID="lnkPersonal" CssClass="menu" PostBackUrl="Personal.aspx" runat="server">Employee Detail</asp:LinkButton>
                        </td>
                        <td style="padding-left: 20px">
                            <asp:LinkButton ID="lnkAdvance" CssClass="menu" runat="server" PostBackUrl="Advance.aspx">Advance</asp:LinkButton>
                        </td>
                        <td style="padding-left: 20px">
                            <asp:LinkButton ID="lnkPayment" CssClass="menu" runat="server" PostBackUrl="~/Payment.aspx">Payment</asp:LinkButton>
                        </td>
                        <td style="padding-left: 20px">
                            <asp:LinkButton ID="lnkChangePwd" CssClass="menu" runat="server" PostBackUrl="~/ChangePassword.aspx">Change Password</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
