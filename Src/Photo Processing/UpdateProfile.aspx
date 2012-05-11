<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="UpdateProfile" %>
<%@ Register Src="~/ucUpdateProfile.ascx" TagName="ucUpdateProfile" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellpadding="0" cellspacing="0" width="600px">
    <tr>
        <td>
           <uc1:ucUpdateProfile ID="ucUpdateProfile" runat="server" />
        </td>
    </tr>
</table>
</asp:Content>

