<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginAdmin.aspx.cs" Inherits="admin_loginAdmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #99CCFF">
    <form id="form1" runat="server">
    <div>
        <table cellpadding="0" cellspacing="0" width="900px" align="center" style="border: medium dotted #008080;
            background-color: #FFFFFF;">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/admin/images/logo_for_test.png" />
                </td>
            </tr>
            <tr>
                <td style="color: #009999; font-size: 24px; font-weight: bold" align="center">
                    Online Test
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <table width="300px">
                        <tr>
                            <td colspan="2">
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-family: Calibri">
                                UserName :
                            </td>
                            <td>
                                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-family: Calibri">
                                Password &nbsp;&nbsp;:
                            </td>
                            <td>
                                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" height="25px" style="font-family: calibri; color: #CC0000;" align="center">
                                <asp:Label ID="lbLogin" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center" style="font-family: Calibri">
                                <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="250px">
                    <br />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
