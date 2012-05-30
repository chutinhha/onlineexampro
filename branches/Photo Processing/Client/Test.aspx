<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/AccordionStyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <cc1:ToolkitScriptManager ID="sdfsd" runat="server">
    </cc1:ToolkitScriptManager>
    <div>
        <cc1:Accordion ID="accService" runat="server" BorderColor="Black" BackColor="#996600"
            HeaderCssClass="header" ContentCssClass="content" Width="300px" EnableTheming="true"
            HeaderSelectedCssClass="OnSelectHeader" BorderStyle="Groove" BorderWidth="5px"
            FramesPerSecond="10">
        </cc1:Accordion>
    </div>
    </form>
</body>
</html>
