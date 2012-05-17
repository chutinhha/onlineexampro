<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucServiceList.ascx.cs"
    Inherits="ucServiceList" %>
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
<asp:DataList runat="server" ID="das" DataKeyField="Servicehead_id" DataMember="Servicehead_id"
    OnItemDataBound="das_ItemDataBound">
    <ItemTemplate>
        <table>
            <tr>
                <td align="left" style="font-weight: bold">
                    <%# Eval("Servicehead_title")%>
                    :
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <%# Eval("ServiceSubTitle_Content")%>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
