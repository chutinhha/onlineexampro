<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true"
    CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="dg" runat="server">
    </asp:ScriptManager>
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="2">
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                Forget Password
            </td>
        </tr>
        <tr>
            <td style="padding-top: 10px">
            </td>
        </tr>
        <tr>
            <td>
                Email Address:
            </td>
            <td>
                <asp:TextBox ID="txtEmailadd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="padding-top: 10px">
                <asp:Label ID="lbResponse" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
