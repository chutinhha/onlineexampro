<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true"
    CodeFile="Reset.aspx.cs" Inherits="Reset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="100%">
        <asp:ScriptManager ID="drfd" runat="server">
        </asp:ScriptManager>
        <tr>
            <td colspan="2">
                Reset PassWord
                <hr />
                <br />
            </td>
        </tr>
        <tr>
            <td width="175px">
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
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                <hr />
            </td>
        </tr>
    </table>
</asp:Content>
