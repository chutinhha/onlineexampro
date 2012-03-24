<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucTest.ascx.cs" Inherits="E_Learning.ucTest" %>
<style type="text/css">
    .style1
    {
        text-align: left;
    }
</style>
<table align="center">
    <tr>
        <td align="center">
            Enter the title to continue
        </td>
        <td class="style1">
            <asp:DropDownList ID="ddlTestTitle" runat="server">
            </asp:DropDownList>
        </td>
        <td align="center">
            <asp:Button ID="btnTestTitleSubmit" runat="server" Text="Submit" />
        </td>
    </tr>
    <tr>
        <td align="center">
            Question
        </td>
        <td class="style1">
            <asp:TextBox ID="txtQuestionStu" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td align="center">
            Options
        </td>
        <td class="style1">
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td align="center">
            a
        </td>
        <td class="style1">
            <asp:CheckBox ID="chkOptionA" runat="server" />
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td align="center">
            b
        </td>
        <td class="style1">
            <asp:CheckBox ID="chkOptionB" runat="server" />
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td align="center">
            c
        </td>
        <td class="style1">
            <asp:CheckBox ID="chkOptionC" runat="server" />
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td align="center">
            d
        </td>
        <td class="style1">
            <asp:CheckBox ID="chkOptionD" runat="server" />
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td class="style1">
            <asp:Button ID="btnTestSubmit" runat="server" Text="Submit" />
        </td>
        <td>
        </td>
    </tr>
</table>
