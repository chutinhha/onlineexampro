<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssignmentsPage.aspx.cs" Inherits="E_Learning.AssignmentsPage" %>

<%@ Register src="ucAssignmentsStaff.ascx" tagname="ucAssignmentsStaff" tagprefix="uc1" %>

<%@ Register src="ucAdminheadertemplate.ascx" tagname="ucAdminheadertemplate" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="adminstyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" width="900px">
            <tr>
                <td align="center" width="900px">
                    <uc2:ucAdminheadertemplate ID="ucAdminheadertemplate1" runat="server" />
                </td>
            </tr>
            <tr>
                <td align="center" width="900px">
                    <uc1:ucAssignmentsStaff ID="ucAssignmentsStaff1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
