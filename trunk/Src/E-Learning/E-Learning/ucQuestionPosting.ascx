<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucQuestionPosting.ascx.cs"
    Inherits="E_Learning.ucQuestionPosting" %>
<table>
    <tr>
        <td>
            Enter the title to begin the process
        </td>
        <td>
            <asp:DropDownList ID="ddlQuestionTitle" runat="server">
            </asp:DropDownList>
        </td>
        <td>
            Enter the title to add
        </td>
        <td>
            <asp:TextBox ID="txtQuestionTitleAdd" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnQuestionTitleAdd" runat="server" Text="Add" />
        </td>
    </tr>
    <tr>
        <td>
            Enter the question number
        </td>
        <td>
            <asp:TextBox ID="txtQuestionNo" runat="server"></asp:TextBox>
        </td>
        <td>
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
            Enter the question
        </td>
        <td>
            <asp:TextBox ID="txtQuestion" runat="server" Height="60px" TextMode="MultiLine" Width="384px"></asp:TextBox>
        </td>
        <td>
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
            Enter the option
        </td>
        <td>
            <asp:TextBox ID="txtAddOption" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnAddOption" runat="server" Text="Button" />
        </td>
        <td>
        </td>
    </tr>
</table>
