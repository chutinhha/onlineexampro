<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide.master" AutoEventWireup="true"
    CodeFile="Description.aspx.cs" Inherits="Discription" %>

<%@ Register src="ucDescription.ascx" tagname="ucDescription" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <uc1:ucDescription ID="ucDescription1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
