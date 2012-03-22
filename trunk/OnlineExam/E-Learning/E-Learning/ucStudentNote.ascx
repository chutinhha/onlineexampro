<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucStudentNote.ascx.cs"
    Inherits="E_Learning.ucStudentNote" %>
<div>
    <asp:DataList ID="dlNotes" runat="server" onitemcommand="dlNotes_ItemCommand">
        <ItemTemplate>
            <table>
                <tr>
                    <td>
                    <%# Eval("SubjectName") %>
                    </td>
                </tr>
                <tr>
                    <td>
                    <%# Eval("TitleName") %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton1" CommandName="View" CommandArgument='<%# Eval("FilePath") %>' runat="server">View</asp:LinkButton> 
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</div>
<object type ="video/x-ms-wmv">
<param name="src" value="http://localhost/Wildlife.wmv" />
</object> 