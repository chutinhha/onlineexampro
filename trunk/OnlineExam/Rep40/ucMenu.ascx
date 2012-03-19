<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMenu.ascx.cs" Inherits="ucMenu" %>
<table cellspacing="10" style="font-family: calibri; font-size: 18px; text-transform: uppercase;
    font-style: normal; color: #0000FF" width="100%">
    <tr>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Personolized.aspx">Personolized Search</asp:LinkButton>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/GlobalSearch.aspx">Global Search</asp:LinkButton>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/AdminLogin.aspx">Admin</asp:LinkButton>
        </td>
    </tr>
</table>
