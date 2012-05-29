﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="E_Learning.AdminHome" %>

<%@ Register Src="ucAdminheadertemplate.ascx" TagName="Adminheadertemplate" TagPrefix="uc1" %>
<%@ Register Src="ucStudentDetails.ascx" TagName="ucStudentDetails" TagPrefix="uc2" %>
<%@ Register src="ucAddCourses.ascx" tagname="ucAddCourses" tagprefix="uc3" %>
<%@ Register src="ucLoginOut.ascx" tagname="ucLoginOut" tagprefix="uc4" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="adminstyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" width="900px">
        <tr>
            <td>
                <uc1:Adminheadertemplate ID="Adminheadertemplate1" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="right">
                
                <uc4:ucLoginOut ID="ucLoginOut1" runat="server" />
                
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <uc2:ucStudentDetails ID="ucStudentDetails1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <uc3:ucAddCourses ID="ucAddCourses1" runat="server" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
