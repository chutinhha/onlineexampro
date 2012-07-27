<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Src="~/ucSlideShow.ascx" TagName="ucSlideShow" TagPrefix="uc1" %>
<%@ Register Src="~/ucProduct.ascx" TagName="ucProduct" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="sads" runat="server">
        <ContentTemplate>
            <table cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td valign="top" style="padding-left: 10px">
                                    <table cellpadding="0" cellspacing="0" style="font-family: calibri; font-size: 14px">
                                        <tr>
                                            <td>
                                                <table style="border: medium ridge #808080" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td>
                                                            <asp:ListView ID="ListView1" DataKeyNames="Category_id" runat="server" OnItemCommand="ListView1_ItemCommand">
                                                                <ItemTemplate>
                                                                    <table>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:Image ID="imgBullent" runat="server" ImageUrl="~/images/Bullets copy.png" />
                                                                            </td>
                                                                            <td>
                                                                                <asp:LinkButton CommandName="Main" ID="LinkButton1" Text='<%# Eval("Categories")%>'
                                                                                    runat="server">LinkButton</asp:LinkButton>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                &nbsp;
                                                                            </td>
                                                                            <td>
                                                                                <asp:ListView OnItemCommand="ListView2_ItemCommand" DataKeyNames="ProductSub_id"
                                                                                    ID="ListView2" runat="server">
                                                                                    <ItemTemplate>
                                                                                        <table>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:Image ID="imgBullent" runat="server" ImageUrl="~/images/black_arrow_bullet.gif" />
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:LinkButton CommandName="Sub" ID="LinkButton2" Text='<%# Eval("Productsub_name")%>'
                                                                                                        runat="server">LinkButton</asp:LinkButton>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </ItemTemplate>
                                                                                </asp:ListView>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </ItemTemplate>
                                                            </asp:ListView>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table style="font-family: calibri; font-size: 14px">
                                                                <tr>
                                                                    <td width="60px" align="left">
                                                                        Catagory:&nbsp;
                                                                    </td>
                                                                    <td colspan="2">
                                                                        <asp:DropDownList ID="ddlCatagory" runat="server" Width="100px" AutoPostBack="true"
                                                                            OnSelectedIndexChanged="ddlCatagory_SelectedIndexChanged">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <tr id="subproduct" runat="server" visible="false">
                                                                    <td width="60px" align="left">
                                                                        Items:&nbsp;
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:DropDownList ID="ddlsubcatagory" runat="server" Width="100px" AutoPostBack="true"
                                                                            OnSelectedIndexChanged="ddlsubcatagory_SelectedIndexChanged">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="top" width="60px" align="left">
                                                                        Color:&nbsp;
                                                                    </td>
                                                                    <td valign="top">
                                                                        <asp:DropDownList ID="ddlBrand" runat="server" Width="100px" AutoPostBack="True"
                                                                            OnSelectedIndexChanged="ddlBrand_SelectedIndexChanged">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="top" width="60px" align="left">
                                                                        size:&nbsp;
                                                                    </td>
                                                                    <td valign="top">
                                                                        <asp:DropDownList ID="ddlSize" runat="server" Width="100px" AutoPostBack="True" OnSelectedIndexChanged="ddlSize_SelectedIndexChanged">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <table cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" CellPadding="5" CellSpacing="5">
                                                    <ItemTemplate>
                                                        <uc2:ucProduct ID="ucProduct1" runat="server" />
                                                    </ItemTemplate>
                                                </asp:DataList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
