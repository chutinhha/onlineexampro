<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucLogin.ascx.cs" Inherits="ucLogin" %>
<table width="300px" cellpadding="0" cellspacing="0">
    <tr>
        <td>
            <asp:Label ID="lbEmail" runat="server" Text="Login"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" Width="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <br />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbPassword" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" Width="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td height="25px" colspan="2">
            &nbsp;
            <asp:Label ID="lbResponse" runat="server" Font-Bold="True" Font-Names="Calibri" ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </td>
    </tr>
    <tr>
        <td>
        <br />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="ForgetPassword.aspx">Forget Password ?</a>
        </td>
    </tr>
</table>
