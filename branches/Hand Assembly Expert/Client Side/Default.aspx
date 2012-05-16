<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #aaa
        {
            height: 868px;
            width: 1052px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:TextBox ID="txturl" runat="server">http://</asp:TextBox>
    <asp:Button ID="btn" runat="server" Text="search" OnClick="btn_Click" />
    <iframe height="180" frameborder="0" src="<%# Url %>"
        style="width: 648px"></iframe>
    </form>
</body>
</html>
