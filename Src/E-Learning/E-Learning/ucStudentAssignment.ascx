<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucStudentAssignment.ascx.cs" Inherits="E_Learning.ucStudentAssignment" %>

<table >
    <tr>
        <td>
            Select File</td>
        <td>
            <asp:FileUpload ID="flpFile" runat="server" />
            <asp:RequiredFieldValidator ID="reqflpFile" ControlToValidate="flpFile" runat="server" ErrorMessage="Select any files to continue" ValidationGroup="valBtnAssign"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Staff</td>
        <td>
            <asp:DropDownList ID="ddlStaff" runat="server">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="reqddlSelectStaff" ControlToValidate="ddlStaff" runat="server" ErrorMessage="Select any one staff on the list to continue" ValidationGroup="valBtnAssign"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Topic</td>
        <td>
            <asp:TextBox ID="txtTopic" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqtxtTopic" ControlToValidate="txtTopic" runat="server" ErrorMessage="Enter the topic to continue" ValidationGroup="valBtnAssign"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Assignment Number</td>
        <td>
            <asp:TextBox ID="txtAssignNum" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqtxtAssignNo" ControlToValidate="txtAssignNum" runat="server" ErrorMessage="Enter the assignment number to continue" ValidationGroup="valBtnAssign"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                onclick="btnSubmit_Click" ValidationGroup="valBtnAssign" />

        </td>
    </tr>
</table>

