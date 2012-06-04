<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="400px">
        <tr>
            <td colspan="2">
                <hr />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Email Address:
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" height="25px">
                <asp:Label ID="lbResponse" runat="server" Font-Bold="True" Font-Names="Calibri" ForeColor="#006600"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnforget" runat="server" Text="Submit" OnClick="btnforget_Click" />
                <hr />
            </td>
        </tr>
    </table>
</asp:Content>
