<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucStudentAssignment.ascx.cs" Inherits="E_Learning.ucStudentAssignment" %>

<table >
    <tr>
        <td>
            Select File</td>
        <td>
            <asp:FileUpload ID="flpFile" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            Staff</td>
        <td>
            <asp:DropDownList ID="ddlStaff" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            Topic</td>
        <td>
            <asp:TextBox ID="txtTopic" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Assignment Number</td>
        <td>
            <asp:TextBox ID="txtAssignNum" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                onclick="btnSubmit_Click" />
        </td>
    </tr>
</table>

