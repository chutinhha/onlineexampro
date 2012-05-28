<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register Src="~/ucLogin.ascx" TagName="ucLogin" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                <uc1:ucLogin ID="uclogin" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
