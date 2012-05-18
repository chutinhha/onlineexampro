<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SMSDefault.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 500px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="lblErrormsg" runat="server" Text="Label" Font-Italic="True" 
        ForeColor="Red"></asp:Label>
    <div id="pnlsend" runat="server">
        <table class="style1">
            <tr>
                <td>
                    Receiver&#39;s Mobile Number:
                </td>
                <td>
                    <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMobileNumber"
                        ErrorMessage="Mobile Number Required." ValidationGroup="val"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    <asp:RegularExpressionValidator runat="server" ID="R1" ControlToValidate="txtMobileNumber"
                        ValidationExpression="^\d{10}$" ErrorMessage="Please enter 10 Digit Mobile Number."
                        ValidationGroup="val" SetFocusOnError="True" />
                </td>
            </tr>
            <tr>
                <td>
                    Message:
                </td>
                <td>
                    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMessage"
                        ErrorMessage="Message Required." ValidationGroup="val"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    <asp:Button ID="btnSendMessage" runat="server" Text="Send" ValidationGroup="val"
                        OnClick="btnSendMessage_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
