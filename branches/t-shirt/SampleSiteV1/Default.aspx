<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                Server Name;
            </td>
            <td>
                <asp:DropDownList ID="ddlServer" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Authentication:
            </td>
            <td>
                <asp:RadioButtonList AutoPostBack="true" ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Text="Windows" Value="0" />
                    <asp:ListItem Text="Sql Server" Value="1" />
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                Userid
                            </td>
                            <td>
                                <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Password
                            </td>
                            <td>
                                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnLoadDB" runat="server" Text="Load DB" OnClick="btnLoadDB_Click" />
            </td>
        </tr>
        <tr>
            <td>
                Database:
            </td>
            <td>
                <asp:DropDownList ID="ddlDB" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlDB_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="5">
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
