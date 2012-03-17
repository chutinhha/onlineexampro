<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMenu.ascx.cs" Inherits="ucMenu" %>
<table cellspacing="10" 
    style="font-family: calibri; font-size: 18px; text-transform: uppercase; font-style: normal; color: #0000FF">
    <tr>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">Home</asp:LinkButton>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton2" runat="server" 
                PostBackUrl="~/NodeCreation.aspx">Node Creation</asp:LinkButton>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton3" runat="server" 
                PostBackUrl="~/QueryProcessing.aspx">Query Processing</asp:LinkButton>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton4" runat="server" 
                PostBackUrl="~/SearchingNeighbours.aspx">Searching Neighbours</asp:LinkButton>
        </td>
         <td>
            <asp:LinkButton ID="LinkButton5" runat="server" 
                 PostBackUrl="~/SearchingServers.aspx">Searching Servers</asp:LinkButton>
        </td>
         <td>
            <asp:LinkButton ID="LinkButton6" runat="server" 
                 PostBackUrl="~/GetBestResults.aspx">Get Best Results</asp:LinkButton>
        </td>
    </tr>
</table>
