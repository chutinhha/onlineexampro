<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="top: 180px; left: 369px; position: absolute; -moz-box-shadow: 10px 10px 5px #888;
            -webkit-box-shadow: 10px 10px 5px #888; box-shadow: 10px 10px 5px #888;">
            <tr>
                <td align="right">
                    User Name:
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Password:
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Mail Id:
                </td>
                <td>
                    <asp:TextBox ID="txtMailId" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Mobile Number:
                </td>
                <td>
                    <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                </td>
            </tr>
        </table>
        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
        <asp:Button ID="btnFind" runat="server" OnClick="btnFind_Click" Text="Find" />
    </div>
    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Style="top: 356px;
        left: 461px; position: absolute; height: 26px; width: 56px" Text="Update" />
    <asp:Button ID="btnDelete" runat="server" Style="top: 355px; left: 534px; position: absolute;"
        Text="Delete" OnClick="btnDelete_Click" />
    </form>
</body>
</html>
