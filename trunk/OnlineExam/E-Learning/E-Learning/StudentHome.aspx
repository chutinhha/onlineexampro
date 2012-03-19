<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="E_Learning.StudentHome" %>

<%@ Register src="ucstudentheader.ascx" tagname="ucstudentheader" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="adminstyle.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table align="center">
        <tr>
            <td align="center" width="900">
                <uc1:ucstudentheader ID="ucstudentheader1" runat="server" />
            </td>
        </tr>
        <tr>
            <td width="900">
                 Welcome <%=Session["UserName"]%></td>
        </tr>
    </table>
    </form>
</body>
</html>
