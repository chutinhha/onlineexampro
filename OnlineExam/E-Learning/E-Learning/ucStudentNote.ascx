<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucStudentNote.ascx.cs" Inherits="E_Learning.ucStudentNote" %>
 <table>
    <tr>
    <td>
    Enter the Subject Name :
    </td>
    <td>
        <asp:DropDownList ID="ddlNotesSubject" runat="server" AutoPostBack="True"
            onselectedindexchanged="ddlNotesSubject_SelectedIndexChanged">
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td>
    Enter the Title :
    </td>
    <td>
        <asp:DropDownList ID="ddlNotesTitle" runat="server">
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Button ID="BtnView" runat="server" Text="Button" onclick="BtnView_Click" />
    </td>
    <td>
        <asp:Label ID="lblLink" runat="server" AutoPostBack="True" Text="Label"></asp:Label>
    </td>
    </tr>
    </table>
    