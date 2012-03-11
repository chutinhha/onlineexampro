<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="adminHome.aspx.cs" Inherits="admin_adminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            Time</td>
        <td>
            <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
            mins</td>
    </tr>
    <tr>
        <td>
            Category</td>
        <td>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnAssign" runat="server" onclick="btnAssign_Click" 
                Text="Assign" />
        </td>
    </tr>
</table>
</asp:Content>

