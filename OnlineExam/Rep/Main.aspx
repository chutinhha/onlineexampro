<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<%@ Register Src="ucMenuAdmin.ascx" TagName="ucMenuAdmin" TagPrefix="uc1" %>
<%@ Register Src="ucMenuManager.ascx" TagName="ucMenuManager" TagPrefix="uc2" %>
<%@ Register Src="ucMenuUser.ascx" TagName="ucMenuUser" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%if (UserType == "admin")
          { %>
        <uc1:ucMenuAdmin ID="ucMenuAdmin1" runat="server" />
        <%} %>


        <%if (UserType == "manager")
          { %>
        <uc2:ucMenuManager ID="ucMenuManager1" runat="server" />
        <%} %>


        <%if (UserType == "user")
          { %>
        <uc3:ucMenuUser ID="ucMenuUser1" runat="server" />
        <%} %>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
