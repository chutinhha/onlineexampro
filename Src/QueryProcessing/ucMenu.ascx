<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMenu.ascx.cs" Inherits="ucMenu" %>
<table cellspacing="10" 
    style="font-family: calibri; font-size: 18px; text-transform: uppercase; font-style: normal; color: #0000FF">
    <tr>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">Home</asp:LinkButton>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton2" runat="server">Node Creation</asp:LinkButton>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton3" runat="server">Query Processing</asp:LinkButton>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton4" runat="server">Searching Neighbours</asp:LinkButton>
        </td>
         <td>
            <asp:LinkButton ID="LinkButton5" runat="server">Searching Servers</asp:LinkButton>
        </td>
         <td>
            <asp:LinkButton ID="LinkButton6" runat="server">Get Best Results</asp:LinkButton>
        </td>
    </tr>
</table>
