<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<%@ Register src="ucVideoSlider.ascx" tagname="ucVideoSlider" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblUserName" runat="server" Text="UserName"></asp:Label><asp:TextBox
            ID="txtUserName" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label><asp:TextBox
            ID="txtPassword" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </div>
    <uc1:ucVideoSlider ID="ucVideoSlider1" runat="server" />
    </form>
</body>
</html>
