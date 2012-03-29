<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentNotes.aspx.cs" Inherits="E_Learning.StudentNotes" %>

<%@ Register Src="ucStudentNote.ascx" TagName="ucStudentNote" TagPrefix="uc1" %>
<%@ Register Src="ucstudentheader.ascx" TagName="ucstudentheader" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="adminstyle.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" width="900">
        <tr>
            <td>
                <uc2:ucstudentheader ID="ucstudentheader1" runat="server" />
            </td>
        </tr>
        <tr>
        <td>
        
            <uc1:ucStudentNote ID="ucStudentNote1" runat="server" />
        
        </td>
        </tr>
    </table>
    </form>
</body>
</html>
