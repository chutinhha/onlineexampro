<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentForum.aspx.cs" Inherits="E_Learning.StudentForum" %>

<%@ Register src="ucstudentheader.ascx" tagname="ucstudentheader" tagprefix="uc1" %>
<%@ Register src="ucForums.ascx" tagname="ucForums" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="adminstyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td>
                <uc1:ucstudentheader ID="ucstudentheader1" runat="server" />
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
