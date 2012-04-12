<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucTopMenu.ascx.cs" Inherits="ucTopMenu" %>
<%if (Session["UserName"] == null)
  {
%>
<div align="right">
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login.aspx">Login</asp:LinkButton>
    &nbsp;/&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Registration.aspx">Register</asp:LinkButton>
</div>
<%
  } %>
<%if (Session["UserName"] != null)
  {
%>
<div align="right">
    Welcome&nbsp;
    <%=Session["UserName"].ToString()%>
    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Logout</asp:LinkButton>
</div>
<%
  } %>
  <%if (Session["AdminUserName"] != null)
  {
%>
<div align="right">
    Welcome&nbsp;
    <%=Session["AdminUserName"].ToString()%>
    &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Logout</asp:LinkButton>
</div>
<%
  } %>