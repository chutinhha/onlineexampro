<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucTopMenu.ascx.cs" Inherits="ucTopMenu" %>
<div align="right">
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login.aspx">Login</asp:LinkButton>
    &nbsp;/&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Registration.aspx">Register</asp:LinkButton>
</div>
