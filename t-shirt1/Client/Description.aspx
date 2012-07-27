<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide.master" AutoEventWireup="true"
    CodeFile="Description.aspx.cs" Inherits="Discription" %>

<%@ Register Src="ucDescription.ascx" TagName="ucDescription" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <uc1:ucDescription ID="ucDescription1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
