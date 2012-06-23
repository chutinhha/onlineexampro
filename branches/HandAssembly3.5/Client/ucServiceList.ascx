<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucServiceList.ascx.cs"
    Inherits="ucServiceList" %>
<table cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td>
            <asp:DataList runat="server" ID="das" DataKeyField="Servicehead_id" OnItemDataBound="das_ItemDataBound"
                RepeatColumns="3" CssClass="gfhhg" CellPadding="10" CellSpacing="10">
                <ItemTemplate>
                    <table cellpadding="0" cellspacing="0" width="300px">
                        <tr>
                            <td style="font-family: Calibri; font-size: 17px; font-weight: bold; color: #000000">
                                <%# Eval("Servicehead_title")%>
                                :
                            </td>
                        </tr>
                        <tr>
                            <td height="100px" valign="top">
                                <asp:DataList ID="DataList1" runat="server">
                                    <ItemTemplate>
                                        <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td style="font-family: calibri; font-size: 14px">
                                                    <%# Eval("ServiceSubTitle_Content")%>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
</table>
