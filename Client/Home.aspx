<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td>
                Home
                <hr />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnProfile" runat="server" Text="Profile" OnClick="btnProfile_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnChangePwd" runat="server" Text="Change Password" OnClick="btnChangePwd_Click" />
                <hr />
            </td>
        </tr>
    </table>
</asp:Content>
