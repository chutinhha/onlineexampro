<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucChangePassword.ascx.cs"
    Inherits="ucChangePassword" %>
<table>
    <tr>
        <td>
            Old Password:
        </td>
        <td>
            <asp:TextBox ID="txtOldPassword" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
        </td>
    </tr>
    <tr>
        <td>
            New Password:
        </td>
        <td>
            <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
        </td>
    </tr>
    <tr>
        <td>
            Confirm Password:
        </td>
        <td>
            <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lbResponse" runat="server" Font-Bold="True" ForeColor="#006600"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnChangePassword" runat="server" Text="Change" 
                onclick="btnChangePassword_Click" />
        </td>
    </tr>
</table>
