<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucLogin.ascx.cs" Inherits="ucLogin" %>
<script src="js/jquery-1.7.2.js"></script>
<link href="Style/LoginModelPopStyleSheet.css" rel="stylesheet" type="text/css" />
<table cellpadding="0" cellspacing="0">
    <tr>
        <td>
            <asp:Label ID="lbEmail" runat="server" Text="Login"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" Width="150px" ValidationGroup="login"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Enter Email Id" SetFocusOnError="True" ValidationGroup="login"
                CssClass="validdation"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Enter Mail Id in correct format" SetFocusOnError="True" ValidationGroup="login"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="validdation"></asp:RegularExpressionValidator>
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
            <asp:TextBox ID="txtPassword" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Enter Password" SetFocusOnError="True" ValidationGroup="login"
                CssClass="validdation"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:CheckBox ID="cbRememberMe" runat="server" Text="Remember Me" />
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
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" ValidationGroup="login" />
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
