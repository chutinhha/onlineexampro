<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                <asp:Button ID="btnProfile" runat="server" Text="Profile" OnClick="btnProfile_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnChangePwd" runat="server" Text="Change Password" 
                    onclick="btnChangePwd_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
