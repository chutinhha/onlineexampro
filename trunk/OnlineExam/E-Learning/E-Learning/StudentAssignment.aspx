<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentAssignment.aspx.cs" Inherits="E_Learning.WebForm1" %>

<%@ Register src="ucStudentAssignment.ascx" tagname="ucStudentAssignment" tagprefix="uc1" %>

<%@ Register src="ucstudentheader.ascx" tagname="ucstudentheader" tagprefix="uc2" %>

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
        <td align="center" class="style1" height="250" width="900">
          
            <uc2:ucstudentheader ID="ucstudentheader1" runat="server" />
          
        </td>
        </tr>
        <tr>
        <td align="center" width="900">
        <uc1:ucStudentAssignment ID="ucStudentAssignment1" runat="server" />
        </td>
        </tr>
    </table>
    </form>
</body>
</html>
