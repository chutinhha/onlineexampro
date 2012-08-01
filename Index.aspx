<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide.master" AutoEventWireup="true"
    CodeFile="Index.aspx.cs" Inherits="Index" %>

<%@ Register Src="ucSlideShow.ascx" TagName="ucSlideShow" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="3">
                <uc1:ucSlideShow ID="ucSlideShow1" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        <tr align="center">
            <td style="border: medium ridge #666666">
                <asp:ImageButton ID="ibtnNewArrival" runat="server" ImageUrl="~/IndexBanner/newarrivalbanner1100l.gif"
                    Width="319px" Height="113px" />
            </td>
            <td style="border: medium ridge #666666">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/IndexBanner/sale-logo.jpg"
                    Width="319px" Height="113px" />
            </td>
            <td style="border: medium ridge #666666">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/IndexBanner/553242_10151011522584034_367463615_n.jpg"
                    Width="319px" Height="113px" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
