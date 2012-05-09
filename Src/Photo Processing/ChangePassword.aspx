<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="2">
                <br />
            </td>
        </tr>
        <tr>
            <td>
                New Password:
            </td>
            <td>
                <asp:TextBox ID="txtNewpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Confirm Password:
            </td>
            <td>
                <asp:TextBox ID="txtConfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" height="25px">
                <asp:Label ID="lbResponse" runat="server" Font-Bold="True" ForeColor="#006600"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnReset" runat="server" Text="Reset" 
                    onclick="btnReset_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
