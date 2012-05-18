<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucServiceList.ascx.cs"
    Inherits="ucServiceList" %>
<link href="Style/HomeStyle.css" rel="stylesheet" type="text/css" />
<%--<table cellpadding="0" cellspacing="0" width="326.66px">
    <tr>
        <td>
            <table width="200px" height="150px">
                <tr>
                    <td class="SubHeading">
                        <asp:Label ID="lbHeading" runat="server" Text='<%#Eval("Servicehead_title") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="subHeadingcontent">
                        &nbsp;&nbsp;4 High Speed Tippers(for various product<br />
                        &nbsp;&nbsp;application)
                        <br />
                        &nbsp;&nbsp;Inline folding
                        <br />
                        &nbsp;&nbsp;Inline clip sealing<br />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>--%>
<asp:DataList runat="server" ID="das" DataKeyField="Servicehead_id" 
    OnItemDataBound="das_ItemDataBound" RepeatColumns="3" CssClass="gfhhg" 
    CellPadding="10" CellSpacing="10">
    <ItemTemplate>
        <table>
            <tr>
                <td class="Heading">
                    <%# Eval("Servicehead_title")%>
                    :
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td class="subHeadingcontent">
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
