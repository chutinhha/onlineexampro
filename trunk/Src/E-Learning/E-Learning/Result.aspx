<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="E_Learning.Result" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <%--<link rel=Stylesheet type="text/css" href=mm.css>--%>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="0" cellspacing="0" width="900px" align="center">
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td style="font-family: calibri">
                your test results are:
            </td>
        </tr>
        <tr>
            <td>
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            </td>
        </tr>
    </table>
    </form>
    <div id="i">

    </div>
</body>
</html>
