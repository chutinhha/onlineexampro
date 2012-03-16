<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucTest.ascx.cs" Inherits="ucTest" %>


<table>
    <tr>
        <td>
            Mail Id</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Mobile Number</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
        </td>
    </tr>
</table>

