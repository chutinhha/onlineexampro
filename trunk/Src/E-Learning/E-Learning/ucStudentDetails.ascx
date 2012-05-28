<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucStudentDetails.ascx.cs"
    Inherits="E_Learning.ucStudentDetails" %>
<table>
    <tr>
        <td>
            Enter the roll number to get the details
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnGetDetails" runat="server" OnClick="Button1_Click" Text="Get Details" />
            <br />
        </td>
    </tr>
    <tr>
        <td>
            Forum Activities
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </td>
        <td>
            Test Results
            <asp:GridView ID="GridView2" runat="server" OnRowDataBound="GridView2_RowDataBound"
                ShowFooter="True">
            </asp:GridView>
        </td>
        <td>
        </td>
    </tr>
</table>
