<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Src="ucSlideShow.ascx" TagName="ucSlideShow" TagPrefix="uc1" %>
<%@ Register Src="ucProduct.ascx" TagName="ucProduct" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Stylesheet/style.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery1.js" type="text/javascript"></script>
    <script src="js/ie6.js" type="text/javascript"></script>
    <script src="js/scripts.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <uc1:ucSlideShow ID="ucSlideShow1" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" CellPadding="5" CellSpacing="5">
                    <ItemTemplate>
                        <uc2:ucProduct ID="ucProduct1" runat="server" />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
