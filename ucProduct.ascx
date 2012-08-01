<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucProduct.ascx.cs" Inherits="ucProduct" %>
<table cellpadding="0" cellspacing="0" width="250px">
    <tr>
        <td align="center">
            <table>
                <tr>
                    <td>
                        <asp:Image ID="imgProduct" runat="server" Width="200px" Height="250px" ImageUrl='<% %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbProduct" runat="server" Text='<% %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbPrice" runat="server" Text='<% %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DataList ID="dlColor" runat="server" RepeatColumns="5" CellPadding="2" CellSpacing="2">
                            <ItemTemplate>
                                <asp:ImageButton ID="imgColor" runat="server" Width="30px" Height="30px" ImageUrl='<% %>' />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
