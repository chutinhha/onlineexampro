<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="UpdateProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellpadding="0" cellspacing="0" width="600px">
    <tr>
        <td>
            Profile Image:
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <br />
        </td>
    </tr>
    <tr>
        <td>
            Mobile:
        </td>
        <td>
            <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <br />
        </td>
    </tr>
    <tr>
        <td>
            Date Of Birth:
        </td>
        <td>
            <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <br />
        </td>
    </tr>
    <tr>
        <td>
            Country:
        </td>
        <td>
            <asp:DropDownList ID="ddlCountry" runat="server" Width="145px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <br />
        </td>
    </tr>
    <tr>
        <td>
            Email Preferences:
        </td>
        <td>
            <asp:CheckBox ID="cbEmailPrefer" runat="server" Text="Receive Newsletter and Special Offers" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lbResponse" runat="server" ForeColor="#CC0000" Font-Bold="True"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"
                Style="height: 26px; width: 61px" />
        </td>
    </tr>
</table>
</asp:Content>

