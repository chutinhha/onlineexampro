<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="My Profile.aspx.cs" Inherits="My_Profile" %>

<%@ Register Src="~/ucProfileDetail.ascx" TagName="ucProfileDetail1" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                <uc1:ucProfileDetail1 ID="ucProfileDetail" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
