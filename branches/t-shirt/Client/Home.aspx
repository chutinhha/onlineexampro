<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Src="~/ucSlideShow.ascx" TagName="ucSlideShow" TagPrefix="uc1" %>
<%@ Register Src="~/ucProduct.ascx" TagName="ucProduct" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="3">
                <uc1:ucSlideShow ID="ucSlideShow1" runat="server" />
            </td>
        </tr>
        <asp:UpdatePanel ID="sads" runat="server">
            <ContentTemplate>
                <tr>
                    <td width="60px">
                        Catagory:&nbsp;
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlCatagory" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCatagory_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                    </td>
                </tr>
                <tr id="subproduct" runat="server" visible="false">
                    <td>
                        Items:
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlsubcatagory" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlsubcatagory_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        Color:
                    </td>
                    <td valign="top">
                        <asp:DropDownList ID="ddlBrand" runat="server" Width="150px" AutoPostBack="True"
                            OnSelectedIndexChanged="ddlBrand_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td align="right">
                        <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" CellPadding="5" CellSpacing="5">
                            <ItemTemplate>
                                <uc2:ucProduct ID="ucProduct1" runat="server" />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
            </ContentTemplate>
        </asp:UpdatePanel>
    </table>
</asp:Content>
