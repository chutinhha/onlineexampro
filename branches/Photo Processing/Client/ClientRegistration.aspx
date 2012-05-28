<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="ClientRegistration.aspx.cs" Inherits="ClientRegistration" %>

<%@ Register Src="~/ucRegistration.ascx" TagName="ucRegistration" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                <uc1:ucRegistration ID="registration" runat="server" />
            </td>
        </tr>
    </table>

</asp:Content>
