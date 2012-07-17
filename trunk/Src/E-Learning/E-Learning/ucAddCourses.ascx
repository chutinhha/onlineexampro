<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucAddCourses.ascx.cs"
    Inherits="E_Learning.ucAddCourses" %>
<table>
    <tr>
        <td>
            Course Name
        </td>
        <td>
            <asp:TextBox ID="txtCourseName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
            <asp:Label ID="lblAdd" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </td>
    </tr>
</table>
