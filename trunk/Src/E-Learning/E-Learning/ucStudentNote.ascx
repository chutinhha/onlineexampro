<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucStudentNote.ascx.cs"
    Inherits="E_Learning.ucStudentNote" %>
<%@ Register src="ucStudentDetails.ascx" tagname="ucStudentDetails" tagprefix="uc1" %>
<table>
    <tr>
        <td>
            Enter the Subject Name :
        </td>
        <td>
            <asp:DropDownList ID="ddlNotesSubject" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlNotesSubject_SelectedIndexChanged">
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
            <asp:Button ID="BtnView" runat="server" Text="View" OnClick="BtnView_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>


