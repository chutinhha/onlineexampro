<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMenuAdmin.ascx.cs" Inherits="ucMenuAdmin" %>
<style type="text/css">
    .style1
    {
        width: 900px;
    }
</style>

<table class="style1">
    <tr>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server">Add User</asp:LinkButton>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton2" runat="server">Add Client</asp:LinkButton>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton3" runat="server">Report</asp:LinkButton>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton4" runat="server">Sereach Resume</asp:LinkButton>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton5" runat="server">Change Password</asp:LinkButton>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton6" runat="server">Logout</asp:LinkButton>
        </td>
    </tr>
</table>

