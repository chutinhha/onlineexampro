<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="E_Learning.test" %>

<%@ Register Src="ucfilesview.ascx" TagName="ucfilesview" TagPrefix="uc1" %>
<%@ Register src="ucstudentheader.ascx" tagname="ucstudentheader" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
    <table>
    <tr>
    <td>
        <uc2:ucstudentheader ID="ucstudentheader1" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <uc1:ucfilesview ID="ucfilesview1" runat="server" />
    </td>
    </tr>
        </table>
        </form>
</body>
</html>
