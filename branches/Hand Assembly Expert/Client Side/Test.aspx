<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<%@ Register Src="ucImgaeSlider.ascx" TagName="ucImgaeSlider" TagPrefix="uc1" %>
<%@ Register Src="ucServiceList.ascx" TagName="ucServiceList" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%-- <uc1:ucImgaeSlider ID="ucImgaeSlider1" runat="server" />--%>
        <uc2:ucServiceList ID="ucServiceList1" runat="server" />
    </div>
    </form>
</body>
</html>
