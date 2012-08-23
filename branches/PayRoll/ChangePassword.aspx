<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true"
    CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="asda" runat="server">
    </asp:ScriptManager>
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="2">
                <asp:LinkButton ID="lnkhome" runat="server" onclick="lnkhome_Click"></asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Enter Old Password:
            </td>
            <td>
                <asp:TextBox ID="txtOldPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="padding-top: 10px">
            </td>
        </tr>
        <tr>
            <td>
                Enter New Password:
            </td>
            <td>
                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="padding-top: 10px">
            </td>
        </tr>
        <tr>
            <td>
                Conform Password:
            </td>
            <td>
                <asp:TextBox ID="txtConformPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" height="25px">
                <asp:Label ID="lbResponse" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="txtReset" runat="server" Text="Reset" OnClick="txtReset_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
