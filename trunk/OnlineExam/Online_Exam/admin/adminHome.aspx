<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true"
    CodeFile="adminHome.aspx.cs" Inherits="admin_adminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="style1" align="center">
        <tr>
            <td style="font-family: Calibri">
                Time
            </td>
            <td style="font-family: Calibri">
                <asp:DropDownList ID="ddlHours" runat="server">
                </asp:DropDownList>
                hours<asp:DropDownList ID="ddlMinitues" runat="server">
                </asp:DropDownList>
                mins<asp:DropDownList ID="ddlSecs" runat="server">
                </asp:DropDownList>
                seconds
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="font-family: Calibri; color: #CC0000">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="font-family: Calibri">
                Category
            </td>
            <td style="font-family: Calibri">

                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td style="font-family: Calibri">
                <asp:Button ID="btnAssign" runat="server" OnClick="btnAssign_Click" Text="Assign" />
            </td>
        </tr>
    </table>
</asp:Content>
