<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<%@ Register src="ucChangePassword.ascx" tagname="ucChangePassword" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                <uc1:ucChangePassword ID="ucChangePassword1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
