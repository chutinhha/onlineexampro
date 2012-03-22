<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #99CCFF">
    <form id="form1" runat="server">
    <cc1:ToolkitScriptManager runat="server" ID="sdfd">
    </cc1:ToolkitScriptManager>
    <div>
        <table cellpadding="0" cellspacing="0" width="900px" align="center" style="border: medium dotted #008080;
            background-color: #FFFFFF;">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo_for_test.png" Width="350px"
                        Height="135px" />
                </td>
            </tr>
            <tr>
                <td style="font-family: Calibri; font-size: 18px; font-weight: bold; color: #009999">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Registeration form:" Font-Underline="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <cc1:FilteredTextBoxExtender ID="asdsa" runat="server" TargetControlID="txtname"
                FilterMode="ValidChars" FilterType="LowercaseLetters,UppercaseLetters">
            </cc1:FilteredTextBoxExtender>
            <tr>
                <td align="center">
                    <table width="300px" align="center" style="border: thin groove #008080">
                        <tr>
                            <td align="left" style="font-family: calibri">
                                Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                                    ControlToValidate="txtname" ForeColor="#CC0000" ValidationGroup="a"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                :&nbsp;&nbsp;&nbsp;
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
                            <td align="left" style="font-family: calibri">
                                Mobile<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmobile"
                                    ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="a"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;
                                :&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="txtmobile" MaxLength="10" runat="server"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="adfas" runat="server" TargetControlID="txtmobile"
                                    FilterMode="ValidChars" FilterType="Numbers">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-family: calibri">
                                E-mail<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                                    ControlToValidate="txtemail" ForeColor="#CC0000" ValidationGroup="a"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;&nbsp;
                                :&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center" height="25px" style="font-family: calibri">
                                <asp:Label ID="lbregister" runat="server" Font-Names="Calibri" ForeColor="#CC0000"></asp:Label><asp:RegularExpressionValidator
                                    ID="RegularExpressionValidator1" runat="server" ErrorMessage="enter valid id"
                                    ControlToValidate="txtemail" ValidationGroup="a" Font-Names="Calibri" ForeColor="#CC0000"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="btnsubmit" runat="server" Text="register" OnClick="btnsubmit_Click"
                                    ValidationGroup="a" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
