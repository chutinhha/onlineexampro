<%@ Page Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostback="true"
    CodeBehind="Forums.aspx.cs" Inherits="E_Learning.Forums" %>

<%@ Register Src="ucAdminheadertemplate.ascx" TagName="Adminheadertemplate" TagPrefix="uc1" %>
<%@ Register Src="ucForums.ascx" TagName="ucForums" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="adminstyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table width="900px" align="center">
        <tr>
            <td>
                <uc1:Adminheadertemplate ID="Adminheadertemplate1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <uc2:ucForums ID="ucForums1" runat="server" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
