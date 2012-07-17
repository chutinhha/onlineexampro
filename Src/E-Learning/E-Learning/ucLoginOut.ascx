<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLoginOut.ascx.cs" Inherits="E_Learning.ucLoginOut" %>
<div align="right" style="background-color: #FFFFFF">
<%if (Session["UserName"]!=null)
  {
      %>
Welcome <%=Session["UserName"].ToString() %> 
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton>
      
      <%
  }
  else
  {
      %>
      
    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Login</asp:LinkButton>
      <%
  } %>
</div>