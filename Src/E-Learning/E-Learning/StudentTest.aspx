<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentTest.aspx.cs" Inherits="E_Learning.StudentTest" %>

<%@ Register src="ucstudentheader.ascx" tagname="ucstudentheader" tagprefix="uc1" %>

<%@ Register src="ucTest.ascx" tagname="ucTest" tagprefix="uc2" %>

<%@ Register src="ucView.ascx" tagname="ucView" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="adminstyle.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <table align="center" width="900">
   <tr>
   <td>
       
       <uc1:ucstudentheader ID="ucstudentheader1" runat="server" />
       
   </td>
   </tr>
   <tr>
   <td>
   
       
   
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
       <uc3:ucView ID="ucView1" runat="server" />
       <br />
   
       
   
   </td>
   </tr>
   </table> 
    </div>
    </form>
</body>
</html>
