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
                        <table>
                            <tr>
                                <td valign="top">
                                    <table style="font-family: calibri; font-size: 14px" >
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
                                <td>
                                    <table>
                                        <tr>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
