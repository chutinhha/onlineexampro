<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAssignTime.aspx.cs" Inherits="E_Learning.AdminAssignTime" %>

<%@ Register src="ucAdminheadertemplate.ascx" tagname="ucAdminheadertemplate" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="adminstyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table align="center">
    <tr>
    <td>
    
        <uc1:ucAdminheadertemplate ID="ucAdminheadertemplate1" runat="server" />
    
    </td>
    </tr>

    </table>
    <table align="center">
    <tr>
        <td style="font-family: Calibri">
            Time
        </td>
        <td style="font-family: Calibri">
            <asp:DropDownList ID="ddlHours" runat="server">
            </asp:DropDownList>
            hours<asp:DropDownList ID="ddlMinitues" runat="server">
            </asp:DropDownList>
            mins<asp:DropDownList ID="ddlSecs" runat="server">
            </asp:DropDownList>
            seconds
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
        <td style="font-family: Calibri; color: #CC0000">
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="font-family: Calibri">
            Category
        </td>
        <td style="font-family: Calibri">
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbValidation" runat="server" ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
        <td style="font-family: Calibri">
            <asp:Button ID="btnAssign" runat="server" OnClick="btnAssign_Click" Text="Assign" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
</table>

    </form>
</body>
</html>
